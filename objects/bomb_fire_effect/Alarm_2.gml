/// @description Insert description here
// You can write your code in this editor
if received = 0
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.BOMB_EFFECT);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
buffer_write(chat_buffer, buffer_string, time);
buffer_write(chat_buffer, buffer_string, length);
send_all(chat_buffer);
}