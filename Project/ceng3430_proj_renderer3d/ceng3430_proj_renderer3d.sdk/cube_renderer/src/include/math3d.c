#include "math3d.h"

// Helper functions
float deg_to_rad(float deg)
{
    return deg * PI / 180.0f;
}

/*
 * Vector arithmetic functions
 */

// Vector addition
void vec2_add(float *result, float *a, float *b)
{
    result[0] = a[0] + b[0];
    result[1] = a[1] + b[1];
}

void vec3_add(float *result, float *a, float *b)
{
    result[0] = a[0] + b[0];
    result[1] = a[1] + b[1];
    result[2] = a[2] + b[2];
}

void vec4_add(float *result, float *a, float *b)
{
    result[0] = a[0] + b[0];
    result[1] = a[1] + b[1];
    result[2] = a[2] + b[2];
    result[3] = a[3] + b[3];
}

// Vector subtraction
void vec2_sub(float *result, float *a, float *b)
{
    result[0] = a[0] - b[0];
    result[1] = a[1] - b[1];
}

void vec3_sub(float *result, float *a, float *b)
{
    result[0] = a[0] - b[0];
    result[1] = a[1] - b[1];
    result[2] = a[2] - b[2];
}

void vec4_sub(float *result, float *a, float *b)
{
    result[0] = a[0] - b[0];
    result[1] = a[1] - b[1];
    result[2] = a[2] - b[2];
    result[3] = a[3] - b[3];
}

// Vector multiplication
void vec2_mul(float *result, float *a, float *b)
{
    result[0] = a[0] * b[0];
    result[1] = a[1] * b[1];
}

void vec3_mul(float *result, float *a, float *b)
{
    result[0] = a[0] * b[0];
    result[1] = a[1] * b[1];
    result[2] = a[2] * b[2];
}

void vec4_mul(float *result, float *a, float *b)
{
    result[0] = a[0] * b[0];
    result[1] = a[1] * b[1];
    result[2] = a[2] * b[2];
    result[3] = a[3] * b[3];
}

// Vector division
void vec2_div(float *result, float *a, float *b)
{
    result[0] = a[0] / b[0];
    result[1] = a[1] / b[1];
}

void vec3_div(float *result, float *a, float *b)
{
    result[0] = a[0] / b[0];
    result[1] = a[1] / b[1];
    result[2] = a[2] / b[2];
}

void vec4_div(float *result, float *a, float *b)
{
    result[0] = a[0] / b[0];
    result[1] = a[1] / b[1];
    result[2] = a[2] / b[2];
    result[3] = a[3] / b[3];
}

// Vector Cross Product
void cross(float *result, float *a, float *b)
{
    result[0] = (a[1] * b[2]) - (a[2] * b[1]);
    result[1] = (a[2] * b[0]) - (a[0] * b[2]);
    result[2] = (a[0] * b[1]) - (a[1] * b[0]);
}

// Vector scaling
void vec2_scale(float *result, float *a, float s)
{
    result[0] = a[0] * s;
    result[1] = a[1] * s;
}

void vec3_scale(float *result, float *a, float s)
{
    result[0] = a[0] * s;
    result[1] = a[1] * s;
    result[2] = a[2] * s;
}

void vec4_scale(float *result, float *a, float s)
{
    result[0] = a[0] * s;
    result[1] = a[1] * s;
    result[2] = a[2] * s;
    result[3] = a[3] * s;
}

// Vector normalization
void vec2_norm(float *result, float *a)
{
    float mag = sqrt(vec2_dot(a, a));
    vec2_scale(result, a, 1.0f / mag);
}

void vec3_norm(float *result, float *a)
{
    float mag = sqrt(vec3_dot(a, a));
    vec3_scale(result, a, 1.0f / mag);
}

void vec4_norm(float *result, float *a)
{
    float mag = sqrt(vec4_dot(a, a));
    vec4_scale(result, a, 1.0f / mag);
}

