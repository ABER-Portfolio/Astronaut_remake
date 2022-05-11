/// @description Insert description here
// You can write your code in this editor
image_alpha = 0

chat_buffer = buffer_create(2, buffer_grow, 1);

target_p = noone
w_alpha = 1

target_x = player.x
target_y = player.y
t_speed = 0
own_damage = 1

image_xscale = 0.3
image_yscale = 0.3
sp_dilay = 0
draw_hp = 0
alpha = 0

damage_gotten_by = 0
for_draw_damage = 0
dilay = 0
stop_moving = 0
hp_t = 0




inside_item_angle_time = 0
inside_item_angle_turn = 0
inside_item_angle = 0
var random_it = percentage_k(20)

if random_it = 1
{
var random_it_ = percentage_k(50)
	if random_it_ = 1
	{
	inside_item = pl_move_projectile_hazmat
	inside_item_index = 0

	image_xscale = 0.5
	image_yscale = 0.5
	}
	else
	{
	inside_item = spr_only_items
	var random_val = percentage_k(80)
	if random_val = 1
	{
	inside_item_index = irandom_range(0,39)
	}
	else
	{
	var random_val2 = percentage_k(80)
		if random_val2 = 1
		{
		inside_item_index = choose(43,44,51,54,55,56)
		}
		else
		{
		inside_item_index = choose(52,53)
		}
	}

	image_xscale = 0.5
	image_yscale = 0.5
	}
}
else
{
inside_item = none_sprite
inside_item_index = noone
}






if co_op_code.is_server = true
{
sprite_index = choose(spr_slime,spr_slime1)
slime_kind = 0
hp = 16
max_hp = hp
alpha_slime = -1

	if place_meeting(x,y,floor_pl1)
	{
	slime_kind = 1
	alpha_slime = 0
	sprite_index = choose(spr_slime_red,spr_slime_red1)
	hp = 22
	max_hp = hp
	alarm[11] = 200
	}

	if place_meeting(x,y,floor_pl2)
	{
	slime_kind = 2
	hp = 20
	max_hp = hp
	sprite_index = choose(spr_slime_purple,spr_slime_purple1)
	}

	if place_meeting(x,y,floor_pl3)
	{
	slime_kind = 3
	hp = 18
	max_hp = hp
	sprite_index = choose(spr_slime_ice,spr_slime_ice1)
	}

	if place_meeting(x,y,floor_pl4)
	{
	slime_kind = 4
	hp = 21
	max_hp = hp
	sprite_index = choose(spr_slime_desert,spr_slime_desert1)
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
	buffer_write(chat_buffer, buffer_string, inside_item);
	buffer_write(chat_buffer, buffer_string, inside_item_index);
	send_all(chat_buffer);
	};
};

