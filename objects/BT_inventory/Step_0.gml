/// @description Insert description here
// You can write your code in this editor
accessory_effect()

var x_scale = (obj_camera.v_x/1280)/1.8
var y_scale = (obj_camera.v_y/720)/1.8
var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-515*x_scale
var yy = global._came_vy+camera_get_view_height(view_camera[0])
var yyy = global._came_vy

var box_size = 103

image_xscale = x_scale
image_yscale = y_scale

x = xx+(box_size*x_scale*10.1)
if global.ui_loc = 0
{
y = yy-(y_scale*box_size)
}
else
{
y = yyy+(y_scale*box_size)
}

depth = -room_width*3.008

if instance_number(option_line_bar) > 0
{
	if instance_number(BG_blind) = 0
	{
	bli = instance_create(0,0,BG_blind)
	}
}





if global.knocked_out != 0 || instance_number(creating_maps) > 0
{
	if global.inv_open = 1
	{
	alarm[1] = 1
	esc_button_press = 0
	global.inv_open = 0
	}
}