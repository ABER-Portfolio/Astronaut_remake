/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
m_damaged(self,5,50,c_white,self,1,1)
}


if global.co_op_mode = 1
{
	if global.knocked_out > 0 && global.knocked_out_co_op > 0 && global.knocked_out_origin > 0
	{
		if obj_camera.draw_time_left_alpha >= 1
		{
		instance_destroy()
		}
	}
}
else
{
	if global.knocked_out > 0
	{
		if obj_camera.draw_time_left_alpha >= 1
		{
		instance_destroy()
		}
	}
}




hp_t += (hp - hp_t)*0.1

///////////////////데미지 닳음/////////////////////////////
if co_op_code.is_server = true && image_alpha > 0
{
	if (pl_inhand.gun_kind = 0 && damage_gotten_by = 0 && place_meeting(x,y,pl_inhand) && dilay = 0 && global.swing = 1) || (place_meeting(x,y,gun_bullet) && (instance_place(x,y,gun_bullet)).sender = true)
	{
		if place_meeting(x,y,pl_inhand)
		{
			if point_distance(x,floor_y,player.x,player.y) < 28
			{
			damage_gotten_by = 1
			alarm[3] = 1
			}
		}
		else
		{
		damage_gotten_by = 1
		alarm[3] = 1
		}
	}

	if instance_number(pl_inhand_co_op) > 0
	{
		if (pl_inhand_co_op.gun_kind = 0 && damage_gotten_by = 0 && place_meeting(x,y,pl_inhand_co_op) && dilay = 0 && global.swing_co_op = 1) || (place_meeting(x,y,gun_bullet) && (instance_place(x,y,gun_bullet)).sender = false) && point_distance(x,floor_y,player_co_op.x,player_co_op.y) < 28
		{
			if place_meeting(x,y,pl_inhand_co_op)
			{
				if point_distance(x,floor_y,player.x,player.y) < 28
				{
				damage_gotten_by = 2
				alarm[3] = 1
				}
			}
			else
			{
			damage_gotten_by = 2
			alarm[3] = 1
			}
		}
	}
}



//이동

if floor_y < y
{
vspeed = 0
gravity = 0
attack_dilay++
	for(var i = 0; i < total_body_numbers; i++)
	{
		if instance_number(body_num[i]) > 0
		{
		body_num[i].x += (x - body_num[i].x)*0.32
		body_num[i].y += (y - body_num[i].y)*0.32
		}
	}

	if !place_meeting(x,y,worm_dig_point)
	{
	instance_create(x,y,worm_dig_point)
	}
}

if !place_meeting(x,y,worm_dig_point)
{
image_alpha += (1 - image_alpha)/5
}
else
{
image_alpha += (-0.01 - image_alpha)/5
}




if attack_dilay = 120
{
	if global.co_op_mode = false
	{
	target_x = player.x
	target_y = player.y+3.5
	floor_y = target_y+1
	x = target_x
	y = target_y
	instance_create(target_x,target_y+8,worm_dig_point)
	attack_dilay++
	}
	else
	{
	var target = choose(player,player_co_op)
	
	if target = player && global.knocked_out_origin > 0
	{
	target = player_co_op
	}
	
	if target = player_co_op && global.knocked_out_co_op > 0
	{
	target = player
	}
	
	target_x = target.x
	target_y = target.y+8
	floor_y = target_y+1
	x = target_x
	y = target_y
	instance_create(target_x,target_y+8,worm_dig_point)
	attack_dilay++
	}
	
	for(var i = 0; i < total_body_numbers; i++)
	{
	body_num[i].x = x
	body_num[i].y = y
	}
}

if attack_dilay > 120
{
attack_dilay++
	if attack_dilay > 150
	{
	attack_dilay = 0
	gravity = 0.14
	vspeed = -5.1
	}
}

if vspeed > 0
{
image_angle += (180 - image_angle)/5
}
else
{
image_angle += (0 - image_angle)/5
}

if total_body_numbers < 5
{
for_draw_damage = hp
hp -= for_draw_damage

var draw_damaged_value = instance_create(x,y,draw_damage)
draw_damaged_value.draw_healing = 0
draw_damaged_value.depth = depth-1
draw_damaged_value.damage = for_draw_damage
}

depth = -(floor_y+14)

for(var i = 0; i < total_body_numbers; i++)
{
	if instance_exists(body_num[i])
	{
	body_num[i].floor_y = floor_y
	body_num[i].depth = depth+i
	}
}


if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_worm_ef
dead_ef.image_index = image_index+3

if co_op_code.is_server = true
{
	var random_drop = percentage_k(10)

	if random_drop = 1
	{
	var cre_item = instance_create(x,floor_y,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = 50
	cre_item.floor_y = floor_y
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
}





if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.WORM_BOSS_STATE);
	buffer_write(chat_buffer, buffer_string, worm_small_head);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, sprite_index);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, image_speed);
	buffer_write(chat_buffer, buffer_string, image_index);
	buffer_write(chat_buffer, buffer_string, image_alpha);
	buffer_write(chat_buffer, buffer_string, image_angle);
	buffer_write(chat_buffer, buffer_string, image_blend);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, depth);
	buffer_write(chat_buffer, buffer_string, gravity);
	buffer_write(chat_buffer, buffer_string, vspeed);
	buffer_write(chat_buffer, buffer_string, hspeed);
	buffer_write(chat_buffer, buffer_string, -1);
	send_all(chat_buffer);
	}
}
	
instance_destroy()
}




if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.WORM_BOSS_STATE);
	buffer_write(chat_buffer, buffer_string, worm_small_head);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, sprite_index);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, image_speed);
	buffer_write(chat_buffer, buffer_string, image_index);
	buffer_write(chat_buffer, buffer_string, image_alpha);
	buffer_write(chat_buffer, buffer_string, image_angle);
	buffer_write(chat_buffer, buffer_string, image_blend);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, depth);
	buffer_write(chat_buffer, buffer_string, gravity);
	buffer_write(chat_buffer, buffer_string, vspeed);
	buffer_write(chat_buffer, buffer_string, hspeed);
	buffer_write(chat_buffer, buffer_string, hp);
	send_all(chat_buffer);
	}
}
