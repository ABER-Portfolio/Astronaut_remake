/// @description Insert description here
// You can write your code in this editor

var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}

if point_distance(x,y,target.x,target.y) < 16
{
	if furnacing_ore = noone && global.inhand_item_type = spr_clothes_center_origin
	{
		for(var i = 0; i < 4; i ++)
		{
			if global.inhand_item = i && (inventory_number_find_by_name(asset_get_index("item5000"+string(global.inhand_item+1)),0) >= 1)
			{
			furnacing_ore = item2
			furnacing_time = 30
			inventory_item_sub(asset_get_index("item5000"+string(global.inhand_item+1)),1,0)
			
				if buffer_exists(chat_buffer)
				{
				buffer_seek(chat_buffer, buffer_seek_start, 0);

				buffer_write(chat_buffer, buffer_u8, DATA.BL_FURNACE_STATE);
				buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
				buffer_write(chat_buffer, buffer_string, x);
				buffer_write(chat_buffer, buffer_string, y);
				buffer_write(chat_buffer, buffer_string, object_index);
				buffer_write(chat_buffer, buffer_string, furnacing_time);
				buffer_write(chat_buffer, buffer_string, furnacing_ore);
				send_all(chat_buffer);
				}
			break;
			}
		}
	}
		
		
	if furnacing_ore = noone && (global.inhand_item_type = spr_only_items || global.inhand_item_type = spr_inv_item)
	{
	var made = 0
		for(var i = 36; i < 68+1; i ++)
		{
			if i = 36 && global.inhand_item = i
			{
			furnacing_ore = item55
			furnacing_time = 30
			made = 1
			}
			
			if i = 37 && global.inhand_item = i
			{
			furnacing_ore = item37
			furnacing_time = 30
			made = 1
			}
			
			if i = 38 && global.inhand_item = i
			{
			furnacing_ore = item37
			furnacing_time = 30
			made = 1
			}
			
			if i = 40 && global.inhand_item = i
			{
			furnacing_ore = item56
			furnacing_time = 30
			made = 1
			}
			
			if i = 41 && global.inhand_item = i
			{
			furnacing_ore = item56
			furnacing_time = 30
			made = 1
			}
			
			if i = 42 && global.inhand_item = i
			{
			furnacing_ore = item56
			furnacing_time = 30
			made = 1
			}
			
			if i = 44 && global.inhand_item = i
			{
			furnacing_ore = item57
			furnacing_time = 30
			made = 1
			}
			
			if i = 45 && global.inhand_item = i
			{
			furnacing_ore = item57
			furnacing_time = 30
			made = 1
			}
			
			if i = 46 && global.inhand_item = i
			{
			furnacing_ore = item57
			furnacing_time = 30
			made = 1
			}
			
			if i = 47 && global.inhand_item = i
			{
			furnacing_ore = item57
			furnacing_time = 30
			made = 1
			}
			
			if i = 48 && global.inhand_item = i
			{
			furnacing_ore = item57
			furnacing_time = 30
			made = 1
			}
			
			if i = 49 && global.inhand_item = i
			{
			furnacing_ore = item36
			furnacing_time = 30
			made = 1
			}
			
			if i = 51 && global.inhand_item = i
			{
			furnacing_ore = item4
			furnacing_time = 30
			made = 1
			}
			
			if i = 53 && global.inhand_item = i
			{
			furnacing_ore = item6
			furnacing_time = 30
			made = 1
			}
			
			if i = 55 && global.inhand_item = i
			{
			furnacing_ore = choose(item54,item35)
			furnacing_time = 30
			made = 1
			}
			
			if i = 59 && global.inhand_item = i
			{
			furnacing_ore = item37
			furnacing_time = 30
			made = 1
			}
			
			if i = 62 && global.inhand_item = i
			{
			furnacing_ore = item37
			furnacing_time = 30
			made = 1
			}
			
			if i = 63 && global.inhand_item = i
			{
			furnacing_ore = item37
			furnacing_time = 30
			made = 1
			}
			
			if i = 64 && global.inhand_item = i
			{
			furnacing_ore = item37
			furnacing_time = 30
			made = 1
			}
			
			if i = 65 && global.inhand_item = i
			{
			furnacing_ore = item57
			furnacing_time = 30
			made = 1
			}
			
			if i = 66 && global.inhand_item = i
			{
			furnacing_ore = item40
			furnacing_time = 30
			made = 1
			}
			
			if i = 67 && global.inhand_item = i
			{
			furnacing_ore = item52
			furnacing_time = 30
			made = 1
			}
			
			
			
			if made = 1
			{
			inventory_item_sub(asset_get_index("item"+string(global.inhand_item+1)),1,0)
			
				if buffer_exists(chat_buffer)
				{
				buffer_seek(chat_buffer, buffer_seek_start, 0);

				buffer_write(chat_buffer, buffer_u8, DATA.BL_FURNACE_STATE);
				buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
				buffer_write(chat_buffer, buffer_string, x);
				buffer_write(chat_buffer, buffer_string, y);
				buffer_write(chat_buffer, buffer_string, object_index);
				buffer_write(chat_buffer, buffer_string, furnacing_time);
				buffer_write(chat_buffer, buffer_string, furnacing_ore);
				send_all(chat_buffer);
				}
			break;
			}
		}
	}
				
	if furnacing_ore != noone && furnacing_time <= 0
	{
	var _item_ = instance_create(-100,-100,furnacing_ore)
	var it_ind = _item_.image_index
	instance_destroy(_item_)
		
	if furnacing_ore = item2
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 2
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item40
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 2
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item52
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item55
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 5
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item56
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 3
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item57
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item6
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item4
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 2
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item36
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 3
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item37
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 10
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	if furnacing_ore = item61
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = it_ind
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}
	
	

	
	furnacing_ore = noone
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
	
		buffer_write(chat_buffer, buffer_u8, DATA.BL_FURNACE_STATE);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		buffer_write(chat_buffer, buffer_string, x);
		buffer_write(chat_buffer, buffer_string, y);
		buffer_write(chat_buffer, buffer_string, object_index);
		buffer_write(chat_buffer, buffer_string, 0);
		buffer_write(chat_buffer, buffer_string, noone);
		send_all(chat_buffer);

		buffer_delete(chat_buffer);
		}
	}
}