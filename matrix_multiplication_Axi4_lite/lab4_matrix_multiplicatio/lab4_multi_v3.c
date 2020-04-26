#include <stdio.h>
#include <xil_printf.h>
#include "xparameters.h"
#include <super_multiplication.h>
#include <xil_io.h>

#define size 1000

#define  REG0_OFFSET 0
#define  REG1_OFFSET 4
#define  REG2_OFFSET 8
#define  REG3_OFFSET 12
#define  REG4_OFFSET 16
#define  REG5_OFFSET 20
#define  REG6_OFFSET 24
#define  REG7_OFFSET 28
#define  REG8_OFFSET 32
#define  REG9_OFFSET 36
#define  REG10_OFFSET 40
#define  REG11_OFFSET 44
//====================================================

int main (void)
{

int i;
u32 wrote_data;
u32 valid_out;
u32 dataout31_0;
u32 dataout63_32;
u32 data;
u32 state;
u32 process;
xil_printf("-- Start of the Program --\r\n");


//valid in = 1
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 1);
state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
xil_printf("valid_ijn = %d, state = %x\r\n", (int)data,state);

SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG3_OFFSET, size );
state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
xil_printf("size = %d, state = %x\r\n", (int)data,state);

//for(i = 0; i<10000000; i++);

SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 2);
state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
xil_printf("valid_in = %d, state = %x\r\n", (int)data,state);


for (i = 0; i < size; i++){
	SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG1_OFFSET, i);
	SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG2_OFFSET, i);
	state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
	data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
	xil_printf("data = %d, state = %x\r\n", (int)data,state);
	for (int j=0; j<500; j++);
}

//trigger
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG8_OFFSET, 1);
state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
process = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG5_OFFSET);
xil_printf("data = %d, state = %x, process = %d\r\n", (int)data,state,(int)process);

state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
xil_printf("state = %x\r\n",state);
//valid in 0
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 0);
state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
xil_printf("valid_in = %d, state = %x\r\n", (int)data,state);

while(1){
	valid_out =SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG4_OFFSET);
	state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
	wrote_data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG10_OFFSET);
	//xil_printf("wrote data = %d valid = %d state= %d\r\n",wrote_data,valid_out,state);

	if (valid_out){
		if (wrote_data != 1){
			//write = 1
			SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET, 1);
			data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
			//xil_printf("valid_ijn = %d, state = %x\r\n", (int)data,state);
			//for (i = 0; i<1000; i++);
		}else{
			dataout31_0 = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG7_OFFSET);
			dataout63_32 = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG6_OFFSET);
			process = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG5_OFFSET);

			SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET, 0);
			xil_printf("DATAAAAA = %d_%d counter = %d\r\n",dataout63_32,dataout31_0,process);

		}
	}else{
		xil_printf("mphka\r\n");
		break;
	}
}


//for(i = 0; i < 1000; i++){
//	valid_out =SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG4_OFFSET);
//	state = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG11_OFFSET);
//	data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG10_OFFSET);
//	xil_printf("yolo data = %d, state = %x, valid_out = %d\r\n", (int)data,state,mt_rd);
//}
//
//
//	//while(1){
//		mt_rd =SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG4_OFFSET);
//		data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG7_OFFSET);
//		xil_printf("data = %d, state = %x\r\n", (int)data,state);
//		//if (mt_rd){
//		//}
//		for (i=0; i<1000000; i++);
// //  }
}





