#include <stdio.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "include/math3d.h"

#define WIDTH 1024.0f
#define HEIGHT 600.0f

#define BTN_C 16
#define BTN_D 8
#define BTN_R 4
#define BTN_U 2
#define BTN_L 1

#define SW_7 128
#define SW_6 64
#define SW_5 32
#define SW_4 16
#define SW_3 8
#define SW_2 4
#define SW_1 2
#define SW_0 1

int main()
{
    init_platform();

    u32 btnc_in = 0;
    u32 btnl_in = 0;
    u32 btnr_in = 0;
    u32 btnu_in = 0;
    u32 btnd_in = 0;

    float cube_base_vertices[8][3] = {{-1.0f, -1.0f, -1.0f}, {-1.0f, -1.0f, 1.0f}, {-1.0f, 1.0f, -1.0f},
                                      {-1.0f, 1.0f, 1.0f},   {1.0f, -1.0f, -1.0f}, {1.0f, -1.0f, 1.0f},
                                      {1.0f, 1.0f, -1.0f},   {1.0f, 1.0f, 1.0f}};
    int line_indices[24] = {0, 1, 0, 2, 0, 4, 1, 3, 1, 5, 2, 3, 2, 6, 3, 7, 4, 5, 4, 6, 5, 7, 6, 7};
    float cube_pos[3] = {500.0f, 300.0f, 1000.0f};
    float cube_rot[3] = {0.0f, 0.0f, 0.0f};
    float cube_scale[3] = {100.0f, 100.0f, 100.0f};

    float camera_pos[3] = {0.0f, 0.0f, 0.0f};
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

    // Calculate the required matrices
    // ortho(proj_mat, 0.0f, 1024.0f, 600.0f, 0.0f, 1.0f, 100.0f);
    perspective(proj_mat, 45.0f, WIDTH / HEIGHT, 1.0f, 10000.0f);
    look_at(view_mat, camera_pos, camera_target, camera_up);

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
        printf("Cube vertex %d: %f, %f, %f\n", i, translated[i][0], translated[i][1], translated[i][2]);
        printf("Screen position %d: %f, %f\n", i, screen_pos[i][0], screen_pos[i][1]);
    }

    free_mat4(proj_mat);
    free_mat4(view_mat);
    free_mat4(model_mat);
    free_mat4(mvp_mat);
    cleanup_platform();
    return 0;
}
