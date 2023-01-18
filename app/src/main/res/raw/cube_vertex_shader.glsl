#version 300 es
layout (location = 0) in vec3 aPos;

out vec4 uColor;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat4 mvp;
uniform vec4 vColor;

void main(){
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    uColor = vColor;
}