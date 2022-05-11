/// @description Insert description here
// You can write your code in this editor
saved_speed = speed

if received = 0
{
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.BULLET_ENEMY_STATE);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, sprite_index);
	buffer_write(chat_buffer, buffer_string, image_index);
	buffer_write(chat_buffer, buffer_string, image_alpha);
	buffer_write(chat_buffer, buffer_string, image_angle);
	buffer_write(chat_buffer, buffer_string, image_blend);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, depth);
	buffer_write(chat_buffer, buffer_string, saved_speed);
	buffer_write(chat_buffer, buffer_string, speed);
	buffer_write(chat_buffer, buffer_string, direction);
	buffer_write(chat_buffer, buffer_string, own_damage);
	send_all(chat_buffer);
	}
}
can_des = 1

if image_index = 0
{
	var _sf_ = audio_play_sound(bullet_sound,1,false)
	if co_op_code.is_server = true
	{
	audio_sound_gain(_sf_,(1-point_distance(x,y,player.x,player.y)/200)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
	else
	{
	audio_sound_gain(_sf_,(1-point_distance(x,y,player_co_op.x,player_co_op.y)/200)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}
else
{
	var _sf_ = audio_play_sound(alien_bullet_sound,1,false)
	if co_op_code.is_server = true
	{
	audio_sound_gain(_sf_,(1-point_distance(x,y,player.x,player.y)/200)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
	else
	{
	audio_sound_gain(_sf_,(1-point_distance(x,y,player_co_op.x,player_co_op.y)/200)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}

speed = 0