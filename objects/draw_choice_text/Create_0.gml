/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
time = 0
image_alpha = 0

your_choose = 0
d_your_choose_x = 0
d_your_choose_x_cp = 0
global.do_not_move = 1
b_playing_scene = global.playing_scene
global.playing_scene = 1
send_once = 0
forced_choose = 0

if buffer_exists(chat_buffer)
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.CHOICE_CHAT_SYNC);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
buffer_write(chat_buffer, buffer_string, your_choose);
send_all(chat_buffer);
}

alarm[1] = 1