/// @description Insert description here
// You can write your code in this editor
if(co_op_code.is_server == false)
{
	if global.hazmat_co_op = 0
	{
	pants_run = eye_goggles
	pants_hurt = eye_goggles_hurt
	pants_spin = eye_goggles_spin
	pants_knockedout = eye_goggles_knocked_out

	shirt_run = o2_tank_cloth
	shirt_hurt = o2_tank_hurt_cloth
	shirt_spin = o2_tank_spin_cloth
	shirt_knockedout = o2_tank_knocked_out_cloth
	}
	else
	{
	pants_run = eye_goggles
	pants_hurt = eye_goggles_hurt
	pants_spin = eye_goggles_spin
	pants_knockedout = eye_goggles_knocked_out
	
	shirt_run = o2_tank
	shirt_hurt = o2_tank_hurt
	shirt_spin = o2_tank_spin
	shirt_knockedout = o2_tank_knocked_out
	}
}


if co_op_code.is_server = true
{
image_blend = global.img_bl_col
global.knocked_out_origin = global.knocked_out

	if cannot_move = 0 && spin = 0 && reviving = 0
	{
	sprite_index = orginal_sprite
	}
	
	if global.hazmat = 0
	{
	pants_run = eye_goggles
	pants_hurt = eye_goggles_hurt
	pants_spin = eye_goggles_spin
	pants_knockedout = eye_goggles_knocked_out

	shirt_run = o2_tank_cloth
	shirt_hurt = o2_tank_hurt_cloth
	shirt_spin = o2_tank_spin_cloth
	shirt_knockedout = o2_tank_knocked_out_cloth
	}
	else
	{
	pants_run = eye_goggles
	pants_hurt = eye_goggles_hurt
	pants_spin = eye_goggles_spin
	pants_knockedout = eye_goggles_knocked_out
	
	shirt_run = o2_tank
	shirt_hurt = o2_tank_hurt
	shirt_spin = o2_tank_spin
	shirt_knockedout = o2_tank_knocked_out
	}

	#region //데미지 받음관련
	//넉백이팩트 (추가적인 코드는 데미지를 주는 몬스터한테 있음)
	hspeed += (0 - hspeed)/15
	#endregion
	
	
	//바이옴 배경 세팅
	player_biome_setting()
	

	if global.paused = 0 && global.saving_data = 0
	{
	chunk_loading_time ++
		if chunk_loading_time > floor(global.chunk_loading_speed*70)
		{
		chunk();
		chunk_loading_time = 0
		};
	};
	
	
	
	//해당 바이옴 내에 들어온경우 버프효과 증가중
	if global.biome = 1 || global.biome = 2 || global.biome = 3 || global.biome = 4
	{
	increasing_buff ++
		if increasing_buff > 90
		{
		increasing_buff = 0
		}
	}
	else
	{
	increasing_buff = 0
	}
	
	
	if global.temperature > 50
	{
	global.temperature = 50
	}

	if global.temperature < -20
	{
	global.temperature = -20
	}
	
	
	
	
	if global.dev_mode <= 1 && (audio_is_playing(breath_1)) && (global.o2 > 1) && (global.knocked_out = 0) && !place_meeting(x,y,o2_cable) && global.change_map_to = noone
	{
		if global.n_room != 3 && global.playing_scene = 0
		{
		global.o2 -= 0.00005
		}
	}
	
	
	if cannot_move = 0 && image_index > 13
	{
		if spin = 0
		{
		image_index = 0
		}
	}
	
	
	#region //하즈멧
	if global.hazmat = 0
	{
		if global.gender = 0
		{
		orginal_sprite = pl_move
		}
		if global.gender = 1
		{
		orginal_sprite = pl_move_s_mask
		}
		
	global.armor = 1
	}

	if global.hazmat = 1
	{
	orginal_sprite = pl_move_radiation_hazmat
	global.armor = 2
		if global.de_radiation <= 1
		{
		global.de_radiation = 2
		}
	}

	if global.hazmat = 2
	{
	orginal_sprite = pl_move_cold_hazmat
		if global.de_cold <= 1
		{
		global.de_cold = 2
		}
	global.armor = 4
	}

	if global.hazmat = 3
	{
	orginal_sprite = pl_move_poison_hazmat
		if global.de_poisoning <= 1
		{
		global.de_poisoning = 2
		}
	global.armor = 3
	}

	if global.hazmat = 4
	{
	orginal_sprite = pl_move_fire_hazmat
		if global.de_fire <= 1
		{
		global.de_fire = 2
		}
	global.armor = 3
	}
	
	if global.hazmat = 9
	{
	orginal_sprite = pl_move_projectile_hazmat
		if global.de_radiation <= 1
		{
		global.de_radiation = 2
		}
	global.armor = 5
	}

	#endregion
	
	
	
	if sprite_index != flying_sprite
	{
	depth = -(y+17)
	}
	else
	{
		if place_meeting(x,y,fl_parents)
		{
			if spin = 0
			{
			image_index = global.hazmat
			}
		}
		else
		{
			if spin = 0
			{
			image_index = global.hazmat+1
			}
		}
		
		if global.dev_mode <= 0
		{
		global.hp = -10
		}
	}
	
	
	
	
	

	if spin = 0
	{
		if cannot_move > 0
		{
		sprite_index = hurt_sprite
		image_index = global.hazmat
		}
		else
		{
			if sprite_index = hurt_sprite
			{
			sprite_index = orginal_sprite
			image_index = global.hazmat
			}
		}
	}
	
	


	if place_meeting(x,y,bomb_site)
	{
	code.before_hp = global.hp
	global.hp -= 1
	cannot_move = 1
	damage_dilay = 1
	alarm[10] = 35
	alarm[11] = 40
	hspeed = (image_xscale*2.3)
	
		if spin > 0
		{
		spin = 14
		}
	
		if (!position_meeting(x+4,y+16,fl_parents)) || (!position_meeting(x-4,y+16,fl_parents)) || (!position_meeting(x,y+16,fl_parents)) || (!position_meeting(x,y,fl_parents)) || place_meeting(x+4,y+4,block_parents) || place_meeting(x-4,y+4,block_parents) || place_meeting(x+4,y+16,block_parents) || place_meeting(x-4,y+16,block_parents)
		{
		hspeed = 0
		vspeed = 0
		}
	}
	
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.P1_STATE);
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
buffer_write(chat_buffer, buffer_string, global.knocked_out_origin);
buffer_write(chat_buffer, buffer_string, spin);
buffer_write(chat_buffer, buffer_string, cannot_move);
buffer_write(chat_buffer, buffer_string, ((global.suit_col)));
buffer_write(chat_buffer, buffer_string, ((global.goggles_col)));
buffer_write(chat_buffer, buffer_string, ((global.shirt_run_col)));
buffer_write(chat_buffer, buffer_string, global.hazmat);
send_all(chat_buffer);
}