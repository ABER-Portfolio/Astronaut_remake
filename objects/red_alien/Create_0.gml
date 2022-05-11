/// @description Insert description here
// You can write your code in this editor
image_alpha = 0

chat_buffer = buffer_create(2, buffer_grow, 1);

target_p = noone
t_weapon_angle = 0
gun_yscale = 0.3
hp_t = 0
w_alpha = 1


bullet_shoot_count = 0

target_x = x
target_y = y
t_speed = 0
own_damage = 1

draw_hp = 0
alpha = 0

image_xscale = choose(-1,1)*0.4
image_yscale = 0.4
sp_dilay = 0

damage_gotten_by = 0
for_draw_damage = 0
dilay = 0

weapon_angle = 0

found_human = 0


if co_op_code.is_server = true
{
hp = 72
max_hp = 72
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


alarm[1] = irandom_range(300,500)