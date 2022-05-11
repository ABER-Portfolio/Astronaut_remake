/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
breathing = 0
breath_time = 0
hp = 300
max_hp = hp
hp_t = hp
damage_gotten_by = 0
alpha = 0
paturn = 0
paturn_time = 0
dilay = 0
image_speed = 0
image_index = 1
woke_up = 0
searched = 0



if co_op_code.is_server = true
{
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
