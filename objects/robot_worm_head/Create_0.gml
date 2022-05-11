/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);


light = instance_create(x,y,objLight_for_obj)
light.x = x
light.y = y
light.lightxs = 128
light.lightys = 128
light.lightcol = $FF3F00EE
light.alpha = 0.6




draw_hp = 0
alpha = 0
damage_gotten_by = 0
hp_t = 0

depth = -(room_width*1.5)

image_speed = 0
sprite_index = spr_worm2
hp = 1132
max_hp = 1132
own_damage = 4.42
dilay = 0
image_xscale = 0.65
image_yscale = 0.65

total_body_numbers = 100
body_num = array_create(total_body_numbers,0)

if co_op_code.is_server = true
{	
	for(var i = 0; i < total_body_numbers; i++)
	{
	body_num[i] = instance_create(x,y,worm_body)
	body_num[i].origin_id = noone
	body_num[i].received = 0
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
	body_num[i].hp = 103
	body_num[i].max_hp = 103
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
	buffer_write(chat_buffer, buffer_string, worm_head);
	buffer_write(chat_buffer, buffer_string, worm_body);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, total_body_numbers);
	send_all(chat_buffer);
	};
}
//////////////////////////////////////////////////////////////////////////////////////////
out_of_view = 99999



ready_to_attack_with_spike = 0


des = 0