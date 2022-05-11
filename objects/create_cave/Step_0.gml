/// @description Insert description here
// You can write your code in this editor
if go_back = 1
{
	if next_page < 180 && next_page != -1
	{
		if global.go_to_other_room = 0
		{
			if co_op_code.is_server = true
			{
				if instance_number(player) > 0 && (place_meeting(x,y,player) || p_1_place_met = 1)
				{
				p_1_place_met = 1
				global.black_blind = 1
				global.do_not_move = 1
				player.image_index = 3
				player.x += (x - player.x)*0.05
				player.y += (y+2 - player.y)*0.05
				if next_page = 0
				{
				_s_xscale_ = abs(player.image_xscale)/player.image_xscale
				}
				next_page += 1
				}
			}
			else
			{
				if instance_number(player_co_op) > 0 && (place_meeting(x,y,player_co_op) || p_2_place_met = 1)
				{
				p_2_place_met = 1
				global.black_blind = 1
				global.do_not_move = 1
				player_co_op.image_index = 3
				player_co_op.x += (x - player_co_op.x)*0.05
				player_co_op.y += (y+2 - player_co_op.y)*0.05
				if next_page = 0
				{
				_s_xscale_2 = abs(player_co_op.image_xscale)/player_co_op.image_xscale
				}
				next_page += 1
				}
			}
		}
	}
	else
	{
		if next_page != -1
		{
			if co_op_code.is_server = true
			{
			var already_used = 0
				if already_used = 0 && inventory_number_find_by_name(item60,0) > 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "Used wooden ladder"
				inventory_item_sub(item60,1,0)
				already_used = 1
				}
				
				if already_used = 0 && inventory_number_find_by_name(item42,0) > 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "Used paracord"
				inventory_item_sub(item42,1,0)
				already_used = 1
				}
			
			player.x = global.last_x
			player.y = global.last_y
			obj_camera.x = global.last_x
			obj_camera.y = global.last_y
			
			next_page = -1
			global.do_not_move = 0
			global.black_blind = 0
			player.image_index = 0
			player.image_angle = 0
			player.image_alpha = 1
			player.image_xscale = 1
			player.image_yscale = 1
			global.go_to_other_room = 1
			global.change_map_to = 1
			instance_destroy()
			}
			else
			{
			var already_used = 0
				if already_used = 0 && inventory_number_find_by_name(item60,0) > 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "Used wooden ladder"
				inventory_item_sub(item60,1,0)
				already_used = 1
				}
				
				if already_used = 0 && inventory_number_find_by_name(item42,0) > 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "Used paracord"
				inventory_item_sub(item42,1,0)
				already_used = 1
				}
			
			player_co_op.x = global.last_x
			player_co_op.y = global.last_y
			obj_camera.x = global.last_x
			obj_camera.y = global.last_y
				
			next_page = -1
			global.do_not_move = 0
			global.black_blind = 0
			player_co_op.image_index = 0
			player_co_op.image_angle = 0
			player_co_op.image_alpha = 1
			player_co_op.image_xscale = 1
			player_co_op.image_yscale = 1
			global.go_to_other_room = 1
			global.change_map_to = 1
			instance_destroy()
			}
		}
	}
}


