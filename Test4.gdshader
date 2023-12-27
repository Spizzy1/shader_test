shader_type canvas_item;
uniform float acc : hint_range(0,1000, 0.1);
uniform float threshold : hint_range(0, 1, 0.05);
uniform float compensation : hint_range(0, 1, 0.005);
uniform float time_scale : hint_range(0,100, 1);
uniform float strength : hint_range(0, 1, 0.005);

float random (vec2 uv) {
    return fract(sin(dot(uv.xy,
        vec2(12.9898,78.233 * TIME))) *43758.5453123);
}

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	
	float dist = distance(UV, vec2(0.5,0.5));
	vec2 compare_point = (vec2(cos(dist*acc+TIME*time_scale), sin(dist*acc+TIME*time_scale)))*(dist/2.0) + vec2(0.5, 0.5);
	
	float dist2 = distance(compare_point, UV);
	if(dist2 <= threshold*dist/compensation){
		float rnd = random(UV);
		COLOR.rgb = vec3(rnd, rnd, rnd);
	}
	// Called for every pixel the material is visible on.
}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
