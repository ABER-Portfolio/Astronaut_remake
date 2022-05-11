/// @description Insert description here
// You can write your code in this editor

var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


w_alpha += (-0.01 - w_alpha)*0.1
x += (t_x - x)*0.1
y += (t_y - y)*0.1

y += (mouse_y - y)*0.004
x += (mouse_x - x)*0.005




image_xscale = camera_xsize*0.9
image_yscale = camera_ysize*0.85



if choosen = 1
{
	if keyboard_check(vk_control) && keyboard_check(ord("V"))
	{
		if clipboard_has_text()
		{
		text = clipboard_get_text();
		choosen = 0
		}
	}
}

if text = "0" || text = 0 || text = ""
{
text = ""
}


global.map_name[global.map_num] = text
if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}




depth = -room_width*5.01

if des = 1
{
image_alpha += (-0.1 - image_alpha)*0.1
	if image_alpha <= 0
	{
	instance_destroy()
	}
}