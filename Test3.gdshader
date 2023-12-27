shader_type canvas_item;

void vertex() {

	// Called for every vertex the material is visible on.
}

void fragment() {
	int thing = 10;
	// Called for every pixel the material is visible on.
	vec3 avg = vec3(0);
	for(int y = -thing; y <= thing; y++)
	for(int x = -thing; x <= thing; x++){
		avg += texture(TEXTURE, UV+vec2(TEXTURE_PIXEL_SIZE.x*float(x), TEXTURE_PIXEL_SIZE.y*float(y))).rgb;
	}
	COLOR.rgb = avg/float(pow(float(thing)*2.0+float(1), 2.0));

}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
