/// @description Insert description here
// You can write your code in this editor
var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38

var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+160*camera_ysize

depth = obj_camera.depth+1

for(var i = 0; i < 8; i ++)
{
draw_set_color(c_black)
draw_set_alpha(image_alpha*0.16)
draw_rectangle(xx,yy+i*3*camera_ysize,xx+camera_get_view_width(view_camera[0]),yy+150*camera_ysize-i*3*camera_ysize,0)
draw_set_alpha(1)
}





time ++
if time < 240
{
	if image_alpha < 1
	{
	image_alpha += 0.01
	}
}

if time > 300
{
image_alpha -= 0.01

	if image_alpha <= 0
	{
	instance_destroy()
	}
}


draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+50*camera_ysize,string(text),64,-1,image_alpha,c_white,0,0,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*40,(text_scale/shape_scale)*camera_ysize*0.0125*40,0)