// Vector negation
void vec2_neg(float *result, float *a)
{
    result[0] = -a[0];
    result[1] = -a[1];
}

void vec3_neg(float *result, float *a)
{
    result[0] = -a[0];
    result[1] = -a[1];
    result[2] = -a[2];
}

void vec4_neg(float *result, float *a)
{
    result[0] = -a[0];
    result[1] = -a[1];
    result[2] = -a[2];
    result[3] = -a[3];
}

// Vector Dot Product
float vec2_dot(float *a, float *b)
{
    return (a[0] * b[0]) + (a[1] * b[1]);
}

float vec3_dot(float *a, float *b)
{
    return (a[0] * b[0]) + (a[1] * b[1]) + (a[2] * b[2]);
}

float vec4_dot(float *a, float *b)
{
    return (a[0] * b[0]) + (a[1] * b[1]) + (a[2] * b[2]) + (a[3] * b[3]);
}

// Vector Magnitude
float vec2_mag(float *a)
{
    return sqrt(vec2_dot(a, a));
}

float vec3_mag(float *a)
{
    return sqrt(vec3_dot(a, a));
}

float vec4_mag(float *a)
{
    return sqrt(vec4_dot(a, a));
}

// Vector Distance
float vec2_dist(float *a, float *b)
{
    float result[2];
    vec2_sub(result, a, b);
    return vec2_mag(result);
}

float vec3_dist(float *a, float *b)
{
    float result[3];
    vec3_sub(result, a, b);
    return vec3_mag(result);
}

float vec4_dist(float *a, float *b)
{
    float result[4];
    vec4_sub(result, a, b);
    return vec4_mag(result);
}

/*
 *      Matrix Functions
 */
float **get_mat2()
{
    float **result = (float **)malloc(2 * sizeof(float *));
    for (int i = 0; i < 2; i++)
        result[i] = (float *)malloc(2 * sizeof(float));
    return result;
}

float **get_mat3()
{
    float **result = (float **)malloc(3 * sizeof(float *));
    for (int i = 0; i < 3; i++)
        result[i] = (float *)malloc(3 * sizeof(float));
    return result;
}

float **get_mat4()
{
    float **result = (float **)malloc(4 * sizeof(float *));
    for (int i = 0; i < 4; i++)
        result[i] = (float *)malloc(4 * sizeof(float));
    return result;
}

float **get_mat2_identity()
{
    float **result = get_mat2();
    result[0][0] = 1.0f;
    result[0][1] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = 1.0f;
    return result;
}

float **get_mat3_identity()
{
    float **result = get_mat3();
    result[0][0] = 1.0f;
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = 1.0f;
    result[1][2] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = 1.0f;
    return result;
}

float **get_mat4_identity()
{
    float **result = get_mat4();
    result[0][0] = 1.0f;
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = 1.0f;
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = 1.0f;
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
    return result;
}

void free_mat2(float **mat)
{
    for (int i = 0; i < 2; i++)
        free(mat[i]);
    free(mat);
}

void free_mat3(float **mat)
{
    for (int i = 0; i < 3; i++)
        free(mat[i]);
    free(mat);
}

void free_mat4(float **mat)
{
    for (int i = 0; i < 4; i++)
        free(mat[i]);
    free(mat);
}

// Matrix addition
void mat2_add(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] + b[0][0];
    result[0][1] = a[0][1] + b[0][1];
    result[1][0] = a[1][0] + b[1][0];
    result[1][1] = a[1][1] + b[1][1];
}

void mat3_add(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] + b[0][0];
    result[0][1] = a[0][1] + b[0][1];
    result[0][2] = a[0][2] + b[0][2];
    result[1][0] = a[1][0] + b[1][0];
    result[1][1] = a[1][1] + b[1][1];
    result[1][2] = a[1][2] + b[1][2];
    result[2][0] = a[2][0] + b[2][0];
    result[2][1] = a[2][1] + b[2][1];
    result[2][2] = a[2][2] + b[2][2];
}

