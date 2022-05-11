/// @description Insert description here
// You can write your code in this editor

if global.change_map_to < 0 && instance_number(creating_maps) = 0
{
view_shake(5,1,4)

	if global.obj_effect = 0
	{
	///////////////먼지생성
	randomize()
		repeat(choose(3,3,3,4,4,5,5))
		{
		randomize()
		
		var target_ = player
		
		if global.co_op_mode = 1
		{
			if point_distance(player.x,player.y,x,y,) > point_distance(player_co_op.x,player_co_op.y,x,y,)
			{
			target_ = player_co_op
			}
		}
		
			if instance_number(target_) > 0
			{
			var movement_ef = instance_create(x+irandom_range(-5,5),y+8+irandom_range(-5,5),dust);
			movement_ef.ahspeed = -irandom_range(0,15)/10*sign(abs(x - target_.x))
			movement_ef.avspeed = -irandom_range(0,15)/10*sign(abs(x - target_.x))
			movement_ef.depth = depth-1
			movement_ef.received = 0
			}
		}
	}
	
	
	
	if draw_true = 1
	{
	instance_activate_object(noclip_block)
	instance_destroy(noclip_block)

	if co_op_code.is_server = true
	{
		if instance_number(player) > 0
		{
		var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	else
	{
		if instance_number(player_co_op) > 0
		{
		var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}


	ore_break()
	
	
	if co_op_code.is_server = true || global.n_room = 2
	{
		if sprite_index = item_sp
		{
			if block_num = -1
			{
				if image_index >= 49 && image_index <= 52
				{
				var cre_item = instance_create(x,y,obj_item)
				cre_item.stucked_item_number = 1
				cre_item.image_index = 39
				randomize()
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
					for(var i = 0; i < 5; i++)
					{
					var cre_item = instance_create(x,y,obj_item)
					cre_item.stucked_item_number = 1
					cre_item.image_index = (image_index-31)*2
					randomize()
					cre_item.depth = -(5+i)
					cre_item.floor_y = y+irandom_range(0,8);
					cre_item.y = cre_item.floor_y-2
					cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
					cre_item.received_item = 0
					cre_item.hspeed = irandom_range(-200,200)*0.01;
					cre_item.floor_y = y+irandom_range(0,8);
					cre_item.a = irandom_range(9,15)
					}
				}
				
				randomize()
				
				if global.n_room <= 2
				{
				var drill_used_plus_point = 0
					if global.inhand_item_type = spr_pickaxe && global.inhand_item = 10
					{
					drill_used_plus_point = 5
					}
					
					if global.inhand_item_type = spr_pickaxe && global.inhand_item = 11
					{
					drill_used_plus_point = 9
					}
					
					if global.cave_floor < 9
					{
					var random_cave_hole = percentage_k(4+global.cave_floor*2+drill_used_plus_point)
					}
					else
					{
					var random_cave_hole = percentage_k(22+drill_used_plus_point)
					}
				}
				else
				{
				var random_cave_hole = 0
				}
	
				if random_cave_hole = 1
				{
				var cre_bl = instance_create(x,y,block_hole)
				cre_bl.received = 0
	
					for(var i = 0; i < 8; i++)
					{
					randomize()
					var movement_ef = instance_create(x,y+10+(irandom_range(-3,3)),dust);
					movement_ef.ahspeed = global.hmovement_speed
					movement_ef.avspeed = abs(global.movement_speed)*image_xscale
					movement_ef.depth = depth+1
					movement_ef.received = 0
					}
				}
			}
		}
		else if sprite_index = spr_tree
		{
			if image_index = 5 || image_index = 8 || image_index = 11
			{
			var for_val = 8
			}
			else
			{
			for_val = 10
			}
	
	
			for(var i = 0; i < for_val; i++)
			{
			var cre_item = instance_create(x,y,obj_item)
			cre_item.received_item = 0
			cre_item.stucked_item_number = 1
			cre_item.hspeed = irandom_range(-200,200)*0.01;
			cre_item.floor_y = y+irandom_range(0,8);
			cre_item.a = irandom_range(9,15)
			if image_index >= 3 && image_index <= 5
			{
			cre_item.image_index = 36
			}
		
			if image_index >= 6 && image_index <= 8
			{
			cre_item.image_index = 37
			}
		
			if image_index >= 9 && image_index <= 11
			{
			cre_item.image_index = 38
			}
			cre_item.depth = -(5+i)
			cre_item.floor_y = y+irandom_range(0,8);
			cre_item.y = cre_item.floor_y-2
			cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
			cre_item.received_item = 0
			}
	
			for(var i = 0; i < (choose(1,1,1,1,2,2,2,2,2,2,3,3)); i++)
			{
			var cre_item = instance_create(x,y,obj_item_placeable)
			cre_item.received_item = 0
			if image_index >= 3 && image_index <= 5
			{
			cre_item.image_index = 7
			}
		
			if image_index >= 6 && image_index <= 8
			{
			cre_item.image_index = 8
			}
		
			if image_index >= 9 && image_index <= 11
			{
			cre_item.image_index = 9
			}
			cre_item.depth = -(5+i)
			cre_item.floor_y = y+irandom_range(0,8);
			cre_item.y = cre_item.floor_y-2
			cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
			cre_item.stucked_item_number = 1
			}
		}
	}


	}

	if buffer_exists(chat_buffer)
	{
		if global.co_op_mode = 1
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.BL_ORE_STATE);
		buffer_write(chat_buffer, buffer_string, -1);
		buffer_write(chat_buffer, buffer_string, -1);
		buffer_write(chat_buffer, buffer_string, x);
		buffer_write(chat_buffer, buffer_string, y);
		buffer_write(chat_buffer, buffer_string, auto_picking);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		send_all(chat_buffer);
		}
		buffer_delete(chat_buffer);
	}
}