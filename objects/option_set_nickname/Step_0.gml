/// @description Insert description here
// You can write your code in this editor
var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

//var text_scale = 25
//var shape_scale = 32


depth = -(room_width*5.12)

if pressed = 1
{
	if keyboard_check(vk_control) && keyboard_check(ord("V"))
	{
		if clipboard_has_text()
		{
		text = clipboard_get_text();
		pressed = 0
		}
	}
}

x += (t_x - x)*0.1
y += (t_y - y)*0.1
y += (mouse_y - y)*0.004
x += (mouse_x - x)*0.005


image_xscale = camera_xsize*0.6
image_yscale = camera_ysize*0.53


if pressed = 0
{
image_alpha += (0.5 - image_alpha)*0.2
}
else
{
image_alpha += (0.2 - image_alpha)*0.2
text = keyboard_string
}