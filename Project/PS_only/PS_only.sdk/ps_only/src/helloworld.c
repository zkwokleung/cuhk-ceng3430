#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "include/math3d.h"

int main()
{
    init_platform();

    float pos[4] = {1.3f, 2.4f, 5.6f, 9.8f};

    printf("%f, %f, %f, %f\n", pos[0], pos[1], pos[2], pos[3]);

    cleanup_platform();
    return 0;
}
