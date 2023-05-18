#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "cube_renderer_controller.h"
#include "include/math3d.h"
#include "include/cube_renderer_controller_interface.h"

#define WIDTH 1024.0f
#define HEIGHT 600.0f

#define DEBUG_DEVIDER_INITAL_VALUE 100000.0f

int main()
{
    // Initializations
    init_platform();

    xil_printf("Initializing\n\r");

    short running = 1;

    u32 btnc_in_prev = 0;
    u32 btnl_in_prev = 0;
    u32 btnr_in_prev = 0;
    u32 btnu_in_prev = 0;
    u32 btnd_in_prev = 0;
    u32 btnc_in = get_btn(BTN_C);
    u32 btnl_in = get_btn(BTN_L);
    u32 btnr_in = get_btn(BTN_R);
    u32 btnu_in = get_btn(BTN_U);
    u32 btnd_in = get_btn(BTN_D);
    u32 sw = 0;

    float cube_base_vertices[8][3] = {{-1.0f, -1.0f, -1.0f}, {-1.0f, -1.0f, 1.0f}, {1.0f, -1.0f, 1.0f},
                                      {1.0f, -1.0f, -1.0f},  {-1.0f, 1.0f, -1.0f}, {-1.0f, 1.0f, 1.0f},
                                      {1.0f, 1.0f, 1.0f},    {1.0f, 1.0f, -1.0f}};
    float cube_pos[3] = {0.0f, 0.0f, 500.0f};
    float cube_rot[3] = {0.0f, 0.0f, 0.0f};
    float cube_scale[3] = {100.0f, 100.0f, 100.0f};

    float camera_pos[3] = {0.0f, 0.0f, -100.0f};
    float camera_up[3] = {0.0f, 1.0f, 0.0f};
    float camera_target[3] = {0.0f, 0.0f, 1.0f};

    float **proj_mat = get_mat4();
    float **view_mat = get_mat4();
    float **model_mat = get_mat4();
    float **mvp_mat = get_mat4();

    float scaled[8][3] = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}};
    float rotated_z[8][3] = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}};
    float rotated_y[8][3] = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}};
    float rotated_x[8][3] = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}};
    float translated[8][3] = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}};
    float screen_pos[8][2] = {{0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}};

    float debug_divider = DEBUG_DEVIDER_INITAL_VALUE;

    // Calculate the required matrices
    // ortho(proj_mat, 0.0f, 1024.0f, 600.0f, 0.0f, 1.0f, 10000.0f);
    perspective(proj_mat, 120.0f, WIDTH / HEIGHT, 1.0f, 100000.0f);
    look_at(view_mat, camera_pos, camera_target, camera_up);

    xil_printf("Initialize completed");

    // Main loop
    while (running)
    {
        // Input
        // Read buttons
        btnc_in = get_btn(BTN_C);
        btnl_in = get_btn(BTN_L);
        btnr_in = get_btn(BTN_R);
        btnu_in = get_btn(BTN_U);
        btnd_in = get_btn(BTN_D);

        // Read switches
        sw = get_sw();

        // Check the state of the switches
        if (sw & SW_0)
        {
            // BTN will change the cube's position
            if (btnl_in)
            {
                cube_pos[0] += 1.0f;
                xil_printf("Move left\n\r");
            }
            else if (btnr_in)
            {
                cube_pos[0] -= 1.0f;
                xil_printf("Move right\n\r");
            }
            else if (btnu_in)
            {
                cube_pos[1] -= 1.0f;
                xil_printf("Move up\n\r");
            }
            else if (btnd_in)
            {
                cube_pos[1] += 1.0f;
                xil_printf("Move down\n\r");
            }
        }
        if (sw & SW_1)
        {
            // BTN will change the cube's rotation
            if (btnl_in)
            {
                cube_rot[1] -= 0.1f;
                xil_printf("Rotate left\n\r");
            }
            else if (btnr_in)
            {
                cube_rot[1] += 0.1f;
                xil_printf("Rotate right\n\r");
            }
            else if (btnu_in)
            {
                cube_rot[0] -= 0.1f;
                xil_printf("Rotate up\n\r");
            }
            else if (btnd_in)
            {
                cube_rot[0] += 0.1f;
                xil_printf("Rotate down\n\r");
            }
        }
        if (sw & SW_2)
        {
            // BTN will change the cube's scale
            if (btnl_in)
            {
                cube_scale[0] -= 0.01f;
                cube_scale[1] -= 0.01f;
                cube_scale[2] -= 0.01f;
            }
            else if (btnr_in)
            {
                cube_scale[0] += 0.01f;
                cube_scale[1] += 0.01f;
                cube_scale[2] += 0.01f;
            }
            else if (btnu_in)
            {
                cube_scale[0] += 0.01f;
                cube_scale[1] += 0.01f;
                cube_scale[2] += 0.01f;
            }
            else if (btnd_in)
            {
                cube_scale[0] -= 0.01f;
                cube_scale[1] -= 0.01f;
                cube_scale[2] -= 0.01f;
            }
        }
        if (sw & SW_3)
        {
            // Y axis Self rotate
            cube_rot[2] += 0.01f;
            if (cube_rot[2] > 360.0f)
            {
                cube_rot[2] = 0.0f;
            }
        }

        if (sw & SW_4)
        {
        }

        if (sw & SW_5)
        {
        }

        if (sw & SW_6)
        {
            // Change the shape of the cube
            if (btnl_in)
            {
                // Cube
                cube_base_vertices[0][0] = -1.0f;
                cube_base_vertices[0][1] = -1.0f;
                cube_base_vertices[0][2] = -1.0f;
                cube_base_vertices[1][0] = 1.0f;
                cube_base_vertices[1][1] = -1.0f;
                cube_base_vertices[1][2] = -1.0f;
                cube_base_vertices[2][0] = 1.0f;
                cube_base_vertices[2][1] = -1.0f;
                cube_base_vertices[2][2] = 1.0f;
                cube_base_vertices[3][0] = -1.0f;
                cube_base_vertices[3][1] = 1.0f;
                cube_base_vertices[3][2] = 1.0f;
                cube_base_vertices[4][0] = -1.0f;
                cube_base_vertices[4][1] = 1.0f;
                cube_base_vertices[4][2] = -1.0f;
                cube_base_vertices[5][0] = 1.0f;
                cube_base_vertices[5][1] = 1.0f;
                cube_base_vertices[5][2] = -1.0f;
                cube_base_vertices[6][0] = 1.0f;
                cube_base_vertices[6][1] = 1.0f;
                cube_base_vertices[6][2] = 1.0f;
                cube_base_vertices[7][0] = -1.0f;
                cube_base_vertices[7][1] = -1.0f;
                cube_base_vertices[7][2] = 1.0f;
            }

            if (btnr_in)
            {
                // Tetrahedron
                cube_base_vertices[0][0] = 0.0f;
                cube_base_vertices[0][1] = 1.0f;
                cube_base_vertices[0][2] = 0.0f;
                cube_base_vertices[1][0] = 0.0f;
                cube_base_vertices[1][1] = 1.0f;
                cube_base_vertices[1][2] = 0.0f;
                cube_base_vertices[2][0] = 0.0f;
                cube_base_vertices[2][1] = 1.0f;
                cube_base_vertices[2][2] = 0.0f;
                cube_base_vertices[3][0] = 0.0f;
                cube_base_vertices[3][1] = 1.0f;
                cube_base_vertices[3][2] = 0.0f;
                cube_base_vertices[4][0] = -1.0f;
                cube_base_vertices[4][1] = 1.0f;
                cube_base_vertices[4][2] = -1.0f;
                cube_base_vertices[5][0] = 1.0f;
                cube_base_vertices[5][1] = 1.0f;
                cube_base_vertices[5][2] = -1.0f;
                cube_base_vertices[6][0] = 1.0f;
                cube_base_vertices[6][1] = 1.0f;
                cube_base_vertices[6][2] = 1.0f;
                cube_base_vertices[7][0] = -1.0f;
                cube_base_vertices[7][1] = -1.0f;
                cube_base_vertices[7][2] = 1.0f;
            }

            if (btnu_in)
            {
                // triangular prism
                cube_base_vertices[0][0] = -1.0f;
                cube_base_vertices[0][1] = -1.0f;
                cube_base_vertices[0][2] = -1.0f;
                cube_base_vertices[1][0] = 0.0f;
                cube_base_vertices[1][1] = -1.0f;
                cube_base_vertices[1][2] = -1.0f;
                cube_base_vertices[2][0] = 0.0f;
                cube_base_vertices[2][1] = -1.0f;
                cube_base_vertices[2][2] = 1.0f;
                cube_base_vertices[3][0] = -1.0f;
                cube_base_vertices[3][1] = 1.0f;
                cube_base_vertices[3][2] = 1.0f;
                cube_base_vertices[4][0] = -1.0f;
                cube_base_vertices[4][1] = 1.0f;
                cube_base_vertices[4][2] = -1.0f;
                cube_base_vertices[5][0] = 0.0f;
                cube_base_vertices[5][1] = 1.0f;
                cube_base_vertices[5][2] = -1.0f;
                cube_base_vertices[6][0] = 0.0f;
                cube_base_vertices[6][1] = 1.0f;
                cube_base_vertices[6][2] = 1.0f;
                cube_base_vertices[7][0] = -1.0f;
                cube_base_vertices[7][1] = -1.0f;
                cube_base_vertices[7][2] = 1.0f;
            }
        }

        if (sw & SW_7)
        {
            if (btnc_in)
            {
                xil_printf("End\n\r");
                running = 0;
            }

            if (btnl_in && !btnl_in_prev)
            {
                // reset the cube attributes
                cube_pos[0] = 500.0f;
                cube_pos[1] = 300.0f;
                cube_pos[2] = 1000.0f;

                cube_rot[0] = 0.0f;
                cube_rot[1] = 0.0f;
                cube_rot[2] = 0.0f;

                cube_scale[0] = 100.0f;
                cube_scale[1] = 100.0f;
                cube_scale[2] = 100.0f;

                xil_printf("Reseting the cube\n\r");
            }
        }

        // Apply the transformations in the correct order
        for (unsigned int i = 0; i < 8; i++)
        {
            scale(scaled[i], cube_base_vertices[i], cube_scale);
            rotate_z(rotated_z[i], scaled[i], cube_rot[2]);
            rotate_y(rotated_y[i], rotated_z[i], cube_rot[1]);
            rotate_x(rotated_x[i], rotated_y[i], cube_rot[0]);
            translate(translated[i], rotated_x[i], cube_pos);

            // Convert the 3D cube positions to 2D screen positions
            to_screen_space(screen_pos[i], translated[i], proj_mat, view_mat, WIDTH, HEIGHT);
            // xil_printf("Cube vertex %d: %f, %f, %f\n\r", i, translated[i][0], translated[i][1], translated[i][2]);
            // xil_printf("Screen position %d: %f, %f\n\r", i, screen_pos[i][0], screen_pos[i][1]);
        }

        // Output screen positions
        write_vertices(screen_pos);

        // Assign the button state to the previous state
        btnc_in_prev = btnc_in;
        btnl_in_prev = btnl_in;
        btnr_in_prev = btnr_in;
        btnu_in_prev = btnu_in;
        btnd_in_prev = btnd_in;
    }
    xil_printf("Program terminated\n\r");

    free_mat4(proj_mat);
    free_mat4(view_mat);
    free_mat4(model_mat);
    free_mat4(mvp_mat);
    cleanup_platform();
    return 0;
}
