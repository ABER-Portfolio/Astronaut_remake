/// @description Insert description here
// You can write your code in this editor
if instance_number(item_info_log) = 0
{
	var camera_xscale = 1
	var camera_yscale = 1
	if instance_number(obj_camera) > 0
	{
	camera_xscale = obj_camera.v_x/1280
	camera_yscale = obj_camera.v_y/720
	}

	//////////////////////////////마우스 커서 드로우/////////////////////////////////
	var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}

	var interaction = 0
	if instance_number(target_) > 0
	{
		if instance_number(block_furnace) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+2,block_furnace)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 16
			{
			interaction = 1
			}
		}

		if instance_number(block_purificationer) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+2,block_purificationer)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 18
			{
			interaction = 1
			}
		}


		if instance_number(block_recycler) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+2,block_recycler)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 18
			{
			interaction = 1
			}
		}


		if instance_number(Lab_giant_door) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+2,Lab_giant_door)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 35
			{
			interaction = 1
			}
		}


		if instance_number(lab_door) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+2,lab_door)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 25
			{
			interaction = 1
			}
		}


		if instance_number(chest) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+2,chest)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) <= 20
			{
			interaction = 1
			}
		}
	
		if instance_number(block_refinery) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+16,block_refinery)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 16
			{
			interaction = 1
			}
		}
	
		if instance_number(block_research_table) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+16,block_research_table)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 16
			{
			interaction = 1
			}
		}
	
		if instance_number(block_hole) > 0
		{
		var _target_sec = instance_nearest(target_.x,target_.y+18,block_hole)
			if point_distance(target_.x,target_.y,_target_sec.x,_target_sec.y) < 22
			{
			interaction = 1
			}
		}
	
		if target_ != player && instance_number(player) > 0
		{
			if global.knocked_out_origin > 0 && point_distance(target_.x,target_.y,player.x,player.y) < 16
			{
			interaction = 1
			}
		}
	
		if target_ != player_co_op && instance_number(player_co_op) > 0
		{
			if global.knocked_out_co_op > 0 && point_distance(target_.x,target_.y,player_co_op.x,player_co_op.y) < 16
			{
			interaction = 1
			}
		}
	
		if instance_number(flower_boss) > 0
		{
			if point_distance(target_.x,target_.y,flower_boss.x,flower_boss.y) < 70
			{
			interaction = 1
			}
		}
	
		if instance_number(block_home) > 0
		{
			if point_distance(target_.x,target_.y,block_home.x+25,block_home.y+32) < 20
			{
			interaction = 1
			}
		}
	
		if global.inhand_item_type = spr_only_items && global.inhand_item = 69
		{
			if point_distance(target_.x,target_.y,x,y) < 16 && !position_meeting(x,y,fl_parents)
			{
			interaction = 1
			}
		}
	}

	var setting_button = 0

	if instance_number(main_menu_button) > 0
	{
	var _target_sec = instance_nearest(x,y,main_menu_button)
	var camera_xsize = obj_camera.v_x/1280
		if point_distance(x,y,_target_sec.x,_target_sec.y) < 64*camera_xsize
		{
		setting_button = 1
		}
	}

	if instance_number(ui_quest) > 0
	{
		if position_meeting(x,y,ui_quest)
		{
		setting_button = 1
		}
	}


	if global.playing_scene = 0 && obj_camera.scene_cancle_cooltime > 2
	{
		if setting_button = 0
		{
			if interaction = 0
			{
			draw_sprite_ext(sprite_index,image_index,mouse_x,mouse_y,image_xscale*1.2*camera_xscale,image_yscale*1.2*camera_yscale,image_angle,c_white,image_alpha)
			}
			else
			{
			draw_sprite_ext(sprite_index,2,mouse_x,mouse_y,image_xscale*1.4*camera_xscale,image_yscale*1.4*camera_yscale,image_angle,c_white,image_alpha)
			}
		}
		else
		{
		draw_sprite_ext(sprite_index,4,mouse_x,mouse_y,image_xscale*1.2*camera_xscale,image_yscale*1.2*camera_yscale,image_angle,c_white,image_alpha)
		}
	}
	else
	{
	draw_sprite_ext(sprite_index,3,mouse_x,mouse_y,image_xscale*1.2*camera_xscale,image_yscale*1.2*camera_yscale,image_angle,c_white,image_alpha)
	}
}