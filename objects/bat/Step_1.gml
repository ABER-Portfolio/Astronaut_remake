/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
m_damaged(self,5,50,c_white,self,1,1)
}


var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

depth = -(room_width)*1.5



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
	
	if place_meeting(x,y,gun_bullet) || (pl_inhand.gun_kind = 0 && damage_gotten_by = 0 && place_meeting(x,y,pl_inhand) && dilay = 0 && global.swing = 1)
	{
	damage_gotten_by = 1
	alarm[3] = 1
	}

	if instance_number(pl_inhand_co_op) > 0
	{
		if place_meeting(x,y,gun_bullet) || (pl_inhand_co_op.gun_kind = 0 && damage_gotten_by = 0 && place_meeting(x,y,pl_inhand_co_op) && dilay = 0 && global.swing_co_op = 1)
		{
		damage_gotten_by = 2
		alarm[3] = 1
		}
	}
}


if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.BAT_STATE);
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
	buffer_write(chat_buffer, buffer_string, hp);
	send_all(chat_buffer);
	}
	
if dilay = 0
{
	if out_of_view > 100
	{
		if global.co_op_mode = true
		{
		var p_dis = point_distance(player.x,player.y+5,x,y)
		var p_co_dis = point_distance(player_co_op.x,player_co_op.y+5,x,y)
		
		
			if p_dis < p_co_dis
			{
			var target = player
				if global.knocked_out_origin > 0
				{
				target = player_co_op
				}
			}
			else
			{
			var target = player_co_op
				if global.knocked_out_co_op > 0
				{
				target = player
				}
			}
			
			move_towards_point(target.x,target.y+5,1)
			t_speed = 1.8

				if target.x > x
				{
				image_xscale = abs(image_xscale)
				}

				if target.x < x
				{
				image_xscale = -abs(image_xscale)
				}
		}
		else
		{
		move_towards_point(player.x,player.y+5,1)
		t_speed = 1.8
	
			if player.x > x
			{
			image_xscale = abs(image_xscale)
			}

			if player.x < x
			{
			image_xscale = -abs(image_xscale)
			}
		}

	out_of_view = 0
	}

	speed += (t_speed - speed)*0.2
}
	
	
	
	if point_distance(speed,0,0,0) < 0.2
	{
	out_of_view = 100
	}
}


if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)
instance_destroy()

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_bat_ef
dead_ef.image_index = 0

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_bat_ef
dead_ef.image_index = 1

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_bat_ef
dead_ef.image_index = 2
}

if dilay = 2
{
dilay = 0
}