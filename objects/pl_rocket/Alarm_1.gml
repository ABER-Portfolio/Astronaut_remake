/// @description Insert description here
// You can write your code in this editor
var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}

instance_activate_object(block_home)
if instance_exists(block_home)
{
target.x = block_home.x+37
target.y = block_home.y+37
}

text_cre = 1
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.ROCKET_READY);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
