/// @description Insert description here
// You can write your code in this editor
if opened = 0 && create_lab.lab_generator > 0
{
	if co_op_code.is_server = true
	{
		if instance_number(player) > 0
		{
			if point_distance(x,y,player.x,player.y) < 25
			{
				if door_keycard > 0
				{
					if global.inhand_item_type = spr_only_items && global.inhand_item = (43+door_keycard)
					{
					var sound_break_effect = audio_play_sound(keycard_sef,1,false)
					audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
					inventory_item_sub(asset_get_index("item4"+string(6+door_keycard)),1,0)
					opened = 1
					}
				}
			}
		}
	}
	else
	{
		if instance_number(player_co_op) > 0
		{
			if point_distance(x,y,player_co_op.x,player_co_op.y) < 25
			{
				if door_keycard > 0
				{
					if global.inhand_item_type = spr_only_items && global.inhand_item = (43+door_keycard)
					{
					var sound_break_effect = audio_play_sound(keycard_sef,1,false)
					audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
					inventory_item_sub(asset_get_index("item4"+string(6+door_keycard)),1,0)
					opened = 1
					}
				}
			}
		}
	}
}
else
{
	if co_op_code.is_server = true
	{
		if instance_number(player) > 0
		{
			if point_distance(x,y,player.x,player.y) < 32
			{
				if create_lab.lab_generator = 0
				{
				chat_up("Need to turn on the generator",1)
				}
			}
		}
	}
	else
	{
		if instance_number(player_co_op) > 0
		{
			if point_distance(x,y,player_co_op.x,player_co_op.y) < 25
			{
				if create_lab.lab_generator = 0
				{
				chat_up("Need to turn on the generator",1)
				}
			}
		}
	}
}

if buffer_exists(chat_buffer)
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.LAB_DOOR_STATE);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
buffer_write(chat_buffer, buffer_string, opened);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
send_all(chat_buffer);
}