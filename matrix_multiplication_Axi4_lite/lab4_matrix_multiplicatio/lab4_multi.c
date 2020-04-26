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
u32 mt_rd;
u32 data;
xil_printf("-- Start of the Program --\r\n");

//valid in = 1
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 1);
SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG3_OFFSET, size);

SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG0_OFFSET, 2);

for (i = 0; i < size; i++){
	SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG1_OFFSET, i);
	SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG2_OFFSET, i);
	for (int j=0; j<500; j++);
}

SUPER_MULTIPLICATION_mWriteReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG8_OFFSET, 1);


	while(1){
		mt_rd =SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG4_OFFSET);
		data = SUPER_MULTIPLICATION_mReadReg(XPAR_SUPER_MULTIPLICATION_0_S00_AXI_BASEADDR, REG7_OFFSET);
		xil_printf("data = %x\r\n", data);
		//if (mt_rd){
			xil_printf("Gray value = %x\r\n", mt_rd);
		//}
		for (i=0; i<1000000; i++);
   }
}

