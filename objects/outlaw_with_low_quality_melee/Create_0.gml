/// @description Insert description here
// You can write your code in this editor
image_alpha = 0

chat_buffer = buffer_create(2, buffer_grow, 1);

target_p = noone
hp_t = 0

target_x = player.x
target_y = player.y
t_speed = 0
own_damage = 1.8
w_alpha = 1

draw_hp = 0
alpha = 0

image_xscale = 0.4
image_yscale = 0.4
sp_dilay = 0

damage_gotten_by = 0
for_draw_damage = 0
dilay = 0
melee_kind = choose(0,0,0,1,1,2,16,21,22,23,76)

weapon_angle = 0



if co_op_code.is_server = true
{
hp = 32
max_hp = 32
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.HUMAN_KIND_MOB_CREATE);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, hp);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	send_all(chat_buffer);
	};
};