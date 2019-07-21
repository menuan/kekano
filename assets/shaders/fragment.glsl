#version 450

// in
// This is a descriptor that contains a texture.
layout(set = 0, binding = 0) uniform sampler2D u_texture;

// This is a descriptor that contains a buffer.
layout(set = 0, binding = 1) uniform SomeStruct {
    int data[128];
} u_buffer;

layout(push_constant) uniform PushConstants {
    // This is a push constant.
    float opacity;
} push_constants;

layout(location = 0) in vec2 v_tex_coords;

// out
layout(location = 0) out vec4 f_output;

void main() {
    f_output.rgb = texture(u_texture, v_tex_coords).rgb;
    if (u_buffer.data[12] == 5) { f_output.rgb *= 2.0; }
    f_output.a = push_constants.opacity;
}

// #version 450
// layout(location = 0) out vec4 f_color;
// void main() {
//     f_color = vec4(0.75, 0.5, 0.25, 1.0);
// }