void mat4_add(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] + b[0][0];
    result[0][1] = a[0][1] + b[0][1];
    result[0][2] = a[0][2] + b[0][2];
    result[0][3] = a[0][3] + b[0][3];
    result[1][0] = a[1][0] + b[1][0];
    result[1][1] = a[1][1] + b[1][1];
    result[1][2] = a[1][2] + b[1][2];
    result[1][3] = a[1][3] + b[1][3];
    result[2][0] = a[2][0] + b[2][0];
    result[2][1] = a[2][1] + b[2][1];
    result[2][2] = a[2][2] + b[2][2];
    result[2][3] = a[2][3] + b[2][3];
    result[3][0] = a[3][0] + b[3][0];
    result[3][1] = a[3][1] + b[3][1];
    result[3][2] = a[3][2] + b[3][2];
    result[3][3] = a[3][3] + b[3][3];
}

// Matrix subtraction
void mat2_sub(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] - b[0][0];
    result[0][1] = a[0][1] - b[0][1];
    result[1][0] = a[1][0] - b[1][0];
    result[1][1] = a[1][1] - b[1][1];
}

void mat3_sub(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] - b[0][0];
    result[0][1] = a[0][1] - b[0][1];
    result[0][2] = a[0][2] - b[0][2];
    result[1][0] = a[1][0] - b[1][0];
    result[1][1] = a[1][1] - b[1][1];
    result[1][2] = a[1][2] - b[1][2];
    result[2][0] = a[2][0] - b[2][0];
    result[2][1] = a[2][1] - b[2][1];
    result[2][2] = a[2][2] - b[2][2];
}

void mat4_sub(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] - b[0][0];
    result[0][1] = a[0][1] - b[0][1];
    result[0][2] = a[0][2] - b[0][2];
    result[0][3] = a[0][3] - b[0][3];
    result[1][0] = a[1][0] - b[1][0];
    result[1][1] = a[1][1] - b[1][1];
    result[1][2] = a[1][2] - b[1][2];
    result[1][3] = a[1][3] - b[1][3];
    result[2][0] = a[2][0] - b[2][0];
    result[2][1] = a[2][1] - b[2][1];
    result[2][2] = a[2][2] - b[2][2];
    result[2][3] = a[2][3] - b[2][3];
    result[3][0] = a[3][0] - b[3][0];
    result[3][1] = a[3][1] - b[3][1];
    result[3][2] = a[3][2] - b[3][2];
    result[3][3] = a[3][3] - b[3][3];
}

// Matrix multiplication
void mat2_mul(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] * b[0][0] + a[0][1] * b[1][0];
    result[0][1] = a[0][0] * b[0][1] + a[0][1] * b[1][1];
    result[1][0] = a[1][0] * b[0][0] + a[1][1] * b[1][0];
    result[1][1] = a[1][0] * b[0][1] + a[1][1] * b[1][1];
}

void mat3_mul(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] * b[0][0] + a[0][1] * b[1][0] + a[0][2] * b[2][0];
    result[0][1] = a[0][0] * b[0][1] + a[0][1] * b[1][1] + a[0][2] * b[2][1];
    result[0][2] = a[0][0] * b[0][2] + a[0][1] * b[1][2] + a[0][2] * b[2][2];
    result[1][0] = a[1][0] * b[0][0] + a[1][1] * b[1][0] + a[1][2] * b[2][0];
    result[1][1] = a[1][0] * b[0][1] + a[1][1] * b[1][1] + a[1][2] * b[2][1];
    result[1][2] = a[1][0] * b[0][2] + a[1][1] * b[1][2] + a[1][2] * b[2][2];
    result[2][0] = a[2][0] * b[0][0] + a[2][1] * b[1][0] + a[2][2] * b[2][0];
    result[2][1] = a[2][0] * b[0][1] + a[2][1] * b[1][1] + a[2][2] * b[2][1];
    result[2][2] = a[2][0] * b[0][2] + a[2][1] * b[1][2] + a[2][2] * b[2][2];
}

