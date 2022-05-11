/// @description Insert description here
// You can write your code in this editor



//주변아이템 발견가능 범위 표기
//if instance_number(inventory_ui) > 0
//{
//draw_sprite_ext(point_target,0,player.x,player.y,inventory_ui.p_x,inventory_ui.p_x,0,c_white,image_alpha-0.5)
//}
//////////////////////////////////
if !sprite_exists(sprite_index)
{
sprite_index = orginal_sprite
}


if global.knocked_out_co_op = 0
{
	if global.shadow_setting = 0
	{
	draw_sprite_ext(pl_shadow,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,0,c_white,0.3*image_alpha)
	}
	
	
	if co_op_code.is_server = false
	{
	var _a_ = (global.suit_col)
	var _b_ = (global.goggles_col)
	var _c_ = (global.shirt_run_col)
	
	
		draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_a_,image_alpha)
		if spin = 0
		{
			if cannot_move != 0
			{
			draw_sprite_ext(pants_hurt,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_b_,image_alpha)
			draw_sprite_ext(shirt_hurt,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_c_,image_alpha)
			}
			else
			{
			draw_sprite_ext(pants_run,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_b_,image_alpha)
			draw_sprite_ext(shirt_run,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_c_,image_alpha)
			}
		}
		else
		{
		draw_sprite_ext(pants_spin,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_b_,image_alpha)
		draw_sprite_ext(shirt_spin,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_c_,image_alpha)
		}
	}
	else
	{
	var _a_ = string(global.suit_col_co_op)
	var _b_ = string(global.goggles_col_co_op)
	var _c_ = string(global.shirt_run_col_co_op)
		if co_op_mode_spin = 0
		{
		var img_ind = image_index
			if sprite_index != orginal_sprite
			{
			img_ind = global.hazmat_co_op
			}
				
		draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_a_)),image_alpha)

			if cannot_move > 0
			{
			draw_sprite_ext(pants_hurt,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_b_)),image_alpha)
			draw_sprite_ext(shirt_hurt,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_c_)),image_alpha)
			}
			else
			{
			draw_sprite_ext(pants_run,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_b_)),image_alpha)
			draw_sprite_ext(shirt_run,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_c_)),image_alpha)
			}
		}
		else
		{
		draw_sprite_ext(sprite_index,co_op_mode_spin,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((global.suit_col_co_op)),image_alpha)
		draw_sprite_ext(pants_spin,co_op_mode_spin,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_b_)),image_alpha)
		draw_sprite_ext(shirt_spin,co_op_mode_spin,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,((_c_)),image_alpha)
		}
	}
}
else
{
	if co_op_code.is_server = false
	{
	global.t_hmovement_speed = 0
	global.hmovement_speed = 0
	global.t_movement_speed = 0
	global.movement_speed = 0
	vspeed = 0
	hspeed = 0
	}
	
draw_sprite_ext(pl_shadow,image_index,floor(x),floor(y),image_xscale*0.8,image_yscale*0.4,0,c_white,0.3*image_alpha)
	
	
	if co_op_code.is_server = false
	{
	var _a_ = global.suit_col;
	var _b_ = global.goggles_col;
	var _c_ = global.shirt_run_col;
	
	draw_sprite_ext(pl_knocked_out,global.hazmat,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_a_,image_alpha);
	draw_sprite_ext(pants_knockedout,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_b_,image_alpha)
	draw_sprite_ext(shirt_knockedout,image_index,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_c_,image_alpha)
	}
	else
	{
	var _a_ = string(global.suit_col_co_op)
	var _b_ = string(global.goggles_col_co_op)
	var _c_ = string(global.shirt_run_col_co_op)
	
	var img_ind = image_index
		if sprite_index != orginal_sprite
		{
		img_ind = global.hazmat_co_op
		}
	
	
	draw_sprite_ext(pl_knocked_out,img_ind,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_a_,image_alpha);
	draw_sprite_ext(pants_knockedout,0,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_b_,image_alpha)
	draw_sprite_ext(shirt_knockedout,0,floor(x),floor(y),image_xscale*0.4,image_yscale*0.4,image_angle,_c_,image_alpha)
	}
}

//draw_text(x,y,image_alpha)
