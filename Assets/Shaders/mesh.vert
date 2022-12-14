#version 450

layout (location = 0) in vec3 vPosition;
layout (location = 1) in vec3 vNormal;
layout (location = 2) in vec3 vColor;

layout (location = 0) out vec3 fColor;

layout(push_constant) uniform constants
{
	vec4 data;
	mat4 modelViewProj;
} pc;

void main()
{
	gl_Position = pc.modelViewProj * vec4(vPosition, 1.0);
	fColor = vColor;
}