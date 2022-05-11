/// @description Insert description here
// You can write your code in this editor
if buffer_exists(chat_buffer)
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
	
buffer_write(chat_buffer, buffer_u8, DATA.BL_DESTROY);
buffer_write(chat_buffer, buffer_string, id);
buffer_write(chat_buffer, buffer_string, object_index);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
send_all(chat_buffer);

buffer_delete(chat_buffer);
}

instance_destroy(light)