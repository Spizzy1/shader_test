shader_type canvas_item;



void vertex() {
    // Called for every vertex the material is visible on.
}

void fragment() {
    // Called for every pixel the material is visible on.
    
    vec4 rgb = COLOR;
    float average = (rgb.r + rgb.b + rgb.g)/3.0;
    average /= 1.0;
    COLOR = vec4(vec3(average), COLOR.a);
    //COLOR = texture(TEXTURE, UV);
    
    
}

void light() {
    float str = LIGHT_COLOR.a;
    
    LIGHT = (texture(TEXTURE, UV) - vec4(COLOR.rgb, 0))*min(1.0, str*3.0);
    
    
    
    // Called for every pixel for every light affecting the CanvasItem.
    // Uncomment to replace the default light processing function with this one.
}