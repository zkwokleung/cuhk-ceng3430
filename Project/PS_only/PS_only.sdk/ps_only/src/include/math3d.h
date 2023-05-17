#ifndef MATH3D
#define MATH3D

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

/*
 *      Float type definition
 */
typedef struct vec2_s
{
    float x, y;
} vec2;

typedef struct vec3_s
{
    float x, y, z;
} vec3;

typedef struct vec4_s
{
    float x, y, z, w;
} vec4;

typedef struct mat2_s
{
    float m[2][2];
} mat2;

typedef struct mat3_s
{
    float m[3][3];
} mat3;

typedef struct mat4_s
{
    float m[4][4];
} mat4;

/*
 *      Vector constants
 */
vec2 VEC2_ZERO = {0.0f, 0.0f};
vec2 VEC2_ONE = {1.0f, 1.0f};
vec2 VEC2_UP = {0.0f, 1.0f};
vec2 VEC2_DOWN = {0.0f, -1.0f};
vec2 VEC2_LEFT = {-1.0f, 0.0f};
vec2 VEC2_RIGHT = {1.0f, 0.0f};

vec3 VEC3_ZERO = {0.0f, 0.0f, 0.0f};
vec3 VEC3_ONE = {1.0f, 1.0f, 1.0f};
vec3 VEC3_UP = {0.0f, 1.0f, 0.0f};
vec3 VEC3_DOWN = {0.0f, -1.0f, 0.0f};
vec3 VEC3_LEFT = {-1.0f, 0.0f, 0.0f};
vec3 VEC3_RIGHT = {1.0f, 0.0f, 0.0f};
vec3 VEC3_FORWARD = {0.0f, 0.0f, 1.0f};
vec3 VEC3_BACKWARD = {0.0f, 0.0f, -1.0f};

vec4 VEC4_ZERO = {0.0f, 0.0f, 0.0f, 0.0f};
vec4 VEC4_ONE = {1.0f, 1.0f, 1.0f, 1.0f};

/*
 *      Matrix constants
 */
#define MAT2_ZERO                                                                                                      \
    (mat2)                                                                                                             \
    {                                                                                                                  \
        .m = { {0.0f, 0.0f}, {0.0f, 0.0f} }                                                                            \
    }

#define MAT2_IDENTITY                                                                                                  \
    (mat2)                                                                                                             \
    {                                                                                                                  \
        .m = { {1.0f, 0.0f}, {0.0f, 1.0f} }                                                                            \
    }

#define MAT3_ZERO                                                                                                      \
    (mat3)                                                                                                             \
    {                                                                                                                  \
        .m = { {0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f} }                                            \
    }

#define MAT3_IDENTITY                                                                                                  \
    (mat3)                                                                                                             \
    {                                                                                                                  \
        .m = { {1.0f, 0.0f, 0.0f}, {0.0f, 1.0f, 0.0f}, {0.0f, 0.0f, 1.0f} }                                            \
    }

#define MAT4_ZERO                                                                                                      \
    (mat4)                                                                                                             \
    {                                                                                                                  \
        .m = {                                                                                                         \
            {0.0f, 0.0f, 0.0f, 0.0f},                                                                                  \
            {0.0f, 0.0f, 0.0f, 0.0f},                                                                                  \
            {0.0f, 0.0f, 0.0f, 0.0f},                                                                                  \
            {0.0f, 0.0f, 0.0f, 0.0f}                                                                                   \
        }                                                                                                              \
    }

#define MAT4_IDENTITY                                                                                                  \
    (mat4)                                                                                                             \
    {                                                                                                                  \
        {                                                                                                              \
            {                                                                                                          \
                {{1.0f, 0.0f, 0.0f, 0.0f}}, {{0.0f, 1.0f, 0.0f, 0.0f}}, {{0.0f, 0.0f, 1.0f, 0.0f}},                    \
                {                                                                                                      \
                    {                                                                                                  \
                        0.0f, 0.0f, 0.0f, 1.0f                                                                         \
                    }                                                                                                  \
                }                                                                                                      \
            }                                                                                                          \
        }                                                                                                              \
    }

/*
 *      Vector arithmetic functions
 */
vec2 vec2_add(const vec2 a, const vec2 b);
vec3 vec3_add(const vec3 a, const vec3 b);
vec4 vec4_add(const vec4 a, const vec4 b);

