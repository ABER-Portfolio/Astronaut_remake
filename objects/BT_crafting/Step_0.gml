/// @description Insert description here
// You can write your code in this editor

var x_scale = (obj_camera.v_x/1280)/1.8
var y_scale = (obj_camera.v_y/720)/1.8
var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-510*x_scale
var yy = global._came_vy+camera_get_view_height(view_camera[0])
var yyy = camera_get_view_y(view_camera[0])

//var xxx = global._came_vx_p_w
//var yyy = global._came_vy_p_h

var box_size = 103

image_xscale = x_scale
image_yscale = y_scale

x = xx+(box_size*x_scale*11.2)
if global.ui_loc = 0
{
y = yy-(y_scale*box_size)
}
else
{
y = yyy+(y_scale*box_size)
}

depth = -room_width*3.008



if global.knocked_out != 0 || instance_number(pl_rocket) > 0
{
	if global.inv_open = 2
	{
	alarm[1] = 1
	esc_button_press = 0
	global.inv_open = 0
	}
}