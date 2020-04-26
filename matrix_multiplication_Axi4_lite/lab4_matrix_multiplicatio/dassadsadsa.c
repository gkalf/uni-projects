#include <stdio.h>
#include <xil_printf.h>
#include "xparameters.h"
#include <super_multiplication.h>
#include <xil_io.h>
#include <inttypes.h>

#define size 1024

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
u32 array[size][2];

xil_printf("-- Start of the Program --\r\n");


/**************************initialize input registers***********************************************/
//reg0 = validin;
//reg1 = addrin;
//reg2 = datain;
//reg3 = SIZE of array //den xreiazetai initialize dioti h fsm sthrizetai oti allazei
//                       timh o register gia na paei sthn epomenh katastash

SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG1_OFFSET, 0);
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG2_OFFSET, 0);
//valid in = 1
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 0);

/**********************************************************************************************/

SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG3_OFFSET, size );
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 2);


for (i = 0; i < size; i++){
	SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG1_OFFSET, i);
	SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG2_OFFSET, i);
		data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET);
		xil_printf("data = %d\r\n", (int)data);
}

//trigger enable
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG8_OFFSET, 1);

//valid_in disable
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 0);

/*********************************output regs****************************************/
//reg6,7 = 64bit output apo ton pollaplasiasmo
//reg4 = valid_out shma pou shmainei oti teleiwsan oi prakseis kai h ram2 einai etoimh na diavastei
//
//gia ton sugxronismo
//output reg10 = (wrote_Data) shma tou hw oti egrapse ston slave_reg6,7 to Y[i]
//input reg9 = (write) shma tou ARM gia na grapsei kainourio dedomeno
/************************************************************************************/

i = 0;
while(1){

	wrote_data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG10_OFFSET);
	valid_out =SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG4_OFFSET);
	if (valid_out){
		if (wrote_data != 1){
			//write = 1
			SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET, 1);
		}else{
			dataout31_0 = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG7_OFFSET);
			dataout63_32 = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG6_OFFSET);
			array[i][0] = dataout31_0;
			array[1][1] = dataout63_32;
			i++;
			//write = 0;
			SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG9_OFFSET, 0);


		}
	}else{
		break;
	}
}

	for (i = 0; i < size; i++){
		u64 metablhth = (uint64_t)array[i][1] <<32 | array[i][0];
		xil_printf("DATAAAAA = %" PRIu64 "\r\n",metablhth);
	}
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG8_OFFSET, 0);
}




