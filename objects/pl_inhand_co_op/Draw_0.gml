/// @description Insert description here
// You can write your code in this editor
if instance_number(player_co_op) > 0
{
	if(co_op_code.is_server == false)
	{
		if (player_co_op.move_released > 0 && player_co_op.hmove_released > 0) || (global.swing > 0 || cool_time > 0)
		{
			if global.knocked_out = 0 && global.do_not_move = 0
			{
				if (global.inhand_item != -1 && global.inhand_item != noone)
				{
					if cool_time > 0 && player_co_op.spin = 0
					{
						if (player_co_op.image_index >= 3 && player_co_op.image_index <= 5) || (player_co_op.image_index >= 9 && player_co_op.image_index <= 11)
						{
						draw_sprite_ext(sprite_index,image_index,floor(x),floor(y)+3,image_xscale*0.85,image_yscale*0.85,image_angle,image_blend,image_alpha)
						}
						else
						{
						draw_sprite_ext(sprite_index,image_index,floor(x),floor(y)+5,image_xscale*0.85,image_yscale*0.85,image_angle,image_blend,image_alpha)
						}
					}
				}
			}
		}
	}
	else
	{
		if cool_time > 0 && player_co_op.co_op_mode_spin = 0
		{
			if (player_co_op.image_index >= 3 && player_co_op.image_index <= 5) || (player_co_op.image_index >= 9 && player_co_op.image_index <= 11)
			{
			draw_sprite_ext(sprite_index,image_index,floor(x),floor(y)+3,image_xscale*0.85,image_yscale*0.85,image_angle,image_blend,image_alpha)
			}
			else
			{
			draw_sprite_ext(sprite_index,image_index,floor(x),floor(y)+5,image_xscale*0.85,image_yscale*0.85,image_angle,image_blend,image_alpha)
			}
		}
	}
}