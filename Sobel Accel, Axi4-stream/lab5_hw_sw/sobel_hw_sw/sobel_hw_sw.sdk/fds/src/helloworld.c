
#include <stdio.h>
#include "platform.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include "xsdps.h"
#include "ff.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xaxidma.h"
#include "xparameters.h"
//#include "xtmrctr.h"
#include "xscutimer.h"
#include <xsobel_filter.h>
#include <sys/time.h>

//timer info
#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR
#define TIMER_LOAD_VALUE	0xFFFFFFFF
XScuTimer	Timer;

#define MEM_BASE_ADDR 0x01000000;
#define TX_BUFFER_BASE (MEM_BASE_ADDR+0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR+0x00300000)

XAxiDma_Config *CfgPtr;
int status;
XSobel_filter_Config *xsobel_cfg;
XSobel_filter xsobel;

#define SIZE	1024

static char INPUT_FILE[32] = "input.gre";
static char OUTPUT_FILE[32] = "output.gre";
static char GOLDEN_FILE[32] = "golden.gre";
static char *Log_File;

static FIL file1,file2,file3;

/* The horizontal and vertical operators to be used in the sobel filter */
int horiz_operator[3][3] = {{-1, 0, 1},
                             {-2, 0, 2},
                             {-1, 0, 1}};
int vert_operator[3][3] = {{1, 2, 1},
                            {0, 0, 0},
                            {-1, -2, -1}};

int init_dma(XAxiDma *axiDma);
double sobel(unsigned char *input, unsigned char *output, unsigned char *golden);
int convolution2D(int posy, int posx, const unsigned char *input, int operator[][3]);

/* The arrays holding the input image, the output image and the output used *
 * as golden standard. The luminosity (intensity) of each pixel in the      *
 * grayscale image is represented by a value between 0 and 255 (an unsigned *
 * character). The arrays (and the files) contain these values in row-major *
 * order (element after element within each row and row after row. 			*/
unsigned char input[SIZE*SIZE], output[SIZE*SIZE], golden[SIZE*SIZE];


/* Implement a 2D convolution of the matrix with the operator */
/* posy and posx correspond to the vertical and horizontal disposition of the *
 * pixel we process in the original image, input is the input image and       *
 * operator the operator we apply (horizontal or vertical). The function ret. *
 * value is the convolution of the operator with the neighboring pixels of the*
 * pixel we process.														  */
int convolution2D(int posy, int posx, const unsigned char *input, int operator[][3]) {
	int i, j, res;

	res = 0;
	for (j = -1; j <= 1; j++) {
		for (i = -1; i <= 1; i++) {
			res += input[(posy + i)*SIZE + posx + j] * operator[i+1][j+1];
		}
	}
	return(res);
}

/* The main computational function of the program. The input, output and *
 * golden arguments are pointers to the arrays used to store the input   *
 * image, the output produced by the algorithm and the output used as    *
 * golden standard for the comparisons.									 */
