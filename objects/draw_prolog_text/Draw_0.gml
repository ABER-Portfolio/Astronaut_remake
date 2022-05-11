/// @description Insert description here
// You can write your code in this editor
var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38

var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-200*camera_ysize

depth = -9999999999




if des = 1
{
image_alpha -= 0.05

	if image_alpha <= 0
	{
	instance_destroy(self)
	}
}
else
{
	if image_alpha < 1
	{
	image_alpha += (1 - image_alpha)*0.1
	}
}


draw_text_kl_scale(xx,yy-24*camera_ysize,string(text[text_now]),640*camera_ysize,99999,image_alpha,c_white,0,0,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*25,(text_scale/shape_scale)*camera_ysize*0.0125*25,0)