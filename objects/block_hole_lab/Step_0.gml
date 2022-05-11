/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);

if instance_number(creating_maps) > 0
{
can_enter = 1
alarm[2] = 120
}


if can_enter = 0
{
	if next_page < 180 && next_page != -1 && instance_number(creating_maps) = 0
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
				player.x += (x - player.x)*0.1
				player.y += (y+2 - player.y)*0.1
				if next_page = 0
				{
				_s_xscale_ = abs(player.image_xscale)/player.image_xscale
				}
				player.image_angle += _s_xscale_*2.5
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
				player_co_op.x += (x - player_co_op.x)*0.1
				player_co_op.y += (y+2 - player_co_op.y)*0.1
				if next_page = 0
				{
				_s_xscale_2 = abs(player_co_op.image_xscale)/player_co_op.image_xscale
				}
				player_co_op.image_angle += _s_xscale_2*2.5
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
				player.image_alpha = 1
				player.image_xscale = 1
				player.image_yscale = 1
				global.go_to_other_room = 1
				global.change_map_to = 3
				global.cave_floor = 1
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
				player_co_op.image_alpha = 1
				player_co_op.image_xscale = 1
				player_co_op.image_yscale = 1
				global.go_to_other_room = 1
				global.change_map_to = 3
				global.cave_floor = 1
			}
		}
	}



	if next_page = -1
	{
	instance_destroy()
	}
}
else
{
p_damaged(0,false,45,60,true)
}