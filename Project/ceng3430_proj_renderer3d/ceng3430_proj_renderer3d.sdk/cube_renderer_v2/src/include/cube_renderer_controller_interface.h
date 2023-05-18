#ifndef CUBE_RENDERER_CONTROLLER_INTERFACE
#define CUBE_RENDERER_CONTROLLER_INTERFACE

#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "../platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "cube_renderer_controller.h"
#include <unistd.h>

#define BASEADDR XPAR_CUBE_RENDERER_CONTROLLER_0_S00_AXI_BASEADDR
#define VERTICES_ADDR CUBE_RENDERER_CONTROLLER_S00_AXI_SLV_REG0_OFFSET
#define INPUT_ADDR CUBE_RENDERER_CONTROLLER_S00_AXI_SLV_REG16_OFFSET

#define BTN_C 1
#define BTN_L 2
#define BTN_R 4
#define BTN_U 8
#define BTN_D 16
#define SW_0 32
#define SW_1 64
#define SW_2 128
#define SW_3 256
#define SW_4 512
#define SW_5 1024
#define SW_6 2048
#define SW_7 4096
#define MASK_SW_0(x) (x & SW_0)
#define MASK_SW_1(x) (x & SW_1)
#define MASK_SW_2(x) (x & SW_2)
#define MASK_SW_3(x) (x & SW_3)
#define MASK_SW_4(x) (x & SW_4)
#define MASK_SW_5(x) (x & SW_5)
#define MASK_SW_6(x) (x & SW_6)
#define MASK_SW_7(x) (x & SW_7)

u32 get_btn(int BTN);
u32 get_sw();
u32 get_sw_n(int n);
void write_vertices(float v[8][2]);

#endif // !CUBE_RENDERER_CONTROLLER_INTERFACE
