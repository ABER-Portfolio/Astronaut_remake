/// @description Insert description here
// You can write your code in this editor

var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}

if point_distance(x,y,target.x,target.y) < 32
{
	if furnacing_ore = noone && (global.inhand_item_type = spr_only_items || global.inhand_item_type = spr_inv_item)
	{
	//show_message(string(inventory_number_find_by_name(item58,0))+" / "+string(inventory_number_find_by_name(item37,0)))
		if (global.inhand_item = 57 && inventory_number_find_by_name(item58,0) > 0 && inventory_number_find_by_name(item37,0) >= 5)
		{
		//show_message("A")
		furnacing_ore = asset_get_index("item"+string(global.inhand_item+2))
		furnacing_time = 60
		inventory_item_sub(asset_get_index("item"+string(global.inhand_item+1)),1,0)
		inventory_item_sub(item36,5,0)
				
			if buffer_exists(chat_buffer)
			{
			buffer_seek(chat_buffer, buffer_seek_start, 0);
	
			buffer_write(chat_buffer, buffer_u8, DATA.BL_FURNACE_STATE);
			buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
			buffer_write(chat_buffer, buffer_string, x);
			buffer_write(chat_buffer, buffer_string, object_index);
			buffer_write(chat_buffer, buffer_string, furnacing_time);
			buffer_write(chat_buffer, buffer_string, furnacing_ore);
			send_all(chat_buffer);
			}
		}
	}
				
	if furnacing_ore != noone && furnacing_time <= 0
	{
	var _item_ = instance_create(-100,-100,furnacing_ore)
	var it_ind = _item_.image_index
	instance_destroy(_item_)
		
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
	
	
	
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = 54
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	
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
		}
	}
}