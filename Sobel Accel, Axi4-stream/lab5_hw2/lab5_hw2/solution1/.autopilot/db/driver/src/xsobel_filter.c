// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsobel_filter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSobel_filter_CfgInitialize(XSobel_filter *InstancePtr, XSobel_filter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSobel_filter_Start(XSobel_filter *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSobel_filter_IsDone(XSobel_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSobel_filter_IsIdle(XSobel_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSobel_filter_IsReady(XSobel_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSobel_filter_EnableAutoRestart(XSobel_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XSobel_filter_DisableAutoRestart(XSobel_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XSobel_filter_InterruptGlobalEnable(XSobel_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_GIE, 1);
}

void XSobel_filter_InterruptGlobalDisable(XSobel_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_GIE, 0);
}

void XSobel_filter_InterruptEnable(XSobel_filter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_IER);
    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XSobel_filter_InterruptDisable(XSobel_filter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_IER);
    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XSobel_filter_InterruptClear(XSobel_filter *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_filter_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XSobel_filter_InterruptGetEnabled(XSobel_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_IER);
}

u32 XSobel_filter_InterruptGetStatus(XSobel_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSobel_filter_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XSOBEL_FILTER_CTRL_BUS_ADDR_ISR);
}

