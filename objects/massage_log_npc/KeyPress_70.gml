/// @description Insert description here
// You can write your code in this editor

if can_skip_solo = 0
{
	if can_skip = 1 && global.black_blind = 0
	{
	can_skip = 2
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.CHAT_SYNC);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		send_all(chat_buffer);
		}
	}
}
else
{
can_skip = 2
}

