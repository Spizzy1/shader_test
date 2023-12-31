shader_type canvas_item;

void circle(){
	
}
float sq(float x){
	return x*x;
}
void fragment() {
	// Place fragment code here.
	float dist = distance(UV, vec2(0.5));
	float x = UV.x - 0.5;
	float y =UV.y - 0.5;
	float theta = atan(y,x);
	//if(0.2 < dist && dist < 0.3){
		//COLOR.rgb = vec3(COLOR.r, COLOR.g * dist * 2.0, COLOR.b);
	//}
	//COLOR.r /= 1.0-sq(2.0*sq(x)/(sq(x)+sq(y))-1.0);
	//COLOR.r *= 1.0/(abs(x*y))/100.0;
	//COLOR.r *= sq(x);
	if(dist < 1.0){
	COLOR.r *= 1.0/(sq(cos(1000.0*theta/2.0)));
	}
}
