/// @description Insert description here
// You can write your code in this editor
var xx__ = camera_get_view_x(view_camera[0])
var yy__ = camera_get_view_y(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])
var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720

var _draw_x = xx__+_xxx-camera_xscale*40
if global.draw_minimap = 0
{
var _draw_y = yy__+camera_xscale*(45+170+96)
}
else
{
var _draw_y = yy__+camera_xscale*(22+27+96)
}

x = _draw_x
y = _draw_y
image_xscale = camera_xscale
image_yscale = camera_xscale

depth = -room_width*3.1


if global.got_message > 0
{
messgae_alarm_index = 2
effect_scale += (1 - effect_scale)*0.05
effect_scale_time ++
	if effect_scale_time > 70
	{
	effect_scale = 1.1
	effect_scale_time = 0
	}
}
else
{
messgae_alarm_index = 0
effect_scale = 1
}