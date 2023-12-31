shader_type canvas_item;

float sq(float x){
	return x*x;
}

void fragment() {
	float x = UV.x - 0.5;
	float y = UV.y - 0.5;
	vec2 xy = vec2(x,y);
	COLOR.r *= 1.0+1.0/(sq(sq(x)+sq(y))*sq(cos(9.0*atan(x,y)/2.0)))/1000.0;
}
