/// @description Insert description here
// You can write your code in this editor
if global.dev_mode > 0
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.FORCE_WIPE);
send_all(chat_buffer);
}