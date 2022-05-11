/// @description Insert description here
// You can write your code in this editor


var camera_xsize = obj_camera.v_x/1280


//var text_scale = 25
//var shape_scale = 32



if pressed = 0
{
global.room_size = 3200
}
	
if pressed = 1
{
global.room_size = 3840
}
		
if pressed = 2
{
global.room_size = 4480
}
		
if pressed = 3
{
global.room_size = 5120
}
		
if pressed = 4
{
global.room_size = 5760
}




depth = -(room_width*5.12)


x += (t_x - x)*0.1
y += (t_y - y)*0.1
y += (mouse_y - y)*0.004
x += (mouse_x - x)*0.005


original_scale = camera_xsize*0.5
scale_shake()
//if image_xscale != camera_xsize*0.5
//{
//image_xscale = camera_xsize*0.5
//}

//if image_yscale = camera_ysize*0.5
//{
//image_yscale = camera_ysize*0.5
//}
