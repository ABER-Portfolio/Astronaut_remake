/// @description Insert description here
// You can write your code in this editor
if received = 0
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
	
buffer_write(chat_buffer, buffer_u8, DATA.CREATE_OBJ_ONLY_XY);
buffer_write(chat_buffer, buffer_string, id);
buffer_write(chat_buffer, buffer_string, object_index);
buffer_write(chat_buffer, buffer_string, image_xscale);
buffer_write(chat_buffer, buffer_string, image_yscale);
buffer_write(chat_buffer, buffer_string, image_index);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
send_all(chat_buffer);
}
