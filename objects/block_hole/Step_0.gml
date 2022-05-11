/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);

if instance_number(pl_rocket) > 0
{
can_enter = 1
alarm[2] = 120
}

if clicked = 0.5
{
	if instance_number(draw_choice_text) = 0
	{
	clicked = global.choice_choosed
	}
}

if can_enter = 0 && next_page != -1 && next_page < 180
{
	if clicked = 0
	{
		if instance_exists(noclip_block)
		{
		noclip_block.image_xscale = 0.3
		noclip_block.image_yscale = 0.2
		noclip_block.x = x
		noclip_block.y = y+3
		}
	}
	
	if clicked = 1
	{
		if noclip_block != 0
		{
		instance_destroy(noclip_block)
		noclip_block = 0
		}
		
		
	var target = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target = player_co_op
		}
	
	target.x += (x - target.x)*0.02
	target.y += (y+2 - target.y)*0.02
	}
}



if can_enter = 0 && clicked = 1
{
	if next_page < 180 && next_page != -1 && instance_number(pl_rocket) = 0
	{
		if global.go_to_other_room = 0
		{
			if co_op_code.is_server = true
			{
				if instance_number(player) > 0 && place_meeting(x,y,player) && someone_went_cave = 0
				{
				someone_went_cave = 2
				}
			
				if instance_number(player) > 0 && (place_meeting(x,y,player) || p_1_place_met = 1)
				{
				p_1_place_met = 1
				global.black_blind = 1
				global.do_not_move = 1
				player.image_index = 3
				player.x += (x - player.x)*0.15
				player.y += (y+2 - player.y)*0.15
				if next_page = 0
				{
				_s_xscale_ = abs(player.image_xscale)/player.image_xscale
				var spr_name = sprite_get_name(player.sprite_index)
				player.sprite_index = asset_get_index(string(spr_name)+"_spin")
				}
				player.image_angle += (90*sign(player.image_xscale) - player.image_angle)*0.05
				player.image_alpha -= 0.02
				next_page += 1
					if _s_xscale_ > 0
					{
						if player.image_xscale > 0
						{
						player.image_xscale -= 0.02
						player.image_yscale -= 0.02
						}
						else
						{
						player.image_xscale = 0
						player.image_yscale = 0
						}
					}
					else
					{
						if player.image_xscale < 0
						{
						player.image_xscale += 0.02
						player.image_yscale -= 0.02
						}
						else
						{
						player.image_xscale = 0
						player.image_yscale = 0
						}
					}
				}
			}
			else
			{
				if instance_number(player_co_op) > 0 && place_meeting(x,y,player_co_op) && someone_went_cave = 0
				{
				someone_went_cave = 2
				}
			
				if instance_number(player_co_op) > 0 && (place_meeting(x,y,player_co_op) || p_2_place_met = 1)
				{
				p_2_place_met = 1
				global.black_blind = 1
				global.do_not_move = 1
				player_co_op.image_index = 3
				player_co_op.x += (x - player_co_op.x)*0.15
				player_co_op.y += (y+2 - player_co_op.y)*0.15
				if next_page = 0
				{
				_s_xscale_2 = abs(player_co_op.image_xscale)/player_co_op.image_xscale
				var spr_name = sprite_get_name(player_co_op.sprite_index)
				player_co_op.sprite_index = asset_get_index(string(spr_name)+"_spin")
				}
				player_co_op.image_angle += (90*sign(player_co_op.image_xscale) - player_co_op.image_angle)*0.05
				player_co_op.image_alpha -= 0.02
				next_page += 1
					if _s_xscale_2 > 0
					{
						if player_co_op.image_xscale > 0
						{
						player_co_op.image_xscale -= 0.02
						player_co_op.image_yscale -= 0.02
						}
						else
						{
						player_co_op.image_xscale = 0
						player_co_op.image_yscale = 0
						}
					}
					else
					{
						if player_co_op.image_xscale < 0
						{
						player_co_op.image_xscale += 0.02
						player_co_op.image_yscale -= 0.02
						}
						else
						{
						player_co_op.image_xscale = 0
						player_co_op.image_yscale = 0
						}
					}
				}
			}
		}
	}
	else
	{
		if next_page != -1 && instance_number(pl_rocket) = 0
		{
			if co_op_code.is_server = true
			{
				if global.cave_floor = 0
				{
				global.last_x = player.x
				global.last_y = player.y
				}
				next_page = -1
				global.black_blind = 0
				global.do_not_move = 0
				player.image_index = 0
				player.image_angle = 0
				player.image_alpha = 0
				player.image_xscale = 1
				player.image_yscale = 1
				player.sprite_index = player.orginal_sprite
				global.go_to_other_room = 1
				global.change_map_to = 2
				global.cave_floor++
			}
			else
			{
				if global.cave_floor = 0
				{
				global.last_x = player_co_op.x
				global.last_y = player_co_op.y
				}
				next_page = -1
				global.black_blind = 0
				global.do_not_move = 0
				player_co_op.image_index = 0
				player_co_op.image_angle = 0
				player_co_op.image_alpha = 0
				player_co_op.image_xscale = 1
				player_co_op.image_yscale = 1
				player_co_op.sprite_index = player_co_op.orginal_sprite
				global.go_to_other_room = 1
				global.change_map_to = 2
				global.cave_floor++
			}
		}
	}


	if (instance_number(player) > 0 && place_meeting(x,y,player)) || (instance_number(player_co_op) > 0 && place_meeting(x,y,player_co_op))
	{
		if someone_went_cave = 0
		{
		next_page = -1
		}
	}

	if next_page = -1
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "Entrance was blocked"
	instance_destroy()
	}
}
