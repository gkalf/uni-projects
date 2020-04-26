// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSOBEL_FILTER_H
#define XSOBEL_FILTER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsobel_filter_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XSobel_filter_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XSobel_filter;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSobel_filter_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSobel_filter_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSobel_filter_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSobel_filter_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSobel_filter_Initialize(XSobel_filter *InstancePtr, u16 DeviceId);
XSobel_filter_Config* XSobel_filter_LookupConfig(u16 DeviceId);
int XSobel_filter_CfgInitialize(XSobel_filter *InstancePtr, XSobel_filter_Config *ConfigPtr);
#else
int XSobel_filter_Initialize(XSobel_filter *InstancePtr, const char* InstanceName);
int XSobel_filter_Release(XSobel_filter *InstancePtr);
#endif

void XSobel_filter_Start(XSobel_filter *InstancePtr);
u32 XSobel_filter_IsDone(XSobel_filter *InstancePtr);
u32 XSobel_filter_IsIdle(XSobel_filter *InstancePtr);
u32 XSobel_filter_IsReady(XSobel_filter *InstancePtr);
void XSobel_filter_EnableAutoRestart(XSobel_filter *InstancePtr);
void XSobel_filter_DisableAutoRestart(XSobel_filter *InstancePtr);


void XSobel_filter_InterruptGlobalEnable(XSobel_filter *InstancePtr);
void XSobel_filter_InterruptGlobalDisable(XSobel_filter *InstancePtr);
void XSobel_filter_InterruptEnable(XSobel_filter *InstancePtr, u32 Mask);
void XSobel_filter_InterruptDisable(XSobel_filter *InstancePtr, u32 Mask);
void XSobel_filter_InterruptClear(XSobel_filter *InstancePtr, u32 Mask);
u32 XSobel_filter_InterruptGetEnabled(XSobel_filter *InstancePtr);
u32 XSobel_filter_InterruptGetStatus(XSobel_filter *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
