/// @description Insert description here
// You can write your code in this editor
if (global.black_blind = 0 && global.playing_scene = 0 && obj_camera.scene_cancle_cooltime > 2) || instance_number(creating_maps) > 0
{
var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38

var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-160*camera_ysize

depth = -9999999999

var _text_width = string_length(text)

draw_set_color(c_black)
draw_set_alpha(image_alpha*0.6)
draw_rectangle(xx-70*camera_xsize-_text_width*5*camera_xsize,yy+camera_xsize*10,xx+70*camera_xsize+_text_width*5*camera_xsize,yy-55*camera_ysize,0)
draw_set_alpha(1)





if instance_number(draw_debug_text) = 1 || line <= 1
{
time ++
	if time < 240
	{
		if image_alpha < 1
		{
		image_alpha += (1 - image_alpha)*0.1
		}
	}
}

if time > 300
{
image_alpha -= 0.05

	if image_alpha <= 0
	{
	instance_destroy(self)
	}
}


draw_text_kl_scale(xx,yy-24*camera_ysize,string(text),48*camera_xsize,99999,image_alpha,c_white,0,0,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}