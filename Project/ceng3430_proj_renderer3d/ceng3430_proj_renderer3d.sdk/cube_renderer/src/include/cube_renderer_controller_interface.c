#include "cube_renderer_controller_interface.h"

u32 get_btn(int BTN)
{
    return CUBE_RENDERER_CONTROLLER_mReadReg(BASEADDR, INPUT_ADDR) & BTN;
}

u32 get_sw()
{
    return (CUBE_RENDERER_CONTROLLER_mReadReg(BASEADDR, INPUT_ADDR) & 0xFE0);
}

u32 get_sw_n(int n)
{
    return (CUBE_RENDERER_CONTROLLER_mReadReg(BASEADDR, INPUT_ADDR) & n);
}

void write_vertices(float v[8][2])
{
    for (unsigned int i = 0; i < 8; i++)
    {
        for (unsigned int j = 0; j < 2; j++)
        {
            CUBE_RENDERER_CONTROLLER_mWriteReg(BASEADDR, VERTICES_ADDR + (i * 8) + (j * 4), ((u32)round(v[i][j])));
        }
    }
}