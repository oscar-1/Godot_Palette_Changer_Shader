shader_type canvas_item;

uniform float tolerance : hint_range(0.0, 1.0, 0.001) = float(0.3);

uniform vec4 color1_old : hint_color = vec4(1.0);
uniform vec4 color1_new : hint_color = vec4(1.0);

uniform vec4 color2_old : hint_color = vec4(1.0);
uniform vec4 color2_new : hint_color = vec4(1.0);

uniform vec4 color3_old : hint_color = vec4(1.0);
uniform vec4 color3_new : hint_color = vec4(1.0);

uniform vec4 color4_old : hint_color = vec4(1.0);
uniform vec4 color4_new : hint_color = vec4(1.0);

uniform vec4 color5_old : hint_color = vec4(1.0);
uniform vec4 color5_new : hint_color = vec4(1.0);

uniform vec4 color6_old : hint_color = vec4(1.0);
uniform vec4 color6_new : hint_color = vec4(1.0);

uniform vec4 color7_old : hint_color = vec4(1.0);
uniform vec4 color7_new : hint_color = vec4(1.0);

uniform vec4 color8_old : hint_color = vec4(1.0);
uniform vec4 color8_new : hint_color = vec4(1.0);

void fragment() {

	vec4 color = texture(SCREEN_TEXTURE, SCREEN_UV);
	
	float tolerance2 = pow(tolerance, 5.0);					
						
	if (distance(color, color1_old) <= tolerance2) {
		COLOR = color1_new;
	}
	else if (distance(color, color2_old) <= tolerance2) {
		COLOR = color2_new;
	}
	else if (distance(color, color3_old) <= tolerance2) {
		COLOR = color3_new;
	}
	else if (distance(color, color4_old) <= tolerance2) {
		COLOR = color4_new;
	}
	else if (distance(color, color5_old) <= tolerance2) {
		COLOR = color5_new;
	}
	else if (distance(color, color6_old) <= tolerance2) {
		COLOR = color6_new;
	}
	else if (distance(color, color7_old) <= tolerance2) {
		COLOR = color7_new;
	}
	else if (distance(color, color8_old) <= tolerance2) {
		COLOR = color8_new;
	}						
	else {
		COLOR = color;
	}
}