vec2 vec2_sub(const vec2 a, const vec2 b);
vec3 vec3_sub(const vec3 a, const vec3 b);
vec4 vec4_sub(const vec4 a, const vec4 b);

vec2 vec2_mul(const vec2 a, const vec2 b);
vec3 vec3_mul(const vec3 a, const vec3 b);
vec4 vec4_mul(const vec4 a, const vec4 b);

vec2 vec2_div(const vec2 a, const vec2 b);
vec3 vec3_div(const vec3 a, const vec3 b);
vec4 vec4_div(const vec4 a, const vec4 b);

float vec2_dot(const vec2 a, const vec2 b);
float vec3_dot(const vec3 a, const vec3 b);
float vec4_dot(const vec4 a, const vec4 b);

vec2 vec2_scale(const vec2 a, float s);
vec3 vec3_scale(const vec3 a, float s);
vec4 vec4_scale(const vec4 a, float s);

vec2 vec2_neg(const vec2 a);
vec3 vec3_neg(const vec3 a);
vec4 vec4_neg(const vec4 a);

float vec2_mag(const vec2 a);
float vec3_mag(const vec3 a);
float vec4_mag(const vec4 a);

float vec2_dist(const vec2 a, const vec2 b);
float vec3_dist(const vec3 a, const vec3 b);
float vec4_dist(const vec4 a, const vec4 b);

vec2 vec2_norm(const vec2 a);
vec3 vec3_norm(const vec3 a);
vec4 vec4_norm(const vec4 a);

vec3 cross(const vec3 a, const vec3 b);

/*
 *     Matrix arithmetic functions
 */
mat2 mat2_add(const mat2 a, const mat2 b);
mat3 mat3_add(const mat3 a, const mat3 b);
mat4 mat4_add(const mat4 a, const mat4 b);

mat2 mat2_sub(const mat2 a, const mat2 b);
mat3 mat3_sub(const mat3 a, const mat3 b);
mat4 mat4_sub(const mat4 a, const mat4 b);

mat2 mat2_mul(const mat2 a, const mat2 b);
mat3 mat3_mul(const mat3 a, const mat3 b);
mat4 mat4_mul(const mat4 a, const mat4 b);

mat2 mat2_scale(const mat2 a, const float s);
mat3 mat3_scale(const mat3 a, const float s);
mat4 mat4_scale(const mat4 a, const float s);

/*
 *      Matrix vector functions
 */
vec2 mat2_vec2_mul(const mat2 a, const vec2 b);
vec3 mat3_vec3_mul(const mat3 a, const vec3 b);
vec4 mat4_vec4_mul(const mat4 a, const vec4 b);

/*
 *     Type conversion
 */
vec2 vec3_to_vec2(const vec3 a);
vec2 vec4_to_vec2(const vec4 a);

vec3 vec2_to_vec3(const vec2 a, const float z);
vec3 vec4_to_vec3(const vec4 a);

vec4 vec2_to_vec4(const vec2 a, const float z, const float w);
vec4 vec3_to_vec4(const vec3 a, const float w);

mat2 mat3_to_mat2(const mat3 a);
mat2 mat4_to_mat2(const mat4 a);

mat3 mat2_to_mat3(const mat2 a);
mat3 mat4_to_mat3(const mat4 a);

mat4 mat2_to_mat4(const mat2 a);
mat4 mat3_to_mat4(const mat3 a);

/*
 *      Graphic functions
 */
mat4 ortho(float left, float right, float bottom, float top, float near, float far);
mat4 perspective(float fov, float aspect, float near, float far);
mat4 look_at(vec3 eye, vec3 center, vec3 up);

/*
 *      Transformations
 */
mat4 get_translation_mat4(const vec3 v);
mat4 get_rotation_x_mat4(const vec3 v);
mat4 get_rotation_y_mat4(const vec3 v);
mat4 get_rotation_z_mat4(const vec3 v);

vec3 translate(const vec3 point, const vec3 displacement);
vec3 rotate_x(const vec3 point, const float angle);
vec3 rotate_y(const vec3 point, const float angle);
vec3 rotate_z(const vec3 point, const float angle);
vec3 scale(const vec3 point, const vec3 s);

#endif // MATH3D