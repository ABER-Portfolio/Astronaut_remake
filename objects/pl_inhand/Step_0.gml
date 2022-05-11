/// @description Insert description here
// You can write your code in this editor

if co_op_code.is_server = true
{
	if image_index = 87 && global.rainy = 0
	{
		//파티클
		for(var i = 0; i < choose(1,1,1,1,1,2,2,3); i++)
		{
		randomize()
		var scale_fire = choose(0.67,0.68,0.69,0.7)
		var ef_fire = instance_create(x+irandom_range(0,image_xscale*10),y+irandom_range(-15,0),fire_noburn)
		ef_fire.image_xscale = scale_fire*0.2;
		ef_fire.image_yscale = scale_fire*0.2;
		ef_fire.vspeed = irandom_range(-160,-50)/130;
		ef_fire.hspeed = image_xscale*irandom_range(0,160)/100;
		ef_fire.scale_min = irandom_range(10,50)/2500;
		ef_fire.floor_y = y+4+(irandom_range(-10,10)/10);
		ef_fire.depth = depth-choose(-1,0,1)
		}
	}
	
	
	
	if instance_number(player) > 0 && cool_time > 0 && player.spin = 0
	{
		if (image_index = 7 || image_index = 26 || image_index = 55) && sprite_index = spr_pickaxe
		{
			//파티클
			for(var i = 0; i < choose(1,1,1,1,1,2,2,3); i++)
			{
			randomize()
			var scale_fire = choose(0.67,0.68,0.69,0.7)
			var ef_fire = instance_create(x+irandom_range(0,image_xscale*10),y+irandom_range(-15,0),fire_noburn)
			ef_fire.image_xscale = scale_fire*0.2;
			ef_fire.image_yscale = scale_fire*0.2;
			ef_fire.vspeed = irandom_range(-160,-50)/130;
			ef_fire.hspeed = image_xscale*irandom_range(0,160)/100;
			ef_fire.scale_min = irandom_range(10,50)/2500;
			ef_fire.floor_y = y+4+(irandom_range(-10,10)/10);
			ef_fire.depth = depth-choose(-1,0,1)
			}
		}
	
		if (image_index = 9 || image_index = 29 || image_index = 42 || image_index = 57) && sprite_index = spr_pickaxe
		{
			//파티클
			for(var i = 0; i < choose(1,1,1,1,1,2,2,3); i++)
			{
			var ef_fire = instance_create(x+irandom_range(0,image_xscale*10),y+irandom_range(-15,0),poison_effect)
			}
		}
	
		if (image_index = 8 || image_index = 28 || image_index = 56) && sprite_index = spr_pickaxe
		{
			for(var i = 0; i < choose(1,1,1,1,1,2,2); i++)
			{
			var sl_ef = instance_create(x,y,slime_effect)
			sl_ef.image_blend = $FFFFFF99
			sl_ef.image_xscale = 0.007
			sl_ef.image_yscale = 0.007
			sl_ef.ty = y+4
			}
		}
	}
}


if instance_number(player) > 0
{
	if instance_number(BG_blind) = 0
	{
		if co_op_code.is_server = true
		{
			if !instance_exists(light)
			{
			light = instance_create(x,y,objLight_for_obj)
			}
			else
			{
				if instance_number(fallen_scene) > 0
				{
				light.x = fallen_scene.x
				light.y = fallen_scene.y
				}
				else
				{
				light.x = player.x
				light.y = player.y
				}
			light.lightxs = 96
			light.lightys = 96
			light.lightcol = $ffffff
			light.alpha = 0
				if global.inhand_item_type = spr_pickaxe
				{
					if global.inhand_item = 16
					{
					light.alpha = 0.7
					}
					else
					{
					light.alpha = 0
					}
				}
				else
				{
				light.alpha = 0
				}
			}
			
			
			
			
			if !instance_exists(light_p)
			{
			light_p = instance_create(x,y,objLight_for_obj)
			}
			else
			{
			light_p.x = player.x
			light_p.y = player.y
			light_p.lightxs = 128
			light_p.lightys = 128
			light_p.lightcol = $FFB2FFEE
			light_p.alpha = 0
				if global.shining_self > 0
				{
				light_p.alpha = 0.7
				}
				else
				{
				light_p.alpha = 0
				}
			}
		}
		else
		{
			if !instance_exists(light)
			{
			light = instance_create(x,y,objLight_for_obj)
			}
			else
			{
			light.x = player.x
			light.y = player.y
			light.lightxs = 96
			light.lightys = 96
			light.lightcol = $ffffff
			light.alpha = 0
				if sprite_index = spr_pickaxe
				{
					if image_index = 16
					{
					light.alpha = 0.7
					}
					else
					{
					light.alpha = 0
					}
				}
				else
				{
				light.alpha = 0
				}
			}
			
			
			
			if !instance_exists(light_p)
			{
			light_p = instance_create(x,y,objLight_for_obj)
			}
			else
			{
			light_p.x = player.x
			light_p.y = player.y
			light_p.lightxs = 128
			light_p.lightys = 128
			light_p.lightcol = $FFB2FFEE
			light_p.alpha = 0
				if global.shining_self_co_op > 0
				{
				light_p.alpha = 0.7
				}
				else
				{
				light_p.alpha = 0
				}
			}
		}
	}
}




