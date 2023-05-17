#include "math3d.h"

/*
 *      Vector2 arithmetic functions
 */
vec2 vec2_add(const vec2 a, const vec2 b)
{
    vec2 c;
    c.x = a.x + b.x;
    c.y = a.y + b.y;
    return c;
}

vec2 vec2_sub(const vec2 a, const vec2 b)
{
    vec2 c;
    c.x = a.x - b.x;
    c.y = a.y - b.y;
    return c;
}

vec2 vec2_mul(const vec2 a, const vec2 b)
{
    vec2 c;
    c.x = a.x * b.x;
    c.y = a.y * b.y;
    return c;
}

vec2 vec2_div(const vec2 a, const vec2 b)
{
    vec2 c;
    c.x = a.x / b.x;
    c.y = a.y / b.y;
    return c;
}

vec2 vec2_scale(const vec2 a, float s)
{
    vec2 c;
    c.x = a.x * s;
    c.y = a.y * s;
    return c;
}

vec2 vec2_neg(const vec2 a)
{
    vec2 c;
    c.x = -a.x;
    c.y = -a.y;
    return c;
}

float vec2_dot(const vec2 a, const vec2 b)
{
    return a.x * b.x + a.y * b.y;
}

float vec2_mag(const vec2 a)
{
    return sqrtf(a.x * a.x + a.y * a.y);
}

float vec2_dist(const vec2 a, const vec2 b)
{
    return vec2_mag(vec2_sub(a, b));
}

vec2 vec2_norm(const vec2 a)
{
    float mag = vec2_mag(a);
    vec2 c;
    c.x = a.x / mag;
    c.y = a.y / mag;
    return c;
}

/*
 *      Vector3 arithmetic functions
 */
vec3 vec3_add(const vec3 a, const vec3 b)
{
    vec3 c;
    c.x = a.x + b.x;
    c.y = a.y + b.y;
    c.z = a.z + b.z;
    return c;
}

vec3 vec3_sub(const vec3 a, const vec3 b)
{
    vec3 c;
    c.x = a.x - b.x;
    c.y = a.y - b.y;
    c.z = a.z - b.z;
    return c;
}

vec3 vec3_mul(const vec3 a, const vec3 b)
{
    vec3 c;
    c.x = a.x * b.x;
    c.y = a.y * b.y;
    c.z = a.z * b.z;
    return c;
}

vec3 vec3_div(const vec3 a, const vec3 b)
{
    vec3 c;
    c.x = a.x / b.x;
    c.y = a.y / b.y;
    c.z = a.z / b.z;
    return c;
}

vec3 vec3_scale(const vec3 a, const float s)
{
    vec3 c;
    c.x = a.x * s;
    c.y = a.y * s;
    c.z = a.z * s;
    return c;
}

vec3 vec3_neg(const vec3 a)
{
    vec3 c;
    c.x = -a.x;
    c.y = -a.y;
    c.z = -a.z;
    return c;
}

