/// @description Insert description here
// You can write your code in this editor
if global.chat_activity = false && obj_camera.scene_cancle_cooltime > 2 && global.playing_scene = 0
{
	if global.knocked_out = 0 && global.do_not_move = 0 && instance_number(pl_rocket) = 0
	{
		if instance_number(option_line_bar) = 0
		{
			if global.inv_open = 0 || global.inv_open = 2
			{
			esc_button_press ++

				if esc_button_press >= 2
				{
				esc_button_press = 0
				}

				if esc_button_press = 0
				{
				alarm[1] = 1	
				}

				if esc_button_press = 1
				{
				alarm[0] = 1
				}
			}
			
			
			if global.inv_open = 1
			{
			alarm[0] = 1
			esc_button_press = 1
			}
		}
	}
}