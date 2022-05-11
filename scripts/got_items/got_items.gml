///got_items(ores_number)
///@param ores_number
var num = global.all_resources_num
var num2 = global.all_tools_num
var num3 = global.all_potions_num
var num4 = global.all_placeable_num
var num5 = global.all_clothes_num
var num6 = global.all_accessories_num
var state = 0



var _empty = 0
	for(var i = 0; i < ui_inv.inventory_width*ui_inv.inventory_height; i++)
	{
		if ui_inv.inventory_num_equip[i] <= -1 || ui_inv.inventory_item_equip[i] = noone
		{
		_empty ++
		}
	}
	
	if (audio_is_playing(clothes_jacket))
	{
	_empty = 0
	}
	
	if (argument0 > 1 && _empty <= 1) || (argument0 = 1 && _empty <= 0)
	{
	var target = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target = player_co_op
		}
		
	var cre_item = instance_create(x,y,asset_get_index(string(object_get_name(object_index))))
	cre_item.stucked_item_number = argument0
	cre_item.vspeed = -3
	cre_item.image_xscale = image_xscale
	cre_item.image_yscale = image_yscale
	cre_item.image_index = image_index
	cre_item.floor_y = floor_y
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}





if (argument0 > 1 && _empty > 1) || (argument0 = 1 && _empty > 0)
{
global.getting_item = 1

	if sprite_index = spr_only_items
	{
		for(var i = 1; i < num; i++)
		{
			if image_index = i-1
			{
			inventory_item_add(asset_get_index("item"+string(i)),argument0,state)
			}
		}
	}

	if sprite_index = spr_pickaxe_center_origin
	{
		for(var i = 1; i < num2; i++)
		{
			if image_index = i-1
			{
			inventory_item_add(asset_get_index("item1000"+string(i)),argument0,state)
			}
		}
	}

	if sprite_index = spr_potion_center_origin
	{
		for(var i = 1; i < num3; i++)
		{
			if image_index = i-1
			{
			inventory_item_add(asset_get_index("item2000"+string(i)),argument0,state)
			}
		}
	}

	if sprite_index = spr_placeable_center_origin
	{
		for(var i = 1; i < num4; i++)
		{
			if image_index = i-1
			{
			inventory_item_add(asset_get_index("item4000"+string(i)),argument0,state)
			}
		}
	}

	if sprite_index = spr_clothes_center_origin
	{
		for(var i = 1; i < num5; i++)
		{
			if image_index = i-1
			{
			inventory_item_add(asset_get_index("item5000"+string(i)),argument0,state)
			}
		}
	}

	if sprite_index = spr_accessories
	{
		for(var i = 1; i < num6; i++)
		{
			if image_index = i-1
			{
			inventory_item_add(asset_get_index("item6000"+string(i)),argument0,state)
			}
		}
	}
}