float vec3_dot(const vec3 a, const vec3 b)
{
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

vec3 cross(const vec3 a, const vec3 b)
{
    vec3 c;
    c.x = a.y * b.z - a.z * b.y;
    c.y = a.z * b.x - a.x * b.z;
    c.z = a.x * b.y - a.y * b.x;
    return c;
}

float vec3_mag(const vec3 a)
{
    return sqrtf(a.x * a.x + a.y * a.y + a.z * a.z);
}

float vec3_dist(const vec3 a, const vec3 b)
{
    return vec3_mag(vec3_sub(a, b));
}

vec3 vec3_norm(const vec3 a)
{
    float mag = vec3_mag(a);
    vec3 c;
    c.x = a.x / mag;
    c.y = a.y / mag;
    c.z = a.z / mag;
    return c;
}

/*
 *      Vector4 arithmetic functions
 */
vec4 vec4_add(const vec4 a, const vec4 b)
{
    vec4 c;
    c.x = a.x + b.x;
    c.y = a.y + b.y;
    c.z = a.z + b.z;
    c.w = a.w + b.w;
    return c;
}

vec4 vec4_sub(const vec4 a, const vec4 b)
{
    vec4 c;
    c.x = a.x - b.x;
    c.y = a.y - b.y;
    c.z = a.z - b.z;
    c.w = a.w - b.w;
    return c;
}

vec4 vec4_mul(const vec4 a, const vec4 b)
{
    vec4 c;
    c.x = a.x * b.x;
    c.y = a.y * b.y;
    c.z = a.z * b.z;
    c.w = a.w * b.w;
    return c;
}

vec4 vec4_div(const vec4 a, const vec4 b)
{
    vec4 c;
    c.x = a.x / b.x;
    c.y = a.y / b.y;
    c.z = a.z / b.z;
    c.w = a.w / b.w;
    return c;
}

vec4 vec4_scale(const vec4 a, const float s)
{
    vec4 c;
    c.x = a.x * s;
    c.y = a.y * s;
    c.z = a.z * s;
    c.w = a.w * s;
    return c;
}

vec4 vec4_neg(const vec4 a)
{
    vec4 c;
    c.x = -a.x;
    c.y = -a.y;
    c.z = -a.z;
    c.w = -a.w;
    return c;
}

float vec4_dot(const vec4 a, const vec4 b)
{
    return a.x * b.x + a.y * b.y + a.z * b.z + a.w * b.w;
}

float vec4_mag(const vec4 a)
{
    return sqrtf(a.x * a.x + a.y * a.y + a.z * a.z + a.w * a.w);
}

float vec4_dist(const vec4 a, const vec4 b)
{
    return vec4_mag(vec4_sub(a, b));
}

vec4 vec4_norm(const vec4 a)
{
    float mag = vec4_mag(a);
    vec4 c;
    c.x = a.x / mag;
    c.y = a.y / mag;
    c.z = a.z / mag;
    c.w = a.w / mag;
    return c;
}

/*
 *      Matrix2 arithmetic functions
 */
mat2 mat2_add(const mat2 a, const mat2 b)
{
    mat2 c;
    c.m[0][0] = a.m[0][0] + b.m[0][0];
    c.m[0][1] = a.m[0][1] + b.m[0][1];
    c.m[1][0] = a.m[1][0] + b.m[1][0];
    c.m[1][1] = a.m[1][1] + b.m[1][1];
    return c;
}

mat2 mat2_sub(const mat2 a, const mat2 b)
{
    mat2 c;
    c.m[0][0] = a.m[0][0] - b.m[0][0];
    c.m[0][1] = a.m[0][1] - b.m[0][1];
    c.m[1][0] = a.m[1][0] - b.m[1][0];
    c.m[1][1] = a.m[1][1] - b.m[1][1];
    return c;
}

mat2 mat2_mul(const mat2 a, const mat2 b)
{
    mat2 c;
    c.m[0][0] = a.m[0][0] * b.m[0][0] + a.m[0][1] * b.m[1][0];
    c.m[0][1] = a.m[0][0] * b.m[0][1] + a.m[0][1] * b.m[1][1];
    c.m[1][0] = a.m[1][0] * b.m[0][0] + a.m[1][1] * b.m[1][0];
    c.m[1][1] = a.m[1][0] * b.m[0][1] + a.m[1][1] * b.m[1][1];

    return c;
}

mat2 mat2_scale(const mat2 a, const float s)
{
    mat2 c;
    c.m[0][0] = a.m[0][0] * s;
    c.m[0][1] = a.m[0][1] * s;
    c.m[1][0] = a.m[1][0] * s;
    c.m[1][1] = a.m[1][1] * s;
    return c;
}

vec2 mat2_vec2_mul(const mat2 a, const vec2 b)
{
    vec2 c;
    c.x = a.m[0][0] * b.x + a.m[0][1] * b.y;
    c.y = a.m[1][0] * b.x + a.m[1][1] * b.y;
    return c;
}

mat3 mat3_add(const mat3 a, const mat3 b)
{
    mat3 c;
    c.m[0][0] = a.m[0][0] + b.m[0][0];
    c.m[0][1] = a.m[0][1] + b.m[0][1];
    c.m[0][2] = a.m[0][2] + b.m[0][2];
    c.m[1][0] = a.m[1][0] + b.m[1][0];
    c.m[1][1] = a.m[1][1] + b.m[1][1];
    c.m[1][2] = a.m[1][2] + b.m[1][2];
    c.m[2][0] = a.m[2][0] + b.m[2][0];
    c.m[2][1] = a.m[2][1] + b.m[2][1];
    c.m[2][2] = a.m[2][2] + b.m[2][2];
    return c;
}

mat3 mat3_sub(const mat3 a, const mat3 b)
{
    mat3 c;
    c.m[0][0] = a.m[0][0] - b.m[0][0];
    c.m[0][1] = a.m[0][1] - b.m[0][1];
    c.m[0][2] = a.m[0][2] - b.m[0][2];
    c.m[1][0] = a.m[1][0] - b.m[1][0];
    c.m[1][1] = a.m[1][1] - b.m[1][1];
    c.m[1][2] = a.m[1][2] - b.m[1][2];
    c.m[2][0] = a.m[2][0] - b.m[2][0];
    c.m[2][1] = a.m[2][1] - b.m[2][1];
    c.m[2][2] = a.m[2][2] - b.m[2][2];
    return c;
}

mat3 mat3_mul(const mat3 a, const mat3 b)
{
    mat3 c;
    c.m[0][0] = a.m[0][0] * b.m[0][0] + a.m[0][1] * b.m[1][0] + a.m[0][2] * b.m[2][0];
    c.m[0][1] = a.m[0][0] * b.m[0][1] + a.m[0][1] * b.m[1][1] + a.m[0][2] * b.m[2][1];
    c.m[0][2] = a.m[0][0] * b.m[0][2] + a.m[0][1] * b.m[1][2] + a.m[0][2] * b.m[2][2];
    c.m[1][0] = a.m[1][0] * b.m[0][0] + a.m[1][1] * b.m[1][0] + a.m[1][2] * b.m[2][0];
    c.m[1][1] = a.m[1][0] * b.m[0][1] + a.m[1][1] * b.m[1][1] + a.m[1][2] * b.m[2][1];
    c.m[1][2] = a.m[1][0] * b.m[0][2] + a.m[1][1] * b.m[1][2] + a.m[1][2] * b.m[2][2];
    c.m[2][0] = a.m[2][0] * b.m[0][0] + a.m[2][1] * b.m[1][0] + a.m[2][2] * b.m[2][0];
    c.m[2][1] = a.m[2][0] * b.m[0][1] + a.m[2][1] * b.m[1][1] + a.m[2][2] * b.m[2][1];
    c.m[2][2] = a.m[2][0] * b.m[0][2] + a.m[2][1] * b.m[1][2] + a.m[2][2] * b.m[2][2];
    return c;
}

mat3 mat3_scale(const mat3 a, const float s)
{
    mat3 c;
    c.m[0][0] = a.m[0][0] * s;
    c.m[0][1] = a.m[0][1] * s;
    c.m[0][2] = a.m[0][2] * s;
    c.m[1][0] = a.m[1][0] * s;
    c.m[1][1] = a.m[1][1] * s;
    c.m[1][2] = a.m[1][2] * s;
    c.m[2][0] = a.m[2][0] * s;
    c.m[2][1] = a.m[2][1] * s;
    c.m[2][2] = a.m[2][2] * s;
    return c;
}

vec3 mat3_vec3_mul(const mat3 a, const vec3 b)
{
    vec3 c;
    c.x = a.m[0][0] * b.x + a.m[0][1] * b.y + a.m[0][2] * b.z;
    c.y = a.m[1][0] * b.x + a.m[1][1] * b.y + a.m[1][2] * b.z;
    c.z = a.m[2][0] * b.x + a.m[2][1] * b.y + a.m[2][2] * b.z;
    return c;
}

mat4 mat4_add(const mat4 a, const mat4 b)
{
    mat4 c;
    c.m[0][0] = a.m[0][0] + b.m[0][0];
    c.m[0][1] = a.m[0][1] + b.m[0][1];
    c.m[0][2] = a.m[0][2] + b.m[0][2];
    c.m[0][3] = a.m[0][3] + b.m[0][3];
    c.m[1][0] = a.m[1][0] + b.m[1][0];
    c.m[1][1] = a.m[1][1] + b.m[1][1];
    c.m[1][2] = a.m[1][2] + b.m[1][2];
    c.m[1][3] = a.m[1][3] + b.m[1][3];
    c.m[2][0] = a.m[2][0] + b.m[2][0];
    c.m[2][1] = a.m[2][1] + b.m[2][1];
    c.m[2][2] = a.m[2][2] + b.m[2][2];
    c.m[2][3] = a.m[2][3] + b.m[2][3];
    c.m[3][0] = a.m[3][0] + b.m[3][0];
    c.m[3][1] = a.m[3][1] + b.m[3][1];
    c.m[3][2] = a.m[3][2] + b.m[3][2];
    c.m[3][3] = a.m[3][3] + b.m[3][3];
    return c;
}

mat4 mat4_sub(const mat4 a, const mat4 b)
{
    mat4 c;
    c.m[0][0] = a.m[0][0] - b.m[0][0];
    c.m[0][1] = a.m[0][1] - b.m[0][1];
    c.m[0][2] = a.m[0][2] - b.m[0][2];
    c.m[0][3] = a.m[0][3] - b.m[0][3];
    c.m[1][0] = a.m[1][0] - b.m[1][0];
    c.m[1][1] = a.m[1][1] - b.m[1][1];
    c.m[1][2] = a.m[1][2] - b.m[1][2];
    c.m[1][3] = a.m[1][3] - b.m[1][3];
    c.m[2][0] = a.m[2][0] - b.m[2][0];
    c.m[2][1] = a.m[2][1] - b.m[2][1];
    c.m[2][2] = a.m[2][2] - b.m[2][2];
    c.m[2][3] = a.m[2][3] - b.m[2][3];
    c.m[3][0] = a.m[3][0] - b.m[3][0];
    c.m[3][1] = a.m[3][1] - b.m[3][1];
    c.m[3][2] = a.m[3][2] - b.m[3][2];
    c.m[3][3] = a.m[3][3] - b.m[3][3];
    return c;
}

mat4 mat4_mul(const mat4 a, const mat4 b)
{
    mat4 c;
    c.m[0][0] = a.m[0][0] * b.m[0][0] + a.m[0][1] * b.m[1][0] + a.m[0][2] * b.m[2][0] + a.m[0][3] * b.m[3][0];
    c.m[0][1] = a.m[0][0] * b.m[0][1] + a.m[0][1] * b.m[1][1] + a.m[0][2] * b.m[2][1] + a.m[0][3] * b.m[3][1];
    c.m[0][2] = a.m[0][0] * b.m[0][2] + a.m[0][1] * b.m[1][2] + a.m[0][2] * b.m[2][2] + a.m[0][3] * b.m[3][2];
    c.m[0][3] = a.m[0][0] * b.m[0][3] + a.m[0][1] * b.m[1][3] + a.m[0][2] * b.m[2][3] + a.m[0][3] * b.m[3][3];
    c.m[1][0] = a.m[1][0] * b.m[0][0] + a.m[1][1] * b.m[1][0] + a.m[1][2] * b.m[2][0] + a.m[1][3] * b.m[3][0];
    c.m[1][1] = a.m[1][0] * b.m[0][1] + a.m[1][1] * b.m[1][1] + a.m[1][2] * b.m[2][1] + a.m[1][3] * b.m[3][1];
    c.m[1][2] = a.m[1][0] * b.m[0][2] + a.m[1][1] * b.m[1][2] + a.m[1][2] * b.m[2][2] + a.m[1][3] * b.m[3][2];
    c.m[1][3] = a.m[1][0] * b.m[0][3] + a.m[1][1] * b.m[1][3] + a.m[1][2] * b.m[2][3] + a.m[1][3] * b.m[3][3];
    c.m[2][0] = a.m[2][0] * b.m[0][0] + a.m[2][1] * b.m[1][0] + a.m[2][2] * b.m[2][0] + a.m[2][3] * b.m[3][0];
    c.m[2][1] = a.m[2][0] * b.m[0][1] + a.m[2][1] * b.m[1][1] + a.m[2][2] * b.m[2][1] + a.m[2][3] * b.m[3][1];
    c.m[2][2] = a.m[2][0] * b.m[0][2] + a.m[2][1] * b.m[1][2] + a.m[2][2] * b.m[2][2] + a.m[2][3] * b.m[3][2];
    c.m[2][3] = a.m[2][0] * b.m[0][3] + a.m[2][1] * b.m[1][3] + a.m[2][2] * b.m[2][3] + a.m[2][3] * b.m[3][3];
    c.m[3][0] = a.m[3][0] * b.m[0][0] + a.m[3][1] * b.m[1][0] + a.m[3][2] * b.m[2][0] + a.m[3][3] * b.m[3][0];
    c.m[3][1] = a.m[3][0] * b.m[0][1] + a.m[3][1] * b.m[1][1] + a.m[3][2] * b.m[2][1] + a.m[3][3] * b.m[3][1];
    c.m[3][2] = a.m[3][0] * b.m[0][2] + a.m[3][1] * b.m[1][2] + a.m[3][2] * b.m[2][2] + a.m[3][3] * b.m[3][2];
    c.m[3][3] = a.m[3][0] * b.m[0][3] + a.m[3][1] * b.m[1][3] + a.m[3][2] * b.m[2][3] + a.m[3][3] * b.m[3][3];
    return c;
}

vec4 mat4_vec4_mul(const mat4 a, const vec4 b)
{
    vec4 c;
    c.x = a.m[0][0] * b.x + a.m[0][1] * b.y + a.m[0][2] * b.z + a.m[0][3] * b.w;
    c.y = a.m[1][0] * b.x + a.m[1][1] * b.y + a.m[1][2] * b.z + a.m[1][3] * b.w;
    c.z = a.m[2][0] * b.x + a.m[2][1] * b.y + a.m[2][2] * b.z + a.m[2][3] * b.w;
    c.w = a.m[3][0] * b.x + a.m[3][1] * b.y + a.m[3][2] * b.z + a.m[3][3] * b.w;
    return c;
}

/*
 *     Type conversion
 */
vec2 vec3_to_vec2(const vec3 a)
{
    vec2 c;
    c.x = a.x;
    c.y = a.y;
    return c;
}

vec2 vec4_to_vec2(const vec4 a)
{
    vec2 c;
    c.x = a.x;
    c.y = a.y;
    return c;
}

vec3 vec2_to_vec3(const vec2 a, const float z)
{
    vec3 c;
    c.x = a.x;
    c.y = a.y;
    c.z = z;
    return c;
}

vec3 vec4_to_vec3(const vec4 a)
{
    vec3 c;
    c.x = a.x;
    c.y = a.y;
    c.z = a.z;
    return c;
}

vec4 vec2_to_vec4(const vec2 a, const float z, const float w)
{
    vec4 c;
    c.x = a.x;
    c.y = a.y;
    c.z = z;
    c.w = w;
    return c;
}

vec4 vec3_to_vec4(const vec3 a, const float w)
{
    vec4 c;
    c.x = a.x;
    c.y = a.y;
    c.z = a.z;
    c.w = w;
    return c;
}

mat2 mat3_to_mat2(const mat3 a)
{
    mat2 c;
    c.m[0][0] = a.m[0][0];
    c.m[0][1] = a.m[0][1];
    c.m[1][0] = a.m[1][0];
    c.m[1][1] = a.m[1][1];
    return c;
}

mat2 mat4_to_mat2(const mat4 a)
{
    mat2 c;
    c.m[0][0] = a.m[0][0];
    c.m[0][1] = a.m[0][1];
    c.m[1][0] = a.m[1][0];
    c.m[1][1] = a.m[1][1];
    return c;
}

mat3 mat2_to_mat3(const mat2 a)
{
    mat3 c;
    c.m[0][0] = a.m[0][0];
    c.m[0][1] = a.m[0][1];
    c.m[1][0] = a.m[1][0];
    c.m[1][1] = a.m[1][1];
    return c;
}

mat3 mat4_to_mat3(const mat4 a)
{
    mat3 c;
    c.m[0][0] = a.m[0][0];
    c.m[0][1] = a.m[0][1];
    c.m[0][2] = a.m[0][2];
    c.m[1][0] = a.m[1][0];
    c.m[1][1] = a.m[1][1];
    c.m[1][2] = a.m[1][2];
    c.m[2][0] = a.m[2][0];
    c.m[2][1] = a.m[2][1];
    c.m[2][2] = a.m[2][2];
    return c;
}

mat4 mat2_to_mat4(const mat2 a)
{
    mat4 c;
    c.m[0][0] = a.m[0][0];
    c.m[0][1] = a.m[0][1];
    c.m[1][0] = a.m[1][0];
    c.m[1][1] = a.m[1][1];
    return c;
}

mat4 mat3_to_mat4(const mat3 a)
{
    mat4 c;
    c.m[0][0] = a.m[0][0];
    c.m[0][1] = a.m[0][1];
    c.m[0][2] = a.m[0][2];
    c.m[1][0] = a.m[1][0];
    c.m[1][1] = a.m[1][1];
    c.m[1][2] = a.m[1][2];
    c.m[2][0] = a.m[2][0];
    c.m[2][1] = a.m[2][1];
    c.m[2][2] = a.m[2][2];
    return c;
}

/*
 *      Graphic functions
 */
mat4 ortho(float left, float right, float bottom, float top, float near, float far)
{
    mat4 c;
    c.m[0][0] = 2.0f / (right - left);
    c.m[0][1] = 0.0f;
    c.m[0][2] = 0.0f;
    c.m[0][3] = 0.0f;
    c.m[1][0] = 0.0f;
    c.m[1][1] = 2.0f / (top - bottom);
    c.m[1][2] = 0.0f;
    c.m[1][3] = 0.0f;
    c.m[2][0] = 0.0f;
    c.m[2][1] = 0.0f;
    c.m[2][2] = -2.0f / (far - near);
    c.m[2][3] = 0.0f;
    c.m[3][0] = -(right + left) / (right - left);
    c.m[3][1] = -(top + bottom) / (top - bottom);
    c.m[3][2] = -(far + near) / (far - near);
    c.m[3][3] = 1.0f;
    return c;
}

mat4 perspective(float fov, float aspect, float near, float far)
{
    mat4 c;
    float tanHalfFovy = tan(fov / 2.0f);
    c.m[0][0] = 1.0f / (aspect * tanHalfFovy);
    c.m[0][1] = 0.0f;
    c.m[0][2] = 0.0f;
    c.m[0][3] = 0.0f;
    c.m[1][0] = 0.0f;
    c.m[1][1] = 1.0f / (tanHalfFovy);
    c.m[1][2] = 0.0f;
    c.m[1][3] = 0.0f;
    c.m[2][0] = 0.0f;
    c.m[2][1] = 0.0f;
    c.m[2][2] = -(far + near) / (far - near);
    c.m[2][3] = -1.0f;
    c.m[3][0] = 0.0f;
    c.m[3][1] = 0.0f;
    c.m[3][2] = -(2.0f * far * near) / (far - near);
    c.m[3][3] = 0.0f;
    return c;
}

mat4 look_at(vec3 eye, vec3 center, vec3 up)
{
    mat4 c;
    vec3 f = vec3_norm(vec3_sub(center, eye));
    vec3 s = vec3_norm(cross(f, up));
    vec3 u = cross(s, f);
    c.m[0][0] = s.x;
    c.m[0][1] = u.x;
    c.m[0][2] = -f.x;
    c.m[0][3] = 0.0f;
    c.m[1][0] = s.y;
    c.m[1][1] = u.y;
    c.m[1][2] = -f.y;
    c.m[1][3] = 0.0f;
    c.m[2][0] = s.z;
    c.m[2][1] = u.z;
    c.m[2][2] = -f.z;
    c.m[2][3] = 0.0f;
    c.m[3][0] = -vec3_dot(s, eye);
    c.m[3][1] = -vec3_dot(u, eye);
    c.m[3][2] = vec3_dot(f, eye);
    c.m[3][3] = 1.0f;
    return c;
}

/*
 *      Transformation functions
 */
mat4 get_translation_mat4(vec3 v)
{
    mat4 c = MAT4_IDENTITY;
    c.m[3][0] = v.x;
    c.m[3][1] = v.y;
    c.m[3][2] = v.z;
    return c;
}