void mat4_mul(float **result, float **a, float **b)
{
    result[0][0] = a[0][0] * b[0][0] + a[0][1] * b[1][0] + a[0][2] * b[2][0] + a[0][3] * b[3][0];
    result[0][1] = a[0][0] * b[0][1] + a[0][1] * b[1][1] + a[0][2] * b[2][1] + a[0][3] * b[3][1];
    result[0][2] = a[0][0] * b[0][2] + a[0][1] * b[1][2] + a[0][2] * b[2][2] + a[0][3] * b[3][2];
    result[0][3] = a[0][0] * b[0][3] + a[0][1] * b[1][3] + a[0][2] * b[2][3] + a[0][3] * b[3][3];
    result[1][0] = a[1][0] * b[0][0] + a[1][1] * b[1][0] + a[1][2] * b[2][0] + a[1][3] * b[3][0];
    result[1][1] = a[1][0] * b[0][1] + a[1][1] * b[1][1] + a[1][2] * b[2][1] + a[1][3] * b[3][1];
    result[1][2] = a[1][0] * b[0][2] + a[1][1] * b[1][2] + a[1][2] * b[2][2] + a[1][3] * b[3][2];
    result[1][3] = a[1][0] * b[0][3] + a[1][1] * b[1][3] + a[1][2] * b[2][3] + a[1][3] * b[3][3];
    result[2][0] = a[2][0] * b[0][0] + a[2][1] * b[1][0] + a[2][2] * b[2][0] + a[2][3] * b[3][0];
    result[2][1] = a[2][0] * b[0][1] + a[2][1] * b[1][1] + a[2][2] * b[2][1] + a[2][3] * b[3][1];
    result[2][2] = a[2][0] * b[0][2] + a[2][1] * b[1][2] + a[2][2] * b[2][2] + a[2][3] * b[3][2];
    result[2][3] = a[2][0] * b[0][3] + a[2][1] * b[1][3] + a[2][2] * b[2][3] + a[2][3] * b[3][3];
    result[3][0] = a[3][0] * b[0][0] + a[3][1] * b[1][0] + a[3][2] * b[2][0] + a[3][3] * b[3][0];
    result[3][1] = a[3][0] * b[0][1] + a[3][1] * b[1][1] + a[3][2] * b[2][1] + a[3][3] * b[3][1];
    result[3][2] = a[3][0] * b[0][2] + a[3][1] * b[1][2] + a[3][2] * b[2][2] + a[3][3] * b[3][2];
    result[3][3] = a[3][0] * b[0][3] + a[3][1] * b[1][3] + a[3][2] * b[2][3] + a[3][3] * b[3][3];
}

// Matrix scale
void mat2_scale(float **result, float **a, float s)
{
    result[0][0] = a[0][0] * s;
    result[0][1] = a[0][1] * s;
    result[1][0] = a[1][0] * s;
    result[1][1] = a[1][1] * s;
}

void mat3_scale(float **result, float **a, float s)
{
    result[0][0] = a[0][0] * s;
    result[0][1] = a[0][1] * s;
    result[0][2] = a[0][2] * s;
    result[1][0] = a[1][0] * s;
    result[1][1] = a[1][1] * s;
    result[1][2] = a[1][2] * s;
    result[2][0] = a[2][0] * s;
    result[2][1] = a[2][1] * s;
    result[2][2] = a[2][2] * s;
}

