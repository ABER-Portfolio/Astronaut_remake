/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

if room != ingame
{
x += (mouse_x - x)*0.002
y += (mouse_y - y)*0.002
}

depth = -room_width*8

if step < 2
{
x += (room_width*0.5 - x)*0.15
y += (room_height*0.5 - y)*0.15
}

if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = window_get_height()/(720*(global.mobile+1))

var camera_xscale = (obj_camera.v_x/1280)/win_wid
var camera_yscale = (obj_camera.v_y/720)/win_hei

if step = 0
{
image_alpha += 0.004
}

if image_alpha > 1 && step = 0
{
step = 1
}

///////////////////////////////////////////////////

if step = 1
{
	if instance_number(BT_title) = 0
	{
	alarm[2] = 60
	}
step = 2
}

if step >= 1
{
image_xscale += (0.2 - image_xscale)/15
image_yscale += (0.2 - image_yscale)/15
x += (xx+182.85 - x)/15
y += (yy+80 - y)/15
}






if instance_number(BT_title) > 0
{	
	if instance_number(BG_blind) = 0 && step >= 3
	{
		if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || (skiping_num > 0 && skiping_dir = 1)
		{
			if can_press > 0
			{
			var sf_ef = audio_play_sound(rd_0,0,false)
			audio_sound_gain(sf_ef,0.7*global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.select --
			can_press --
				with(BT_title)
				{
				t_x += 200/win_wid
				}
				
				if skiping_num > 0
				{
				skiping_num --
				}
			}
		}

		if keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || (skiping_num > 0 && skiping_dir = -1)
		{
			if can_press < max_can_press-1
			{
			var sf_ef = audio_play_sound(rd_0,0,false)
			audio_sound_gain(sf_ef,0.7*global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.select ++
			can_press ++
				with(BT_title)
				{
				t_x -= 200/win_wid
				}
				
				if skiping_num > 0
				{
				skiping_num --
				}
			}
		}
	}
}
else
{
	if step >= 3
	{
		if keyboard_check_pressed(ord("A")) || keyboard_check(vk_left) || (skiping_num > 0 && skiping_dir = 1)
		{
			if can_press > 0
			{
			var sf_ef = audio_play_sound(rd_0,0,false)
			audio_sound_gain(sf_ef,0.7*global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.select --
			can_press --
				with(select_map_button)
				{
				t_x += 200/win_wid
				}
				
				if skiping_num > 0
				{
				skiping_num --
				}
			}
		}

		if keyboard_check_pressed(ord("D")) || keyboard_check(vk_right) || (skiping_num > 0 && skiping_dir = -1)
		{
			if can_press < max_can_press-1
			{
			var sf_ef = audio_play_sound(rd_0,0,false)
			audio_sound_gain(sf_ef,0.7*global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.select ++
			can_press ++
				with(select_map_button)
				{
				t_x -= 200/win_wid
				}
				
				if skiping_num > 0
				{
				skiping_num --
				}
			}
		}
	}
}