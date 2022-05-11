/// @description Insert description here
// You can write your code in this editor

if instance_number(player) > 0
{
	if(co_op_code.is_server == true)
	{
		if (player.move_released > 0 && player.hmove_released > 0) || (global.swing > 0 || cool_time > 0)
		{
			if global.knocked_out = 0 && global.do_not_move = 0
			{
				if (global.inhand_item != -1 && global.inhand_item != noone)
				{
					if cool_time > 0 && player.spin = 0
					{
						if (player.image_index >= 3 && player.image_index <= 5) || (player.image_index >= 9 && player.image_index <= 11)
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
		if cool_time > 0 && player.co_op_mode_spin = 0
		{
			if (player.image_index >= 3 && player.image_index <= 5) || (player.image_index >= 9 && player.image_index <= 11)
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

//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale*0.85,image_yscale*0.85,image_angle,image_blend,image_alpha)
//draw_set_font(dev_font)
//draw_set_alpha(1)
//draw_text(x,y,string(image_angle))