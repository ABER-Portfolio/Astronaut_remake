/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

image_angle = 45
w_alpha = 0
image_xscale = 0.5
image_yscale = 0.5
image_index = 1

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