void mat4_scale(float **result, float **a, float s)
{
    result[0][0] = a[0][0] * s;
    result[0][1] = a[0][1] * s;
    result[0][2] = a[0][2] * s;
    result[0][3] = a[0][3] * s;
    result[1][0] = a[1][0] * s;
    result[1][1] = a[1][1] * s;
    result[1][2] = a[1][2] * s;
    result[1][3] = a[1][3] * s;
    result[2][0] = a[2][0] * s;
    result[2][1] = a[2][1] * s;
    result[2][2] = a[2][2] * s;
    result[2][3] = a[2][3] * s;
    result[3][0] = a[3][0] * s;
    result[3][1] = a[3][1] * s;
    result[3][2] = a[3][2] * s;
    result[3][3] = a[3][3] * s;
}

// Matrix Vector Multiplication
void mat2_vec2_mul(float *result, float **a, float *b)
{
    result[0] = a[0][0] * b[0] + a[0][1] * b[1];
    result[1] = a[1][0] * b[0] + a[1][1] * b[1];
}

void mat3_vec3_mul(float *result, float **a, float *b)
{
    result[0] = a[0][0] * b[0] + a[0][1] * b[1] + a[0][2] * b[2];
    result[1] = a[1][0] * b[0] + a[1][1] * b[1] + a[1][2] * b[2];
    result[2] = a[2][0] * b[0] + a[2][1] * b[1] + a[2][2] * b[2];
}

void mat4_vec4_mul(float *result, float **a, float *b)
{
    result[0] = a[0][0] * b[0] + a[0][1] * b[1] + a[0][2] * b[2] + a[0][3] * b[3];
    result[1] = a[1][0] * b[0] + a[1][1] * b[1] + a[1][2] * b[2] + a[1][3] * b[3];
    result[2] = a[2][0] * b[0] + a[2][1] * b[1] + a[2][2] * b[2] + a[2][3] * b[3];
    result[3] = a[3][0] * b[0] + a[3][1] * b[1] + a[3][2] * b[2] + a[3][3] * b[3];
}

// Type conversion
void vec3_to_vec2(float *result, float *a)
{
    result[0] = a[0];
    result[1] = a[1];
}

void vec4_to_vec2(float *result, float *a)
{
    result[0] = a[0];
    result[1] = a[1];
}

void vec4_to_vec3(float *result, float *a)
{
    result[0] = a[0];
    result[1] = a[1];
    result[2] = a[2];
}

void vec2_to_vec3(float *result, float *a, float z)
{
    result[0] = a[0];
    result[1] = a[1];
    result[2] = z;
}

void vec2_to_vec4(float *result, float *a, float z, float w)
{
    result[0] = a[0];
    result[1] = a[1];
    result[2] = z;
    result[3] = w;
}

void vec3_to_vec4(float *result, float *a, float w)
{
    result[0] = a[0];
    result[1] = a[1];
    result[2] = a[2];
    result[3] = w;
}

void mat2_to_mat3(float **result, float **a)
{
    result[0][0] = a[0][0];
    result[0][1] = a[0][1];
    result[0][2] = 0.0f;
    result[1][0] = a[1][0];
    result[1][1] = a[1][1];
    result[1][2] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = 1.0f;
}

