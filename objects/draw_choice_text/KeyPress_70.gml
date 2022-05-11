/// @description Insert description here
// You can write your code in this editor
if time < 600 && global.black_blind = 0
{
time = 9999
var sf_ef = audio_play_sound(draged_item,1,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.2,0)
	if buffer_exists(chat_buffer) && can_skip_solo = 0
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.CHOICE_CHOOSED);
	buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
	send_all(chat_buffer);
	}
}