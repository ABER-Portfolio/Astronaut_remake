/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

image_alpha = -10
vspeed = 0
gravity = 0.14
floor_y = y-5
instance_create(x,y,worm_dig_point)
alarm[1] = 1

attack_dilay = 0

target_x = x
target_y = y

draw_hp = 0
alpha = 0
damage_gotten_by = 0
hp_t = 0
max_hp = 12


depth = -(room_width*1.5)

image_speed = 0
sprite_index = spr_worm1
image_index = 0
hp = 8
own_damage = 2.42
dilay = 0
image_xscale = 0.65
image_yscale = 0.65

total_body_numbers = 5
body_num = array_create(total_body_numbers,0)

if co_op_code.is_server = true
{	
	for(var i = 0; i < total_body_numbers; i++)
	{
	body_num[i] = instance_create(x,y,worm_small_body)
	body_num[i].origin_id = noone
	body_num[i].received = 0
	body_num[i].floor_y = floor_y
		if i < total_body_numbers-1
		{
		body_num[i].image_index = 1
			if i > 1
			{
			body_num[i].following_target = body_num[i-1]
			}
			else
			{
			body_num[i].following_target = id
			}
		}
		else
		{
		body_num[i].following_target = body_num[i-1]
		body_num[i].image_index = 2
		}
	body_num[i].depth = depth+i
	body_num[i].image_xscale = image_xscale
	body_num[i].image_yscale = image_yscale
	body_num[i].own_damage = (own_damage)*0.5
	body_num[i].hp = hp
	body_num[i].max_hp = hp
	body_num[i].body_num = i
	body_num[i].parent_id = id
	}
	//////////////////////////////////////////////////////////////////////////////////////////
	for(var i = 0; i < total_body_numbers; i++)
	{
		if i < total_body_numbers-1
		{
		body_num[i].behind_body = body_num[i+1]
		}
		else
		{
		body_num[i].behind_body = noone
		}
	}
	
	
	
	

	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.WORM_CREATE);
	buffer_write(chat_buffer, buffer_string, worm_small_head);
	buffer_write(chat_buffer, buffer_string, worm_small_body);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, total_body_numbers);
	send_all(chat_buffer);
	};
}
//////////////////////////////////////////////////////////////////////////////////////////
