#version 410 core
#extension GL_ARB_gpu_shader_fp64 : enable

uniform float scale;
uniform vec2 position;


in vec2 in_pos;

out vs_output
{
    vec2 pos;
} v_out;


void main()
{
    gl_Position = vec4(in_pos, 0, 1);
    v_out.pos = in_pos * scale + position;
}
