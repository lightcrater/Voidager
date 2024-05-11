shader_type canvas_item;

uniform float alpha_value : hint_range(0, 1);
uniform bool enable_shader;

void fragment() {
    if (enable_shader) {
        COLOR = vec4(0.0, 0.0, 1.0, alpha_value);
    } else {
        COLOR = texture(TEXTURE, UV);
    }
}