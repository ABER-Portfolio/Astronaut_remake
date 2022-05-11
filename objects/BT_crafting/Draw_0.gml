/// @description Insert description here
// You can write your code in this editor
if global.drawing_cancle_ui = 0 && global.inv_open != 2 && global.draw_minimap != 1
{
if global.chat_activity = false && global.playing_scene = 0
{
var x_scale = (obj_camera.v_x/1280)/1.8
var y_scale = (obj_camera.v_y/720)/1.8
var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-510*x_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
var yyy = camera_get_view_y(view_camera[0])

var box_size = 103

	if global.ui_loc = 0
	{
	draw_sprite_ext(sprite_index,0,xx+(box_size*x_scale*11.2),yy-(y_scale*box_size*0.8),x_scale*1.1,y_scale*1.1,0,c_white,0.65)
	draw_sprite_ext(sprite_index,3,xx+(box_size*x_scale*11.2),yy-(y_scale*box_size*0.8),x_scale*1.1,y_scale*1.1,0,c_white,1)
	}
	else
	{
	draw_sprite_ext(sprite_index,0,xx+(box_size*x_scale*11.2),yyy+(y_scale*box_size*0.8),x_scale*1.1,y_scale*1.1,0,c_white,0.65)
	draw_sprite_ext(sprite_index,3,xx+(box_size*x_scale*11.2),yyy+(y_scale*box_size*0.8),x_scale*1.1,y_scale*1.1,0,c_white,1)
	}
}
}
