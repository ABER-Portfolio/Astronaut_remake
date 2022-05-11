/// @description 도구의 갯수를 불러옴
//if instance_number(pl_inhand) > 0
{
	

//////////////////////////////////////도구의 갯수를 불러옴///////////////////////////////////

for(var i = 0; i < ui_inv.inventory_width * ui_inv.inventory_height; i++)
{
	if ui_inv.inventory_spr[i] = item_real_spr && ui_inv.inventory_img_index[i] = item_num
	{
	item_having_num = ui_inv.inventory_num_equip[i]
	item_name = ui_inv.inventory_item_equip[i]
	saved_i = i
	}
	
	if ui_inv.inventory_spr[i] != item_real_spr || ui_inv.inventory_img_index[i] != item_num
	{
	saved_i = noone
	}
	
	if saved_i != noone && saved_i != -1
	{
		if ui_inv.inventory_spr[saved_i] != item_real_spr && ui_inv.inventory_img_index[saved_i] != item_num
		{
		item_having_num = noone
		item_real_spr = none_sprite
		}
	}
	
	
}
///////////////////////////////////////
if item_num != noone
{
	if (item_real_spr = spr_inv_item || item_real_spr = spr_only_items)
	{
	var _find_item_ = inventory_number_find_by_name(asset_get_index("item"+string(item_num+1)),0)
		if _find_item_ <= 0
		{
		item_having_num = noone
		item_real_spr = none_sprite
		global.inhand_item = noone
		global.inhand_item_type = none_sprite
		}
	}
	
	
	if item_real_spr = spr_clothes_center_origin
	{
	item_having_num = noone
	item_real_spr = none_sprite
	global.inhand_item = noone
	global.inhand_item_type = none_sprite
	}


	if item_real_spr = spr_pickaxe_center_origin
	{
	var _find_item_ = inventory_number_find_by_name(asset_get_index("item1000"+string(item_num+1)),0)
		if _find_item_ <= 0
		{
		item_having_num = noone
		item_real_spr = none_sprite
		global.inhand_item = noone
		global.inhand_item_type = none_sprite
		}
	}

	if item_real_spr = spr_potion_center_origin
	{
	var	_find_item_ = inventory_number_find_by_name(asset_get_index("item2000"+string(item_num+1)),0)
		if _find_item_ <= 0
		{
		item_having_num = noone
		item_real_spr = none_sprite
		global.inhand_item = noone
		global.inhand_item_type = none_sprite
		}
	}
}



}





alarm[0] = 6
