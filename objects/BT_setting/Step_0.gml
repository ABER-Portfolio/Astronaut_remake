/// @description Insert description here
// You can write your code in this editor


if can_press = 0
{
	if a = 11 && keyboard_check_pressed(vk_escape)
	{
	var sf_ef = audio_play_sound(rd_1,1,false)
	audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.7,0)
	
	
	room_goto(title_room)
	global.server_open = false
	global.co_op_mode = 0
	instance_destroy(BT_setting)
	}
}





if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = (window_get_height()/(720*(global.mobile+1)))

var camera_xscale = (obj_camera.v_x/1280)*win_wid
var camera_yscale = (obj_camera.v_y/720)*win_hei

depth = -room_width*5.01
if place_meeting(x,y,obj_mouse)
{
	if color != c_yellow
	{
	color = c_yellow
	t_text_scale = 0.9
	var sound = audio_play_sound(rd_0,1,false)
	audio_sound_pitch(sound,1)
	audio_sound_gain(sound,0.7*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}
else
{
	if color != c_gray
	{
	color = c_gray
	t_text_scale = 0.75
	}
}


if des = 0
{
	if (a != 11 && a != 12)
	{
	x = 640*camera_xscale
	}
	else
	{
		if instance_number(BT_setting) > 2
		{
		x = 640*camera_xscale
		}
		else
		{
		x = 640
		}
	}
image_alpha += (1 - image_alpha)*0.1
}
else
{
image_alpha += (-0.1 - image_alpha)*0.1
}
text_scale += (t_text_scale - text_scale)*0.1


image_xscale = 8*string_length(text)*camera_xscale/win_wid
image_yscale = 40*0.5*camera_yscale/win_hei



////////////////////////////////////////////////////////////////
	if a = 0
	{
		if b = 0
		{
		global.room_size = 5760
		}
	
		if b = 1
		{
		global.room_size = 6400
		}
		
		if b = 2
		{
		global.room_size = 7040
		}
		
		if b = 3
		{
		global.room_size = 7680
		}
		
		if b = 4
		{
		global.room_size = 5120
		}
	}


	if a = 1
	{
		if b = 0
		{
		global.island_size = -4
		}
	
		if b = 1
		{
		global.island_size = 0
		}
		
		if b = 2
		{
		global.island_size = 4
		}
	}

