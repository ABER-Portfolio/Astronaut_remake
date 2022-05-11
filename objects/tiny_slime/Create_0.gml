/// @description Insert description here
// You can write your code in this editor
image_alpha = 0

chat_buffer = buffer_create(2, buffer_grow, 1);

w_alpha = 1
target_p = noone

target_x = player.x
target_y = player.y
t_speed = 0
own_damage = 1

image_xscale = 0.2
image_yscale = 0.2
sp_dilay = 0
draw_hp = 0
alpha = 0

damage_gotten_by = 0
for_draw_damage = 0
dilay = 0
hp_t = 0

cool_time_cre = 0
alarm[5] = 50

if co_op_code.is_server = true
{
slime_kind = 0
hp = 4
max_hp = hp
alpha_slime = -1

	if place_meeting(x,y,floor_pl1)
	{
	slime_kind = 1
	alpha_slime = 0
	hp = 5.5
	max_hp = hp
	alarm[11] = 200
	}

	if place_meeting(x,y,floor_pl2)
	{
	slime_kind = 2
	hp = 5
	max_hp = hp
	}

	if place_meeting(x,y,floor_pl3)
	{
	slime_kind = 3
	hp = 4.5
	max_hp = hp
	}

	if place_meeting(x,y,floor_pl4)
	{
	slime_kind = 4
	hp = 5.1
	max_hp = hp
	}






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
	buffer_write(chat_buffer, buffer_string, slime_kind);
	buffer_write(chat_buffer, buffer_string, alpha_slime);
	send_all(chat_buffer);
	};
};

