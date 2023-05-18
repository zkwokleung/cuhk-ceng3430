#ifndef MATH3D
#define MATH3D

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define PI 3.14159265358979323846f

// Helper functions
float deg_to_rad(float deg);

/*
 *      Vector functions
 */
float *get_vec2(float x, float y);
float *get_vec3(float x, float y, float z);
float *get_vec4(float x, float y, float z, float w);

/*
 *      Vector arithmetic functions
 */
void vec2_add(float *result, float *a, float *b);
void vec3_add(float *result, float *a, float *b);
void vec4_add(float *result, float *a, float *b);

void vec2_sub(float *result, float *a, float *b);
void vec3_sub(float *result, float *a, float *b);
void vec4_sub(float *result, float *a, float *b);

void vec2_mul(float *result, float *a, float *b);
void vec3_mul(float *result, float *a, float *b);
void vec4_mul(float *result, float *a, float *b);

void vec2_div(float *result, float *a, float *b);
void vec3_div(float *result, float *a, float *b);
void vec4_div(float *result, float *a, float *b);

void vec2_scale(float *result, float *a, float s);
void vec3_scale(float *result, float *a, float s);
void vec4_scale(float *result, float *a, float s);

void vec2_norm(float *result, float *a);
void vec3_norm(float *result, float *a);
void vec4_norm(float *result, float *a);

void vec2_neg(float *result, float *a);
void vec3_neg(float *result, float *a);
void vec4_neg(float *result, float *a);

void cross(float *result, float *a, float *b);

float vec2_dot(float *a, float *b);
float vec3_dot(float *a, float *b);
float vec4_dot(float *a, float *b);

float vec2_mag(float *a);
float vec3_mag(float *a);
float vec4_mag(float *a);

float vec2_dist(float *a, float *b);
float vec3_dist(float *a, float *b);
float vec4_dist(float *a, float *b);

/*
 *     Matrix functions
 */
float **get_mat2();
float **get_mat3();
float **get_mat4();
float **get_mat2_identity();
float **get_mat3_identity();
float **get_mat4_identity();
void free_mat2(float **mat);
void free_mat3(float **mat);
void free_mat4(float **mat);

/*
 *     Matrix arithmetic functions
 */
void mat2_add(float **result, float **a, float **b);
void mat3_add(float **result, float **a, float **b);
void mat4_add(float **result, float **a, float **b);

void mat2_sub(float **result, float **a, float **b);
void mat3_sub(float **result, float **a, float **b);
void mat4_sub(float **result, float **a, float **b);

void mat2_mul(float **result, float **a, float **b);
void mat3_mul(float **result, float **a, float **b);
void mat4_mul(float **result, float **a, float **b);

void mat2_scale(float **result, float **a, float s);
void mat3_scale(float **result, float **a, float s);
void mat4_scale(float **result, float **a, float s);

/*
 *      Matrix vector functions
 */
void mat2_vec2_mul(float *result, float **a, float *b);
void mat3_vec3_mul(float *result, float **a, float *b);
void mat4_vec4_mul(float *result, float **a, float *b);

/*
 *     Type conversion
 */
void vec3_to_vec2(float *result, float *a);
void vec4_to_vec2(float *result, float *a);

void vec2_to_vec3(float *result, float *a, float z);
void vec4_to_vec3(float *result, float *a);

void vec2_to_vec4(float *result, float *a, float z, float w);
void vec3_to_vec4(float *result, float *a, float w);

void mat3_to_mat2(float **result, float **a);
void mat4_to_mat2(float **result, float **a);

void mat2_to_mat3(float **result, float **a);
void mat4_to_mat3(float **result, float **a);

void mat2_to_mat4(float **result, float **a);
void mat3_to_mat4(float **result, float **a);

/*
 *      Graphic functions
 */
void ortho(float **result, float left, float right, float bottom, float top, float near, float far);
void frustum(float **result, float left, float right, float bottom, float top, float near, float far);
void perspective(float **result, float fov, float aspect, float near, float far);
void look_at(float **result, float *eye, float *center, float *up);
void to_screen_space(float *result, float *point, float **projection, float **view, float width, float height);

/*
 *      Transformations
 */
void get_translation_mat4(float **result, float *v);
void get_rotation_x_mat4(float **result, float angle);
void get_rotation_y_mat4(float **result, float angle);
void get_rotation_z_mat4(float **result, float angle);
void get_scale_mat4(float **result, float *v);

void translate(float *result, float *point, float *displacement);
void rotate_x(float *result, float *point, float angle);
void rotate_y(float *result, float *point, float angle);
void rotate_z(float *result, float *point, float angle);
void scale(float *result, float *point, float *s);

#endif // MATH3D