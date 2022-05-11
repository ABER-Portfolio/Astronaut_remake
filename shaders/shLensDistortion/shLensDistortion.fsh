//
// Original code 
// https://www.shadertoy.com/view/4s2GRR
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_amount;

void main()
{

	vec2 p = v_vTexcoord;
	
	vec2 m = vec2(0.5, 0.5);
	vec2 d = p - m;
	float r = sqrt(dot(d, d));

	float power = ( 2.0 * 3.141592 / (2.0 * sqrt(dot(m, m))) ) * (u_amount - 0.5);

	float bind;
	if (power > 0.0) bind = sqrt(dot(m, m));
	else {bind = m.y;}

	vec2 uv;
	if (power > 0.0)
		uv = m + normalize(d) * tan(r * power) * bind / tan( bind * power);
	else if (power < 0.0)
		uv = m + normalize(d) * atan(r * -power * 10.0) * bind / atan(-power * bind * 10.0);
	else uv = p;

	gl_FragColor = texture2D(gm_BaseTexture, vec2(uv.x, uv.y)).xyzw;
	
}
