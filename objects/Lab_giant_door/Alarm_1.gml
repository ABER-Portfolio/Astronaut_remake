/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
	if opened <= 0
	{
		if co_op_code.is_server = true
		{
			if instance_number(player) > 0
			{
				if point_distance(x,y,player.x,player.y) < 36 && y+2 < player.y
				{
					if global.inhand_item_type = spr_only_items && global.inhand_item = 45
					{
					var sound_break_effect = audio_play_sound(keycard_sef,1,false)
					audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
					inventory_item_sub(item46,1,0)
					opened = 1
					}
					else
					{
						if global.language = 0
						{
						var _text_bar = instance_create(x,y,draw_debug_text)
						_text_bar.text = "Need a keycard"
						}
				
						if global.language = 1
						{
						var _text_bar = instance_create(x,y,draw_debug_text)
						_text_bar.text = "카드키가 필요합니다"
						}
					}
				}
			}
		}
		else
		{
			if instance_number(player_co_op) > 0
			{
				if point_distance(x,y,player_co_op.x,player_co_op.y) < 36 && y+2 < player_co_op.y
				{
					if global.inhand_item_type = spr_only_items && global.inhand_item = 45
					{
					var sound_break_effect = audio_play_sound(keycard_sef,1,false)
					audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
					inventory_item_sub(item46,1,0)
					opened = 1
					}
					else
					{
						if global.language = 0
						{
						var _text_bar = instance_create(x,y,draw_debug_text)
						_text_bar.text = "Need a keycard"
						}
				
						if global.language = 1
						{
						var _text_bar = instance_create(x,y,draw_debug_text)
						_text_bar.text = "카드키가 필요합니다"
						}
					}
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