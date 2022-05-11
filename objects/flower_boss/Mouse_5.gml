/// @description Insert description here
// You can write your code in this editor
var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}

if point_distance(target_.x,target_.y,x,y) < 70
{
	if global.npc_event[1] = 5
	{
	searched = 0.5
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.FLOWER_BOSS_RESEARCH);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		send_all(chat_buffer);
		};
	}
	else
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "It's a giant flower"
		if global.language = 1
		{
		_text_bar.text = "거대한 꽃이다"
		}
	}
}