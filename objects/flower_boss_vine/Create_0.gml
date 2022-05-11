/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

damage_gotten_by = 0
dilay = 0

breathing = 0
breath_time = 0

image_speed = 0.9

var sound_break_effect = audio_play_sound(vine,2,false)
audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)


if co_op_code.is_server = true
{
hp = 13
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.HUMAN_KIND_MOB_CREATE);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, hp);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	send_all(chat_buffer);
	};
};

max_hp = hp
hp_t = hp