double sobel(unsigned char *input, unsigned char *output, unsigned char *golden)
{
	double PSNR = 0, t;
	int i, j;
	int res;
	FRESULT f_in, f_out, f_golden;

	XScuTimer_Config *TMRConfigPtr;     //timer config

	TMRConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	XScuTimer_CfgInitialize(&Timer, TMRConfigPtr,TMRConfigPtr->BaseAddr);
	XScuTimer_SelfTest(&Timer);
	//load the timer
	XScuTimer_LoadTimer(&Timer, TIMER_LOAD_VALUE);
	int tick;


	/* Open the input, output, golden files, read the input and golden    *
     * and store them to the corresponding arrays.						  */

	Log_File = (char *)INPUT_FILE;
	f_in = f_open(&file1, Log_File,FA_READ);
	if (f_in!= FR_OK) {
		printf("File  INPUT_FILE  not found\n");
		return XST_FAILURE;
	}
	Log_File = (char *)GOLDEN_FILE;
	f_golden = f_open(&file2, Log_File,FA_READ);
	if (f_golden!= FR_OK) {
		printf("File  GOLDEN_FILE  not found\n");
		return XST_FAILURE;
	}

	Log_File = (char *)OUTPUT_FILE;
	f_out = f_open(&file3, Log_File, FA_CREATE_ALWAYS | FA_WRITE);
	if (f_out!= FR_OK) {
		printf("File  OUTPUT_FILE  not found\n");
		//return XST_FAILURE;
	}


	uint readBytes=SIZE*SIZE;
	int off =0;
	f_read(&file1,&input[off],SIZE*SIZE,&readBytes);
	off+=readBytes;
	printf("readbytes = %d\n",readBytes);


	uint readBytes2=SIZE*SIZE;
	off =0;
	f_read(&file2,&golden[off],SIZE*SIZE,&readBytes2);
	off+=readBytes2;

	printf("Just read from golden with start %p\n",&golden[0]);
	printf("Read:%d bytes\n",off);

	f_close(&file1);
	f_close(&file2);
	int one=0,two=0;

  	printf("Started\n");
        printf("Start timer\r\n");

        u32 status;
        	XAxiDma axiDma;

        	print("-----------------------------------------\n\r");
        	print("- Sobel filter accelerator test program -\n\r");
        	print("-----------------------------------------\n\r");

        	// Initialize the (simple) DMA engine
        	status = init_dma(&axiDma);
        	if (status != XST_SUCCESS) {
        	  exit(-1);
        	}

        	Xil_DCacheFlushRange((unsigned int)input,1024*1024);
        	Xil_DCacheFlushRange((unsigned int)output,1024*1024);

        XScuTimer_Start(&Timer);

	/* This is the main computation. Get the starting time. */
	/* For each pixel of the output image */
	XSobel_filter_Start(&xsobel);
	   // DMA enough data to push out first result data set completely
	   status = XAxiDma_SimpleTransfer(&axiDma, (unsigned int)input,
			   (unsigned int)1024*1024*sizeof(char), XAXIDMA_DMA_TO_DEVICE);
	   //pra3eis
	   // Setup DMA from PL to PS memory using AXI DMA's 'simple' transfer mode
       status = XAxiDma_SimpleTransfer(&axiDma, (unsigned int)(output) ,
    		   (unsigned int)1024*1024*sizeof(char), XAXIDMA_DEVICE_TO_DMA);

	   //if (status != XST_SUCCESS) { return XST_FAILURE; }
	   while(XAxiDma_Busy(&axiDma, XAXIDMA_DMA_TO_DEVICE));
	   do {
		   status = XAxiDma_Busy(&axiDma, XAXIDMA_DEVICE_TO_DMA);
	   } while(status);

	   XScuTimer_Stop(&Timer);
	printf("Ended\n");

	printf("Measure timer\r\n");

	printf("Measured\r\n");

	tick = XScuTimer_GetCounterValue(&Timer);

	printf("Ended with %.6lf secs\r\n",(double)(-1*tick)/XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ);

	printf("Sobel done with ones:%d and twos:%d\n",one,two);
	Xil_DCacheFlushRange((unsigned int)output,SIZE*SIZE);
	/* Now run through the output and the golden output to calculate *
	 * the MSE and then the PSNR.									 */
	for (i=1; i<SIZE-1; i++) {
		for ( j=1; j<SIZE-1; j++ ) {
			t = pow((output[i*SIZE+j] - golden[i*SIZE+j]),2);
			PSNR += t;
		}
	}

	PSNR /= (double)(SIZE*SIZE);
	PSNR = 10*log10(65536/PSNR);
	printf("PSNR:%g\n", PSNR);

	/* This is the end of the main computation. Take the end time,  *
	 * calculate the duration of the computation and report it. 	*/

	/* Write the output file */
	res = f_lseek(&file3, 0);
	if (res!= FR_OK) {
		return XST_FAILURE;
	}
	off =0;
	uint writtenBytes=0;
	while(writtenBytes!=SIZE*SIZE) {
		f_out = f_write(&file3,&output[off],SIZE*SIZE,&writtenBytes);
		if (f_out!=0) {
			xil_printf(" ERROR: f_write2 returned %d\r\n",f_out);
			//return XST_FAILURE;
		}
		off+=writtenBytes;

	}

	if (f_out!=FR_OK) {
			xil_printf(" ERROR: f_write2 returned %d\r\n",f_out);

			return XST_FAILURE;
	}
	off+=writtenBytes;

	printf("Just written to output with start %p\n",&output[0]);
	printf("Written:%d bytes\n",writtenBytes);

	f_close(&file3);

	return PSNR;
}

//DMA initialize

int init_dma(XAxiDma *axiDmaPtr){

   // Get pointer to DMA configuration

   xsobel_cfg = XSobel_filter_LookupConfig(XPAR_XSOBEL_FILTER_0_DEVICE_ID);
   if (xsobel_cfg){
	   status = XSobel_filter_CfgInitialize(&xsobel,xsobel_cfg);
	   if(status != XST_SUCCESS){
		   print("Error initializing Xsobel_axi_lite\n\r");
		   return XST_FAILURE;
	   }
   }

   XSobel_filter_InterruptGlobalDisable(&xsobel);
   XSobel_filter_InterruptDisable(&xsobel, 1);

   CfgPtr = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
   if(!CfgPtr){
      print("Error looking for AXI DMA config\n\r");
      return XST_FAILURE;
   }

   // Initialize the DMA handle
   status = XAxiDma_CfgInitialize(axiDmaPtr,CfgPtr);
   if(status != XST_SUCCESS){
      print("Error initializing DMA\n\r");
      return XST_FAILURE;
   }
   //check for scatter gather mode - this example must have simple mode only
   if(XAxiDma_HasSg(axiDmaPtr)){
      print("Error DMA configured in SG mode\n\r");
      return XST_FAILURE;
   }
   //disable the interrupts
   XAxiDma_IntrDisable(axiDmaPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
   XAxiDma_IntrDisable(axiDmaPtr, XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);

   status = XAxiDma_Selftest(axiDmaPtr);
   return XST_SUCCESS;
}


int main(int argc, char* argv[])
{


    init_platform();

    static FATFS  FS_instance;
    const char *Path = "0:/";
	FRESULT  result;
	result = f_mount(&FS_instance,Path, 0);
	if (result != FR_OK) {
		printf("Cannot mount sd\n");
		return XST_FAILURE;
	}
	printf("Sobel filter start!\n");
	double PSNR;
	PSNR = sobel(input, output, golden);
	printf("PSNR of original Sobel and computed Sobel image: %g\n", PSNR);
	printf("Create the output image with:$convert -depth 8 -size 1024x1024 GRAY:output_sobel.grey output_sobel.jpg\n");
    cleanup_platform();

	return 0;
}