void mat2_to_mat4(float **result, float **a)
{
    result[0][0] = a[0][0];
    result[0][1] = a[0][1];
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = a[1][0];
    result[1][1] = a[1][1];
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = 1.0f;
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void mat3_to_mat2(float **result, float **a)
{
    result[0][0] = a[0][0];
    result[0][1] = a[0][1];
    result[1][0] = a[1][0];
    result[1][1] = a[1][1];
}

void mat3_to_mat4(float **result, float **a)
{
    result[0][0] = a[0][0];
    result[0][1] = a[0][1];
    result[0][2] = a[0][2];
    result[0][3] = 0.0f;
    result[1][0] = a[1][0];
    result[1][1] = a[1][1];
    result[1][2] = a[1][2];
    result[1][3] = 0.0f;
    result[2][0] = a[2][0];
    result[2][1] = a[2][1];
    result[2][2] = a[2][2];
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void mat4_to_mat2(float **result, float **a)
{
    result[0][0] = a[0][0];
    result[0][1] = a[0][1];
    result[1][0] = a[1][0];
    result[1][1] = a[1][1];
}

void mat4_to_mat3(float **result, float **a)
{
    result[0][0] = a[0][0];
    result[0][1] = a[0][1];
    result[0][2] = a[0][2];
    result[1][0] = a[1][0];
    result[1][1] = a[1][1];
    result[1][2] = a[1][2];
    result[2][0] = a[2][0];
    result[2][1] = a[2][1];
    result[2][2] = a[2][2];
}

// Graphic functions
void ortho(float **result, float left, float right, float bottom, float top, float near, float far)
{
    result[0][0] = 2.0f / (right - left);
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = 2.0f / (top - bottom);
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = -2.0f / (far - near);
    result[2][3] = 0.0f;
    result[3][0] = -(right + left) / (right - left);
    result[3][1] = -(top + bottom) / (top - bottom);
    result[3][2] = -(far + near) / (far - near);
    result[3][3] = 1.0f;
}

void frustum(float **result, float left, float right, float bottom, float top, float near, float far)
{
    result[0][0] = 2.0f * near / (right - left);
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = 2.0f * near / (top - bottom);
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = (right + left) / (right - left);
    result[2][1] = (top + bottom) / (top - bottom);
    result[2][2] = -(far + near) / (far - near);
    result[2][3] = -1.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = -2.0f * far * near / (far - near);
    result[3][3] = 0.0f;
}

void perspective(float **result, float fovy, float aspect, float near, float far)
{
    float f = 1.0f / tan(fovy * 0.5f);
    result[0][0] = f / aspect;
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = f;
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = (far + near) / (near - far);
    result[2][3] = -1.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 2.0f * far * near / (near - far);
    result[3][3] = 0.0f;
}

void look_at(float **result, float *eye, float *center, float *up)
{
    float f[4] = {0.0f, 0.0f, 0.0f, 0.0f};
    float s[4] = {0.0f, 0.0f, 0.0f, 0.0f};
    float u[4] = {0.0f, 0.0f, 0.0f, 0.0f};
    float tmp[4] = {0.0f, 0.0f, 0.0f, 0.0f};

    tmp[0] = eye[0] - center[0];
    tmp[1] = eye[1] - center[1];
    tmp[2] = eye[2] - center[2];
    vec3_norm(f, tmp);

    cross(s, up, f);
    vec3_norm(s, s);

    cross(u, f, s);
    vec3_norm(u, u);

    result[0][0] = s[0];
    result[0][1] = u[0];
    result[0][2] = f[0];
    result[0][3] = 0.0f;
    result[1][0] = s[1];
    result[1][1] = u[1];
    result[1][2] = f[1];
    result[1][3] = 0.0f;
    result[2][0] = s[2];
    result[2][1] = u[2];
    result[2][2] = f[2];
    result[2][3] = 0.0f;
    result[3][0] = -vec3_dot(s, eye);
    result[3][1] = -vec3_dot(u, eye);
    result[3][2] = -vec3_dot(f, eye);
    result[3][3] = 1.0f;
}

void to_screen_space(float *result, float *point, float **projection, float **view, float width, float height)
{
    float point_v4[4] = {point[0], point[1], point[2], 1.0f};
    float tmp[4] = {0.0f, 0.0f, 0.0f, 0.0f};
    float clipSpacePos[4] = {0.0f, 0.0f, 0.0f, 0.0f};

    mat4_vec4_mul(tmp, view, point_v4);
    // printf("tmp: %f, %f, %f, %f\n", tmp[0], tmp[1], tmp[2], tmp[3]);

    mat4_vec4_mul(clipSpacePos, projection, tmp);

    // printf("clipSpacePos: %f, %f, %f, %f\n", clipSpacePos[0], clipSpacePos[1], clipSpacePos[2], clipSpacePos[3]);

    float ndcSpacePos[3] = {0.0f, 0.0f, 0.0f};
    ndcSpacePos[0] = clipSpacePos[0] / clipSpacePos[3];
    ndcSpacePos[1] = clipSpacePos[1] / clipSpacePos[3];
    ndcSpacePos[2] = clipSpacePos[2] / clipSpacePos[3];

    result[0] = (ndcSpacePos[0] + 1.0f) * 0.5f * width;
    result[1] = (ndcSpacePos[1] + 1.0f) * 0.5f * height;
}

// Transformations
void get_translation_mat4(float **result, float *v)
{
    result[0][0] = 1.0f;
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = v[0];
    result[1][0] = 0.0f;
    result[1][1] = 1.0f;
    result[1][2] = 0.0f;
    result[1][3] = v[1];
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = 1.0f;
    result[2][3] = v[2];
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void get_rotation_x_mat4(float **result, float angle)
{
    result[0][0] = 1.0f;
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = cos((angle));
    result[1][2] = -sin((angle));
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = sin((angle));
    result[2][2] = cos((angle));
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void get_rotation_y_mat4(float **result, float angle)
{
    result[0][0] = cos((angle));
    result[0][1] = 0.0f;
    result[0][2] = sin((angle));
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = 1.0f;
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = -sin((angle));
    result[2][1] = 0.0f;
    result[2][2] = cos((angle));
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void get_rotation_z_mat4(float **result, float angle)
{
    result[0][0] = cos((angle));
    result[0][1] = -sin((angle));
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = sin((angle));
    result[1][1] = cos((angle));
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = 1.0f;
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void get_scale_mat4(float **result, float *v)
{
    result[0][0] = v[0];
    result[0][1] = 0.0f;
    result[0][2] = 0.0f;
    result[0][3] = 0.0f;
    result[1][0] = 0.0f;
    result[1][1] = v[1];
    result[1][2] = 0.0f;
    result[1][3] = 0.0f;
    result[2][0] = 0.0f;
    result[2][1] = 0.0f;
    result[2][2] = v[2];
    result[2][3] = 0.0f;
    result[3][0] = 0.0f;
    result[3][1] = 0.0f;
    result[3][2] = 0.0f;
    result[3][3] = 1.0f;
}

void translate(float *result, float *point, float *displacement)
{
    float **translation = get_mat4();
    get_translation_mat4(translation, displacement);

    float point_vec4[4] = {point[0], point[1], point[2], 1.0f};

    mat4_vec4_mul(result, translation, point_vec4);

    free_mat4(translation);
}

void rotate_x(float *result, float *point, float angle)
{
    float **rotation = get_mat4();
    get_rotation_x_mat4(rotation, angle);

    float point_vec4[4] = {point[0], point[1], point[2], 1.0f};

    mat4_vec4_mul(result, rotation, point_vec4);

    free_mat4(rotation);
}

void rotate_y(float *result, float *point, float angle)
{
    float **rotation = get_mat4();
    get_rotation_y_mat4(rotation, angle);

    float point_vec4[4] = {point[0], point[1], point[2], 1.0f};

    mat4_vec4_mul(result, rotation, point_vec4);

    free_mat4(rotation);
}

void rotate_z(float *result, float *point, float angle)
{
    float **rotation = get_mat4();
    get_rotation_z_mat4(rotation, angle);

    float point_vec4[4] = {point[0], point[1], point[2], 1.0f};

    mat4_vec4_mul(result, rotation, point_vec4);

    free_mat4(rotation);
}

void scale(float *result, float *point, float *scale)
{
    float **scaling = get_mat4();
    get_scale_mat4(scaling, scale);

    float point_vec4[4] = {point[0], point[1], point[2], 1.0f};

    mat4_vec4_mul(result, scaling, point_vec4);

    free_mat4(scaling);
}