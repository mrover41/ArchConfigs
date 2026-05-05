#version 320 es
precision mediump float;

in vec2 v_texcoord;
uniform sampler2D tex;

out vec4 fragColor;

void main() {
    vec4 pix = texture(tex, v_texcoord);

    float saturation = 1.0;
    float contrast = 1.05;
    
    vec3 color = pix.rgb;
    
    float gray = dot(color, vec3(0.299, 0.587, 0.114));
    color = mix(vec3(gray), color, saturation);
    
    color = (color - 0.5) * contrast + 0.5;

    fragColor = vec4(color, pix.a);
}
