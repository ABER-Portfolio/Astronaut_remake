/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
t_speed = 0
target_x = x
target_y = y
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

if alpha_p < 1
{
image_alpha += 0.1
alpha_p += 0.1
}

////////////////////////////투명슬라임 알파///////////////////////////////



if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.SLIME_STATE);
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
	buffer_write(chat_buffer, buffer_string, floor_y);
	buffer_write(chat_buffer, buffer_string, hp);
	send_all(chat_buffer);
	}

	
	if alpha_p >= 1
	{
		if alpha_slime = 0 && image_alpha != 0.1
		{
		image_alpha += (-0.0001 - image_alpha)*0.02
		}

		if alpha_slime = 1 && image_alpha != 1
		{
		image_alpha += (0.3 - image_alpha)*0.02
		}

		if alpha_slime = -1 && image_alpha != 0.7
		{
		image_alpha = 0.9
		}


		if image_index > 3
		{
		image_index = 0
		}
	}
}


///////////////////데미지 닳음/////////////////////////////
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

if global.obj_effect = 0
{
	for(var i = 0; i < irandom_range(5,9); i++)
	{
	var sl_ef = instance_create(x,y,slime_effect)
	sl_ef.image_blend = image_blend
	sl_ef.image_xscale = 0.007
	sl_ef.image_yscale = 0.007
	sl_ef.ty = floor_y
	}
}

	if co_op_code.is_server = true
	{
		if buffer_exists(chat_buffer)
		{	
		buffer_seek(chat_buffer, buffer_seek_start, 0);
	
		buffer_write(chat_buffer, buffer_u8, DATA.SLIME_STATE);
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
		buffer_write(chat_buffer, buffer_string, floor_y);
		buffer_write(chat_buffer, buffer_string, -1);
		send_all(chat_buffer);
		}
	
	


	var randomval = percentage_k(50)

	if randomval = 1
	{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.received_item = 0
		cre_item.stucked_item_number = 1
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.a = irandom_range(9,15)

		
		if slime_kind = 1
		{
		cre_item.image_index = 35
		}
		else if slime_kind = 2
		{
		cre_item.image_index = 36
		}
		else
		{
		cre_item.image_index = 34
		}
		
		cre_item.depth = -(5)
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
	}
	else
	{
		var randomval = percentage_k(70)
	
		if randomval = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.stucked_item_number = 1
		cre_item.image_index = 14
		cre_item.depth = -(5)
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.a = irandom_range(9,15)
		}
		else
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.stucked_item_number = 1
		cre_item.image_index = 0
		cre_item.depth = -(5)
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.a = irandom_range(9,15)
		}
	}
}


instance_destroy()
}



if co_op_code.is_server = true
{
	if speed != 0
	{
	speed += (0 - speed)*0.04
	}
	depth = -(floor_y+(image_yscale*52))

	if dilay = 0 && y = floor_y
	{
		if !position_meeting(x,y+12,fl_parents) || !position_meeting(x,y-5,fl_parents) || !position_meeting(x+5,y,fl_parents) || !position_meeting(x-5,y,fl_parents) || place_meeting(x,y,block_hole) || place_meeting(x,y,block_noclip) || place_meeting(x,y,monster_parents)
		{
		vspeed = -(vspeed/2)
		hspeed = -(hspeed/1.5)
		}
	}

	if dilay = 2 && y > floor_y-1
	{
	gravity = 0
	vspeed = 0
	dilay = 0
	}
	
	if y < floor_y
	{
	gravity = 0.1
	}
}


