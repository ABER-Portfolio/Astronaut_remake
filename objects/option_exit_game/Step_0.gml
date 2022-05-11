/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

//var text_scale = 25
//var shape_scale = 32
var text_space = 60
var first_text_space = 170


depth = -(room_width*5.12)


if x != xx+(obj_camera.v_x/1280)*484
{
x = xx+(obj_camera.v_x/1280)*484
}

if y != yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space)
{
y = yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space)
}


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


if pressed > 0
{
pressed++

	if pressed > 40
	{
	code.alarm[11] = 10
	co_op_code.alarm[6] = 250
	
	instance_destroy(option_parents)
	instance_destroy(BG_blind)
	
	//창 열려있음
	global.opening_menu = 0
	}
}
