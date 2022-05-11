/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

///////////////////데미지 닳음/////////////////////////////

if global.co_op_mode = 0
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
if co_op_code.is_server = true
{
	if (pl_inhand.gun_kind = 0 && damage_gotten_by = 0 && place_meeting(x,y,pl_inhand) && dilay = 0 && global.swing = 1) || (place_meeting(x,y,gun_bullet) && (instance_place(x,y,gun_bullet)).sender = true)
	{
	damage_gotten_by = 1
	alarm[3] = 1
	}

	if instance_number(pl_inhand_co_op) > 0
	{
		if (pl_inhand_co_op.gun_kind = 0 && damage_gotten_by = 0 && place_meeting(x,y,pl_inhand_co_op) && dilay = 0 && global.swing_co_op = 1) || (place_meeting(x,y,gun_bullet) && (instance_place(x,y,gun_bullet)).sender = false)
		{
		damage_gotten_by = 2
		alarm[3] = 1
		}
	}
}



/// @description 이동

var co_op_knocked_out = -1

if global.co_op_mode = true
{
	if global.knocked_out_co_op != 0
	{
	co_op_knocked_out = 1
	} 
}
else
{
co_op_knocked_out = 1
}

if global.knocked_out = 0 && global.do_not_move = 0 && co_op_knocked_out = 1
{
	if out_of_view > 180
	{
		if des = 0
		{
			if global.co_op_mode = true
			{
				var dis1 = point_distance(player.x,player.y+3,x,y)
				var dis2 = point_distance(player_co_op.x,player_co_op.y+3,x,y)
				
				if dis1 < dis2
				{
				var target_x = player.x
				var target_y = player.y+3
				image_angle = point_direction(x,y,target_x,target_y)-90
				move_towards_point(target_x,target_y,5)
				}
				else
				{
				var target_x = player_co_op.x
				var target_y = player_co_op.y+3
				image_angle = point_direction(x,y,target_x,target_y)-90
				move_towards_point(target_x,target_y,5)
				}
			}
			else
			{
			var target_x = player.x
			var target_y = player.y+3
			image_angle = point_direction(x,y,target_x,target_y)-90
			move_towards_point(target_x,target_y,5)
			}
		}
	}
}
else
{
	des = 1
	if out_of_view > 300
	{
		for(var i = total_body_numbers-1; i > 0; i--)
		{
		instance_destroy(body_num[i])
		}
	instance_destroy()
	}
}

if co_op_code.is_server = true
{
	if ready_to_attack_with_spike > 100
	{
		if global.co_op_mode = true
		{
			var dis1 = point_distance(player.x,player.y+3,x,y)
			var dis2 = point_distance(player_co_op.x,player_co_op.y+3,x,y)
			
			if dis1 < dis2
			{
				if dis1 < 128
				{
					var random_mon_spawn = percentage_k(50)
					if random_mon_spawn = 1
					{
						if instance_number(worm_small_head) < 3
						{
						var _mob_ = instance_create(x,y,worm_small_head);
						_mob_.origin_id = noone
						_mob_.received = 0
						}
					}
					
					
					for(var i = 1; i < 9; i++)
					{
					var spike_ = instance_create(x,y,poison_spike)
					spike_.depth = depth+2
					spike_.image_xscale = 0.5
					spike_.image_yscale = 0.5
					spike_.image_angle = image_angle+20*i
					spike_.direction = image_angle+20*i
					spike_.speed = 3
					ready_to_attack_with_spike = 0
					}
				}
			}
			else
			{
				if dis2 < 128
				{
					var random_mon_spawn = percentage_k(50)
					if random_mon_spawn = 1
					{
						if instance_number(worm_small_head) < 3
						{
						var _mob_ = instance_create(x,y,worm_small_head);
						_mob_.origin_id = noone
						_mob_.received = 0
						}
					}
					
					
					for(var i = 1; i < 9; i++)
					{
					var spike_ = instance_create(x,y,poison_spike)
					spike_.depth = depth+2
					spike_.image_xscale = 0.5
					spike_.image_yscale = 0.5
					spike_.image_angle = image_angle+20*i
					spike_.direction = image_angle+20*i
					spike_.speed = 3
					ready_to_attack_with_spike = 0
					}
				}
			}
		}
		else
		{
			if point_distance(player.x,player.y+3,x,y) < 128
			{
			var random_mon_spawn = percentage_k(50)
				if random_mon_spawn = 1
				{
					if instance_number(worm_small_head) < 3
					{
					var _mob_ = instance_create(x,y,worm_small_head);
					_mob_.origin_id = noone
					_mob_.received = 0
					}
				}
				
				
				for(var i = 1; i < 9; i++)
				{
				var spike_ = instance_create(x,y,poison_spike)
				spike_.depth = depth+2
				spike_.image_xscale = 0.5
				spike_.image_yscale = 0.5
				spike_.image_angle = image_angle+20*i
				spike_.direction = image_angle+20*i
				spike_.speed = 3
				ready_to_attack_with_spike = 0
				}
			}
		}
	}
}


if co_op_code.is_server = true
{
	if (x < xx) || (y < yy) || (x > xxx) || (y > yyy)
	{
	out_of_view ++
	}
	else
	{
	out_of_view = 0
	}
	ready_to_attack_with_spike ++
}


if instance_number(worm_body) <= 5
{
for_draw_damage = hp
hp -= for_draw_damage

var draw_damaged_value = instance_create(x,y,draw_damage)
draw_damaged_value.draw_healing = 0
draw_damaged_value.depth = depth-1
draw_damaged_value.damage = for_draw_damage
}


if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)


if co_op_code.is_server = true
{
var cre_item = instance_create(x,y,obj_item)
cre_item.stucked_item_number = 1
cre_item.vspeed = -3
cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
cre_item.image_yscale = 0.18
cre_item.image_index = 50
cre_item.floor_y = y
cre_item.depth = depth
cre_item.received_item = 0
cre_item.a = irandom_range(9,15)
}




instance_activate_object(floor_pl2)

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_worm_ef
dead_ef.image_index = image_index
	
instance_destroy()
}




if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.WORM_BOSS_STATE);
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
