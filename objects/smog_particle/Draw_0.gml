/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if global.smog = 1
{
	if in_biome < 1
	{
	in_biome += 0.02
	}
}
else
{
	if in_biome > 0
	{
	in_biome -= 0.02
	}
}


depth = -(room_width*3)



if in_biome > 0
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
var yyy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

alpha_t ++

if alpha_t > 100
{
alpha_t = 0
t_alpha_ ++
	if t_alpha_ > 1
	{
	t_alpha_ = 0
	}
}

alpha_ += (t_alpha_ - alpha_)*0.05


draw_set_color($FFE5E5E5)
draw_set_alpha(0.04+alpha_*in_biome*0.02)
draw_rectangle(xx-32,yy-32,xxx+32,yyy+32,false)
draw_set_alpha(1)
draw_set_color(c_white)
}