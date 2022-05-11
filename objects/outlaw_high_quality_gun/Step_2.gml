/// @description Insert description here
// You can write your code in this editor
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





if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)

var dead_ef = instance_create(x,y,dead_head)
dead_ef.image_index = 12




if co_op_code.is_server = true
{
	var _random_item_drops_ = percentage_k(5)
	if _random_item_drops_ = 1
	{
	var _random_item_drops_ = percentage_k(50)
		if _random_item_drops_ = 1
		{
		var cre_item = instance_create(x,y+8,obj_item_tools)
		cre_item.image_index = random_bow
		cre_item.floor_y = y
		cre_item.received_item = 0
		cre_item.stucked_item_number = 1
		cre_item.vspeed = -1
		cre_item.depth = -(cre_item.floor_y)
		cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
		cre_item.image_yscale = 0.18
		cre_item.a = irandom_range(9,15)
		}
		else
		{
		var cre_item = instance_create(x,y+8,obj_item_clothes)
		if sprite_index = pl_move_radiation_hazmat
		{
		cre_item.image_index = 1
		}
		if sprite_index = pl_move_poison_hazmat
		{
		cre_item.image_index = 3
		}
		if sprite_index = pl_move_fire_hazmat
		{
		cre_item.image_index = 4
		}
		if sprite_index = pl_move_cold_hazmat
		{
		cre_item.image_index = 2
		}
		cre_item.floor_y = y
		cre_item.received_item = 0
		cre_item.stucked_item_number = 1
		cre_item.vspeed = -1
		cre_item.depth = -(cre_item.floor_y)
		cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
		cre_item.image_yscale = 0.18
		cre_item.a = irandom_range(9,15)
		}
	instance_activate_object(obj_droped_item_parents)
	}
	else
	{
	var cre_item = instance_create(x,y+8,obj_item)
	cre_item.image_index = choose(38,38,38,39,39,39,40,40,40,32)
	cre_item.floor_y = y
	cre_item.received_item = 0
	cre_item.stucked_item_number = irandom_range(2,10)
	cre_item.vspeed = -1
	cre_item.depth = -(cre_item.floor_y)
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.a = irandom_range(9,15)
	instance_activate_object(obj_droped_item_parents)
	}
}

	if global.obj_effect = 0
	{
		for(var i = 0; i < irandom_range(5,9); i++)
		{
		var sl_ef = instance_create(x,y,slime_effect)
		sl_ef.image_blend = c_green
		sl_ef.image_xscale = 0.007
		sl_ef.image_yscale = 0.007
		sl_ef.ty = y+16
		}
	}
instance_destroy()
}

	if co_op_code.is_server = true
	{
		if buffer_exists(chat_buffer)
		{	
		buffer_seek(chat_buffer, buffer_seek_start, 0);
	
		buffer_write(chat_buffer, buffer_u8, DATA.HUMAN_KIND_MOB_STATE);
		buffer_write(chat_buffer, buffer_string, object_index);
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
		};
	};