/// @description Insert description here
// You can write your code in this editor
var camera_xsize = obj_camera.v_x/1280

w_alpha += (0 - w_alpha)*0.083
original_scale = camera_xsize*4
scale_shake()


if y > t_y && aa > 0
{
vspeed = -aa
aa -= 0.5
}

if aa <= 0
{
aa = 0
gravity = 0
vspeed = 0
y += (t_y - y)*0.1
y += (mouse_y - y)*0.004
}
x += (t_x - x)*0.1
x += (mouse_x - x)*0.005


if opened_option > 0
{
	if instance_number(option_line_bar) <= 0
	{
	opened_option = 0
	alarm[0] = 85
	}
}