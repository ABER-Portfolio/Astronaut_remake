/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
if image_index != 2
{
draw_sprite_ext(pl_shadow,0,p_x,p_y,image_xscale*1.2,image_yscale*1.2,0,c_white,0.3-w_alpha)
if global.gender = 0
{
draw_sprite_ext(pl_move,p_img_ind,p_x,p_y,image_xscale*1.2,image_yscale*1.2,p_angle,global.suit_col,1-w_alpha)
}
else
{
draw_sprite_ext(pl_move_s_mask,p_img_ind,p_x,p_y,image_xscale*1.2,image_yscale*1.2,p_angle,global.suit_col,1-w_alpha)
}
draw_sprite_ext(eye_goggles_pants,p_img_ind,p_x,p_y,image_xscale*1.2,image_yscale*1.2,p_angle,global.goggles_col,1-w_alpha)
draw_sprite_ext(o2_tank_cloth,p_img_ind,p_x,p_y,image_xscale*1.2,image_yscale*1.2,p_angle,global.shirt_run_col,1-w_alpha)
}

var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38

if can_draw_text = 1
{
	if image_index != 2
	{
		if global.language = 0
		{
		draw_text_kl_scale(x-(obj_camera.v_x/1280)*190,y+(obj_camera.v_y/720)*215,"Special ability :\n "+string(sp_abil_text),170,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
		}
		if global.language = 1
		{
		draw_text_kl_scale(x-(obj_camera.v_x/1280)*190,y+(obj_camera.v_y/720)*215,"특수 능력 :\n "+string(sp_abil_text),170,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
		}
	}
	else
	{
	draw_text_kl_scale(x-(obj_camera.v_x/1280)*610,y+(obj_camera.v_y/720)*322,string(sp_abil_text),170,-1,text_alpha,$FF0F33FF,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
	}
}