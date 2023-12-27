shader_type canvas_item;

float random (vec2 uv) {
    return fract(sin(dot(uv.xy,
        vec2(12.9898,78.233 * TIME))) *43758.5453123);
}


void vertex() {
	// Called for every vertex the material is visible on.
}
float circle(vec2 pos, float radius){
	return smoothstep(0.3, 0.0, abs(length(pos)-radius));
}
void fragment() {
	int rnd = int(random(UV) > 0.5);
	
	if(circle(UV-0.5, abs(sin(TIME))) > 0.9){
		COLOR.rgb = vec3(float(rnd));
	}
	// Called for every pixel the material is visible on.
}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
