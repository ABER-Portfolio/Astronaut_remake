/// @description Insert description here
// You can write your code in this editor
instance_activate_object(pl_inhand_co_op)

if place_meeting(x,y,safe_zone)
{
global.safe_zone_co_op = 1
}
else
{
global.safe_zone_co_op = 0
}

if place_meeting(x,y,danger_zone)
{
global.in_monument_now_co_op = 1
}
else
{
global.in_monument_now_co_op = 0
}




if co_op_code.is_server = false
{
	if global.knocked_out > 0
	{
	reviving = 0
	}
	
	if global.co_op_mode = 1 && global.knocked_out_origin > 0
	{
		if point_distance(x,y,player.x,player.y) < 16
		{
			if reviving = 0 && revive_message = 0
			{
				if global.language = 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "Right mouse click to help"
				}
				if global.language = 1
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "우클릭을 하여 일으켜 세울 수 있습니다"
				}
			revive_message ++
			}
			
			if mouse_check_button_pressed(mb_right)
			{
			reviving += 0.002
			global.playing_scene = 1
			}
			
			if reviving > 0 && mouse_check_button(mb_right)
			{
			global.playing_scene = 0
			reviving += 0.002
			global.do_not_move2 = 1
			
				if reviving > 1
				{
				buffer_seek(chat_buffer, buffer_seek_start, 0);
				buffer_write(chat_buffer, buffer_u8, DATA.REVIVE_OTHER_PLAYER);
				buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
				send_all(chat_buffer);
				global.knocked_out_origin = 0
				global.do_not_move2 = 0
				reviving = 0
				revive_message = 0
				}
			}
			
			if mouse_check_button_released(mb_right)
			{
			reviving = 0
			global.do_not_move2 = 0
			}
		}
	}
	
	
	
	
	if global.stemina <= 0
	{
	global.movement_speed += (0 - global.movement_speed)*0.03
	global.hmovement_speed += (0 - global.hmovement_speed)*0.03
	global.hp = 0
		if tired = 0
		{
		chat_up("I am tired",1)
		tired = 1
		}
	}
	else
	{
		if tired > 0
		{
		tired -= 0.001
		}
		
		if tired < 0
		{
		tired = 0
		}
	}
	
	if global.wind_dir > 0
	{
		if image_xscale > 0
		{
		global.movement_speed += (-global.wind_dir*0.006 - global.movement_speed)*0.02
		}
		if image_xscale < 0
		{
		global.movement_speed += (global.movement_speed+(global.wind_dir)*0.02 - global.movement_speed)*0.02
		}
	}



	if spin <= 0 && cannot_move = 0 && global.stemina > 0.4 && global.do_not_move2 = 0
	{
		if keyboard_check_pressed(vk_space) && global.chat_activity = false && global.knocked_out = 0 && global.do_not_move = 0
		{
			if not place_meeting(x-1*(abs(image_xscale)/image_xscale),y+3,block_parents)
			{
			var spr_name = sprite_get_name(sprite_index)
				if sprite_index != flying_sprite && sprite_index != hurt_sprite
				{
				pl_inhand_co_op.cool_time = 1
				spin = 1
				sprite_index = asset_get_index(string(spr_name)+"_spin")
				image_speed = 1
				image_index = 0
					if ((global.flip_movement > 0 && keyboard_check(ord("S"))) || (global.flip_movement <= 0 && keyboard_check(ord("W"))))
					{
					m_h_p = -1
					}
					
					if ((global.flip_movement > 0 && keyboard_check(ord("W"))) || (global.flip_movement <= 0 && keyboard_check(ord("S"))))
					{
					m_h_p = 1
					}
					
					if ((global.flip_movement > 0 && keyboard_check(ord("D"))) || (global.flip_movement <= 0 && keyboard_check(ord("A"))))
					{
					m_v_p = -1
					}
					
					if ((global.flip_movement > 0 && keyboard_check(ord("A"))) || (global.flip_movement <= 0 && keyboard_check(ord("D"))))
					{
					m_v_p = 1
					}
				}
			}
		}
	}
	
	
	
	if spin > 0
	{
	image_index = spin
	spin += 0.3
	cannot_move = 1
	
	
	if m_v_p != 0
	{
	global.movement_speed = (11-floor(spin))*0.22*sign(m_v_p)
	global.hmovement_speed = (11 - floor(spin))*0.12*sign(m_h_p)
	}
	else
	{
	var sign_m_h_p = sign(m_h_p)
	
		if sign_m_h_p != 0
		{
		global.hmovement_speed = (11-floor(spin))*0.2*sign_m_h_p
		}
		else
		{
		global.movement_speed = (11-floor(spin))*0.22
		}
	}
	
		if spin >= 11
		{
		m_h_p = 0
		m_v_p = 0
		image_speed = 0
		sprite_index = orginal_sprite
		image_index = 0
		cannot_move = 0
		spin = 0
		pl_inhand_co_op.cool_time = 0
		}
	}
	
	
	
	if instance_number(BG_blind) != 0 || global.knocked_out_co_op != 0 || (cannot_move != 0 && spin = 0) || global.do_not_move2 != 0
	{
	global.movement_speed += (0 - global.movement_speed)*0.23
	global.hmovement_speed += (0 - global.hmovement_speed)*0.23
	move_released = 1
	hmove_released = 1
	}
	
	if abs(global.movement_speed) < 0.08
	{
	global.movement_speed = 0
	}
	
	if abs(global.hmovement_speed) < 0.08
	{
	global.hmovement_speed = 0
	}
	
	
	
	
	if global.knocked_out_co_op = 0 && global.do_not_move = 0 && global.chat_activity = false && spin = 0
	{
	var resized_code1 = global.t_hmovement_speed/1.5*global.plus_speed_percentage
	var resized_code2 = global.t_movement_speed/1.5*global.plus_speed_percentage
		if global.do_not_move2 = 0 && cannot_move = 0
		{
			if ((global.flip_movement > 0 && keyboard_check(ord("W"))) || (global.flip_movement <= 0 && keyboard_check(ord("S"))))
			{
			hmove_released = 0
				if global.hmovement_speed < 0
				{
				global.hmovement_speed = 0
				}
			global.hmovement_speed += (resized_code1 - global.hmovement_speed)*0.06
			}
	
			if ((global.flip_movement > 0 && keyboard_check(ord("S"))) || (global.flip_movement <= 0 && keyboard_check(ord("W"))))
			{
			hmove_released = 0
				if global.hmovement_speed > 0
				{
				global.hmovement_speed = 0
				}
			global.hmovement_speed += (-resized_code1 - global.hmovement_speed)*0.06
			}
		
			if ((global.flip_movement > 0 && keyboard_check(ord("A"))) || (global.flip_movement <= 0 && keyboard_check(ord("D"))))
			{
			image_xscale = -1
			move_released = 0
				if global.movement_speed < 0
				{
				global.movement_speed = 0
				}
			global.movement_speed += (resized_code2 - global.movement_speed)*0.06
			}
		
			if ((global.flip_movement > 0 && keyboard_check(ord("D"))) || (global.flip_movement <= 0 && keyboard_check(ord("A"))))
			{
			image_xscale = 1
			move_released = 0
				if global.movement_speed > 0
				{
				global.movement_speed = 0
				}
			global.movement_speed += (-resized_code2 - global.movement_speed)*0.06
			}
		}
		
		
		if !keyboard_check(ord("A")) && !keyboard_check(ord("D"))
		{
		move_released = 1
		}
		
		if !keyboard_check(ord("W")) && !keyboard_check(ord("S"))
		{
		hmove_released = 1
		}
		

		
		if move_released = 1
		{
		global.movement_speed += (0 - global.movement_speed)*0.2
		}
		
		if hmove_released = 1
		{
		global.hmovement_speed += (0 - global.hmovement_speed)*0.2
		}
	}
	
	
	
	
	
	
	var mp_m = sign(global.movement_speed)
	
	
	var _positive = 0
	for(var i = -7; i < 2; i++)
	{
		if mp_m != 0 && position_meeting(x+7*mp_m,y+11,fl_parents) && !position_meeting(x+7*mp_m,y+11+i,block_noclip)
		{
		_positive = 1
		}
		else
		{
		move_released = 1
		image_speed = 0
		global.movement_speed = 0
		hspeed = 0
		}
	}
	
	if _positive = 1
	{
	x += global.movement_speed
	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.P2_XX);
	buffer_write(chat_buffer, buffer_string, x);
	send_all(chat_buffer);
	}
	
	
	
	var mp_m = sign(global.hmovement_speed)
	
	if mp_m = -1
	{
	mp_m = -4
	}


	var _positive = 0
	for(var i = -6; i < 7; i++)
	{
		if position_meeting(x,y+11+mp_m*2,fl_parents) && !position_meeting(x+i,y+11+mp_m*2,block_noclip)
		{
		_positive = 1
		}
		else
		{
		hmove_released = 1
		image_speed = 0
		global.hmovement_speed = 0
		vspeed = 0
		}
	}
	
	if _positive = 1
	{
	y += global.hmovement_speed*0.88
	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.P2_YY);
	buffer_write(chat_buffer, buffer_string, y);
	send_all(chat_buffer);
	}

	
	
	
	
	if abs(global.movement_speed) > abs(global.hmovement_speed)
	{
	image_speed = abs(global.movement_speed*2.7)
	}
	else
	{
	image_speed = abs(global.hmovement_speed*2.665)
	}
	
	
	if move_released = 1 && hmove_released = 1
	{
	image_index += (0 - image_index)/3
		if abs(image_index) < 0.5
		{
		image_index = 0
		}
	}
	
	
	
	
	if check_steps = 0 && global.knocked_out = 0
	{
		if floor(image_index) = 4 || floor(image_index) = 10
		{
		var run_sef = audio_play_sound(choose(run1,run2,run3),1,false)
		audio_sound_gain(run_sef,0.1*global.master_volume*global.sfx_volume*global.scene_volume,1)
		check_steps = 1
		
			if global.obj_effect = 0
			{
			///////////////먼지생성
			var movement_ef = instance_create(x,y+10+(irandom_range(-3,3)),dust);
			movement_ef.ahspeed = global.hmovement_speed
			movement_ef.avspeed = abs(global.movement_speed)*image_xscale
			movement_ef.depth = depth+1
			movement_ef.received = 0
			}
		}
	}
	
	if image_index > 4 && image_index <= 5
	{
	check_steps = 0
	}
	
	if image_index > 10 && image_index <= 11
	{
	check_steps = 0
	}
}
else
{
	if co_op_mode_spin > 0
	{
	co_op_mode_spin += 0.3
	}
	
	if co_op_mode_spin >= 11
	{
	co_op_mode_spin = 0
	}
}