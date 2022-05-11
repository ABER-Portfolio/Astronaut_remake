/// @description Insert description here
// You can write your code in this editor
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



if instance_number(following_target) = 0 || (instance_number(following_target) > 0 && following_target.image_index = 2)
{
for_draw_damage = hp

var draw_damaged_value = instance_create(x,y,draw_damage)
draw_damaged_value.draw_healing = 0
draw_damaged_value.depth = depth-1
draw_damaged_value.damage = for_draw_damage
hp -= for_draw_damage
}
else
{
	if instance_number(following_target) > 0
	{
		if !place_meeting(x,y,following_target)
		{
		x += (following_target.x - x)*0.2
		y += (following_target.y - y)*0.2
		}
		image_angle += ((point_direction(x,y,following_target.x,following_target.y)-90) - image_angle)*0.2
		direction = image_angle
	}
}


if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)
instance_destroy()

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_worm_ef
dead_ef.image_index = image_index+3

	if instance_number(parent_id) > 0
	{
	parent_id.total_body_numbers --
	}
}

if behind_body != noone
{
	if instance_number(behind_body) = 0
	{
	image_index = 2
	}
}



if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.WORM_BOSS_BODY_STATE);
	buffer_write(chat_buffer, buffer_string, worm_body);
	buffer_write(chat_buffer, buffer_string, body_num);
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
