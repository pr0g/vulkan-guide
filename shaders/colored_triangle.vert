#version 450
#extension GL_ARB_separate_shader_objects : enable

out gl_PerVertex {
    vec4 gl_Position;
};

layout (location = 0) out vec3 outColor;

void main()
{
	//const array of positions for the triangle
	vec3 positions[3] = vec3[](
		vec3(1.0, 1.0, 0.0),
		vec3(-1.0,1.0, 0.0),
		vec3(0.0,-1.0, 0.0)
	);

	//const array of colors for the triangle
	vec3 colors[3] = vec3[](
		vec3(1.0, 0.0, 0.0), //red
		vec3(0.0, 1.0, 0.0), //green
		vec3(0.0, 0.0, 1.0)  //blue
	);

	//output the position of each vertex
	gl_Position = vec4(positions[gl_VertexIndex], 1.0);
	outColor = colors[gl_VertexIndex];
}
