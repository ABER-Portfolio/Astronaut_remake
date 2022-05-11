/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(co_op_code.is_server == true) && instance_number(player) > 0 && player.spin = 0 && global.stemina > 0
{
	if ready_to_throw = 0 && global.inv_open = 0
	{
		if cool_time = 0 && global.inhand_item != -1 && global.inhand_item != noone && global.knocked_out = 0 && ready_to_attack = 0 && global.inhand_item_type != none_sprite
		{
		global.stemina_min -= 0.01
		
			if abs(global.movement_speed) > 0.5
			{
				if sign(global.movement_speed) != 0
				{
				global.movement_speed = (sign(global.movement_speed))*0.5
				}
				else
				{
				global.movement_speed = (image_xscale)*0.5
				}
			}
		
			if abs(global.hmovement_speed) > 0.4
			{
			global.hmovement_speed = (sign(global.hmovement_speed))*0.4
			}
		
		
		//global.swing이 1 이상일경우 광물에 닿은경우 채굴됨.
		//angle += 1
		if gun_kind != 0
		{
		global.swing = 2
		global.swing_origin = 2
		}
		else
		{
		global.swing = 1
		global.swing_origin = 1
		}
		cool_time = 1
		
		if global.inhand_item_type = spr_pickaxe && global.inhand_item = 28
		{
		randomize()
		var _s_meteor_ = instance_create(x,y,snow_meteor)
		_s_meteor_.target_x = mouse_x
		_s_meteor_.target_y = mouse_y
		}
		
		if global.inhand_item != 14
		{
			if gun_kind = 1
			{
				if inventory_number_find_by_name(item39,0) > 0
				{
				inventory_item_sub(item39,1,0)
				var _bullet_ = instance_create(x,y,gun_bullet)
				_bullet_.received = 0
				_bullet_.sender = co_op_code.is_server
				_bullet_.image_xscale = 0.5
				_bullet_.image_yscale = 0.5
				_bullet_.depth = depth+1
				_bullet_.direction = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)
				_bullet_.image_angle = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)-45
				_bullet_.speed = global.projectile_speed*1.2
			
					if global.inhand_item = 69
					{
					_bullet_.image_index = 1
					}
					else if (global.inhand_item = 70 || global.inhand_item = 72 || global.inhand_item = 73)
					{
					_bullet_.image_index = 2
					}
					else
					{
					_bullet_.image_index = 0
					}
				}
			}
		
			if gun_kind = 2
			{
				if inventory_number_find_by_name(item40,0) > 0
				{
				inventory_item_sub(item40,1,0)
				var _bullet_ = instance_create(x,y,gun_bullet)
				_bullet_.received = 0
				_bullet_.sender = co_op_code.is_server
				_bullet_.image_xscale = 0.5
				_bullet_.image_yscale = 0.5
				_bullet_.depth = depth+1
				_bullet_.direction = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)
				_bullet_.image_angle = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)-45
				_bullet_.speed = global.projectile_speed*1.2
			
					if global.inhand_item = 69
					{
					_bullet_.image_index = 1
					}
					else if (global.inhand_item = 70 || global.inhand_item = 72 || global.inhand_item = 73)
					{
					_bullet_.image_index = 2
					}
					else
					{
					_bullet_.image_index = 0
					}
				}
			}
		
			if gun_kind = 3
			{
				if inventory_number_find_by_name(item41,0) > 0
				{
				inventory_item_sub(item41,1,0)
				var _bullet_ = instance_create(x,y,gun_bullet)
				_bullet_.received = 0
				_bullet_.sender = co_op_code.is_server
				_bullet_.image_xscale = 0.5
				_bullet_.image_yscale = 0.5
				_bullet_.depth = depth+1
				_bullet_.direction = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)
				_bullet_.image_angle = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)-45
				_bullet_.speed = global.projectile_speed*1.5
			
					if global.inhand_item = 69
					{
					_bullet_.image_index = 1
					}
					else if (global.inhand_item = 70 || global.inhand_item = 72 || global.inhand_item = 73)
					{
					_bullet_.image_index = 2
					}
					else
					{
					_bullet_.image_index = 0
					}
				}
			}
			
			if gun_kind = 4
			{
				for(var i = 0; i < ui_inv.inventory_width * ui_inv.inventory_height; i++)
				{
					if ui_inv.inventory_spr[i] = spr_only_items && ui_inv.inventory_img_index[i] >= 62 && ui_inv.inventory_img_index[i] <= 67
					{
					inventory_item_sub(ui_inv.inventory_item_equip[i],1,0)
					var _img_ind = ui_inv.inventory_img_index[i]
					
					var _bullet_ = instance_create(x,y,gun_bullet)
					_bullet_.received = 0
					_bullet_.sender = co_op_code.is_server
					_bullet_.image_xscale = 0.5
					_bullet_.image_yscale = 0.5
					_bullet_.depth = depth+1
					_bullet_.direction = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)
					_bullet_.image_angle = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)-45
					_bullet_.speed = global.projectile_speed*3
					_bullet_.image_index = _img_ind-57
					break;
					}
				}
			}
		}
		

	



		/////////////스윙
		if global.weapon_kind = 1
		{
			if x < obj_mouse.x
			{
			scale = 1
			}
		
			if x > obj_mouse.x
			{
			scale = -1
			}
		image_xscale = global.tool_size*(scale)
		image_angle += -80*scale
		}
		else if global.weapon_kind = 2
		{
		p_x = 24
			if x < obj_mouse.x
			{
			scale = 1
			}
		
			if x > obj_mouse.x
			{
			scale = -1
			}
		}
		else if (global.weapon_kind = 3)
		{
		image_angle += -140*(abs(image_xscale)/image_xscale)
		}
		else
		{
		image_angle += -75*(abs(image_xscale)/image_xscale)
		}
		
		
	
		
		


		
		
			//////사운드 이팩트
			if global.tool_size > 2.6
			{
			var sf_ef = audio_play_sound(choose(swing_1,swing_2,swing_5),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
			}
			else
			{
			var sf_ef = audio_play_sound(choose(swing_3,swing_4,swing_6),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
			}
			alarm[2] = 1
			alarm[1] = global.attacking_speed
			
			
			
			
		
		
		}



		////////////////////////////////////////////////////////////////////

		for(var i = 0; i <= 5; i++)
		{
			if device_mouse_check_button(i,mb_left) && global.autoswing = 1
			{
			alarm[3] = 1
			}
		}
	}
}