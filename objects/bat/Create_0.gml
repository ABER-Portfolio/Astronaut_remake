/// @description Insert description here
// You can write your code in this editor
hp = 8
max_hp = 8
dilay = 0
own_damage = 1.1
chat_buffer = buffer_create(2, buffer_grow, 1);
hp_t = 0
w_alpha = 1

depth = -(room_width*1.5)
image_xscale = 1
image_yscale = 1
damage_gotten_by = 0
out_of_view = 0
t_speed = 0

draw_hp = 0
alpha = 0

alarm[5] = 1




if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.BAT_CREATE);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, hp);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	send_all(chat_buffer);
	};

};