/// @description Insert description here
// You can write your code in this editor

var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


var text_scale = 25
var shape_scale = 38



draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	if pressed = 0
	{
		if global.language = 0
		{
		draw_text_kl_scale(x-(obj_camera.v_x/1280)*3,y-(obj_camera.v_y/720)*34,"Nickname",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
		}
		if global.language = 1
		{
		draw_text_kl_scale(x-(obj_camera.v_x/1280)*3,y-(obj_camera.v_y/720)*34,"닉네임",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
		}
		
		
		draw_text_kl_scale(x+(obj_camera.v_x/1280)*20,y+((obj_camera.v_y/720)*1.02),text,50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
	}
	else
	{
		if string_length(text) <= 23
		{
		text = keyboard_string
		}
		else
		{
			if keyboard_check(vk_backspace) = true
			{
			text = keyboard_string
			}
		}
		
	if text != ""
	{
	global.nickname = text
	}
		
		
		if global.language = 0
		{
		draw_text_kl_scale(x-(obj_camera.v_x/1280)*3,y-(obj_camera.v_y/720)*34,"Nickname",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
		}
		if global.language = 1
		{
		draw_text_kl_scale(x-(obj_camera.v_x/1280)*3,y-(obj_camera.v_y/720)*34,"닉네임",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
		}
		
		
		draw_text_kl_scale(x+(obj_camera.v_x/1280)*20,y+((obj_camera.v_y/720)*1.02),string(text)+"|",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
	}

