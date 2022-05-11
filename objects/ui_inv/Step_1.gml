/// @description Insert description here
// You can write your code in this editor
if global.chat_activity = false
{
	if global.inv_open > 0 && change_connection <= 0
	{
	var check_inv = inventory_point_get_index(mouse_x , mouse_y);
	var check_inv1 = cr_inventory_point_get_index(mouse_x , mouse_y);
	var check_inv2 = ch_inventory_point_get_index(mouse_x , mouse_y);
	
		if check_inv != -1
		{
			if global.inv_open = 1 || global.inv_open = 3
			{
			var find_index = inventory_item_find_by_index(check_inv,0);
				if find_index != noone
				{
				var inst_id = instance_create(-100 , -100 , find_index);
					if instance_exists(inst_id)
					{
					var spr_ind_ = inst_id.sprite_index;
					var img_ind_ = inst_id.image_index;
					instance_destroy(inst_id);
			
					k_item_info_log(spr_ind_,img_ind_,false);
					}
				}
			}
		}
		
		if check_inv1 != -1
		{
			if global.inv_open = 2
			{
			var find_index = cr_inventory_item_find_by_index(check_inv1,1);
				if find_index != noone
				{
				var inst_id = instance_create(-100 , -100 , find_index);
					if instance_exists(inst_id)
					{
					var spr_ind_ = inst_id.sprite_index;
					var img_ind_ = inst_id.image_index;
					instance_destroy(inst_id);
			
					k_item_info_log(spr_ind_,img_ind_,false);
					}
				}
			}
		}
		
		if check_inv2 != -1
		{
			if global.inv_open = 1 || global.inv_open = 3
			{
			var find_index = ch_inventory_item_find_by_index(check_inv2,2);
				if find_index != noone
				{
				var inst_id = instance_create(-100 , -100 , find_index);
					if instance_exists(inst_id)
					{
					var spr_ind_ = inst_id.sprite_index;
					var img_ind_ = inst_id.image_index;
					instance_destroy(inst_id);
					k_item_info_log(spr_ind_,img_ind_,false);
					}
				}
			}
		}
		
		if check_inv = -1 && check_inv1 = -1 && check_inv2 = -1
		{
			if instance_number(item_info_log) > 0 && instance_number(main_menu_button) = 0
			{
			instance_destroy(item_info_log)
			}
		}
	}
	else
	{
		if instance_number(item_info_log) > 0 && instance_number(main_menu_button) = 0
		{
		instance_destroy(item_info_log)
		}
	}
}
