/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
m_damaged(self,5,50,c_white,self,1,1)
}


if searched != 1
{
hp = max_hp
}

if co_op_code.is_server = true
{
	if instance_number(pl_inhand) > 0
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
}

if hp < 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)

global.flower_boss_killed = 1
global.flower_boss_raid_start = 0

if co_op_code.is_server = true
{
	if instance_number(flower_boss_vine) > 0
	{
	flower_boss_vine.hp = -1
	}

	instance_destroy()

	var cre_item = instance_create(x,y+8,obj_item)
	cre_item.image_index = 68
	cre_item.floor_y = y
	cre_item.received_item = 0
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -1
	cre_item.depth = -(cre_item.floor_y)
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.a = irandom_range(9,15)
	instance_activate_object(obj_droped_item_parents)

	var cre_item = instance_create(x,y+8,obj_item)
	cre_item.image_index = 13
	cre_item.floor_y = y
	cre_item.received_item = irandom_range(4,8)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -1
	cre_item.depth = -(cre_item.floor_y)
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.a = irandom_range(9,15)
	instance_activate_object(obj_droped_item_parents)

	var cre_item = instance_create(x,y+8,obj_item)
	cre_item.image_index = 38
	cre_item.floor_y = y
	cre_item.received_item = irandom_range(16,32)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -1
	cre_item.depth = -(cre_item.floor_y)
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.a = irandom_range(9,15)
	instance_activate_object(obj_droped_item_parents)
	}
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



