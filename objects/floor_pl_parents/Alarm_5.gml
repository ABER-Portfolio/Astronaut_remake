/// @description Insert description here
// You can write your code in this editor
if !variable_instance_exists(id,"received")
{
received = 1
}


if buffer_exists(chat_buffer)
{
	if received = 0
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.CO_OP_INS_CRE);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, object_index);
	send_all(chat_buffer);
	}

buffer_delete(chat_buffer)
}