if(co_op_code.is_server == true)
{
global.attack_damage_origin = global.attack_damage
global.swing_origin = global.swing
	if instance_number(player) > 0
	{
		
		
		
		
		

	image_index = global.inhand_item
	sprite_index = global.inhand_item_type

	set_inhand_item_info()


	depth = player.depth-2

	p_x += (0 - p_x)/7
	if global.weapon_kind = 0 //곡괭이 && 칼
	{
	y = player.y+5
	}
	
	if global.weapon_kind = 1 //곡괭이 && 칼
	{
	y = (player.y+5)
		if cool_time = 1 && player.spin = 0
		{
			if scale = 1
			{
			player.image_xscale = abs(player.image_xscale)*(-1)
			}
			else
			{
			player.image_xscale = abs(player.image_xscale)
			}
		}
		image_xscale = (global.tool_size*(-abs(player.image_xscale)/player.image_xscale))
	}
	
	if global.weapon_kind = 2 //창
	{
	image_xscale = global.tool_size
		if ready_to_attack = 0
		{
			if scale = 1
			{
				if cool_time = 1 && player.spin = 0
				{
				player.image_xscale = abs(player.image_xscale)*(-1)
				}
			image_angle = -45
			}
			else
			{
				if cool_time = 1 && player.spin = 0
				{
				player.image_xscale = abs(player.image_xscale)
				}
			image_angle = 45
			}
		}
	
	
		if ready_to_attack = 1
		{
			if player.image_xscale < 0
			{
			image_angle = -45
			}
			else
			{
			image_angle = 45+90
			}
		}
	}
	
	if global.weapon_kind = 5 //총기
	{
	x = player.x
	y = player.y+6
	image_xscale = global.tool_size
	
		var angle_ = 360+point_direction(x,y,obj_mouse.x,obj_mouse.y)
		
		if angle_ > 450 && angle_ <= 630
		{
			if cool_time = 1 && player.spin = 0
			{
			player.image_xscale = abs(player.image_xscale)
			}
		image_yscale = -global.tool_size
		}
		else
		{
			if cool_time = 1 && player.spin = 0
			{
			player.image_xscale = abs(player.image_xscale)*(-1)
			}
		image_yscale = global.tool_size
		}
		image_angle = angle_+sign(player.image_xscale)*45
		
	}




	//////////////////////////////////////////////////////
	if global.weapon_kind != 5 //총기
	{
	image_yscale = global.tool_size
	image_xscale = (global.tool_size*(-abs(player.image_xscale)/player.image_xscale))
	}
	
	
	
	
	
	
	
	
	
	
	if player.image_xscale > 0
	{
		if global.weapon_kind = 2
		{
		y = player.y+5
		x = player.x+8-p_x
		}
		else
		{
			if (global.weapon_kind = 3)
			{
			y = player.y+4
			x = player.x-8
				if ready_to_attack = 0
				{
				image_angle += (-70 - image_angle)/15
				}
			}
			else if global.weapon_kind != 5
			{
			x = player.x-6
				if ready_to_attack = 0
				{
				image_angle += (-10 - image_angle)*0.2
				}
				else
				{
				image_angle += (-10 - image_angle)/13
				}
			}
		}
	}
	else
	{
		if global.weapon_kind = 2
		{
		y = player.y+5
		x = player.x-8+p_x
		}
		else
		{
			if (global.weapon_kind = 3)
			{
			y = player.y+4
			x = player.x+8
				if ready_to_attack = 0
				{
				image_angle += (70 - image_angle)/15
				}
			}
			else if global.weapon_kind != 5
			{
			x = player.x+6
				if ready_to_attack = 0
				{
				image_angle += (10 - image_angle)*0.2
				}
				else
				{
				image_angle += (10 - image_angle)/13
				}
			}
		}
	}
		
	
	
	
	
	


	}
	
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.P1_INHAND);
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
	buffer_write(chat_buffer, buffer_string, cool_time);
	buffer_write(chat_buffer, buffer_string, global.swing);
	buffer_write(chat_buffer, buffer_string, gun_kind);
	buffer_write(chat_buffer, buffer_string, global.shining_self);
	send_all(chat_buffer);
	}
	
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.SWING);
	buffer_write(chat_buffer, buffer_string, global.attack_damage);
	send_all(chat_buffer);
	}
}