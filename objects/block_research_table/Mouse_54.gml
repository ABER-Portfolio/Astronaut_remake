/// @description Insert description here
// You can write your code in this editor

var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}

if point_distance(x,y,target.x,target.y) < 16
{
	if furnacing_ore = noone && (global.inhand_item_type = spr_only_items || global.inhand_item_type = spr_inv_item)
	{
		for(var i = 0; i < 36; i += 1)
		{
			if global.inhand_item = i && (inventory_number_find_by_name(asset_get_index("item"+string(global.inhand_item+1)),0) >= 1) && i != 14 && i != 15 && i != 16 && i != 17
			{
			research_reward()
			inventory_item_sub(asset_get_index("item"+string(global.inhand_item+1)),1,0)
			furnacing_ore = item61
			
			var _item_ = instance_create(-100,-100,furnacing_ore)
			var it_ind = _item_.image_index
			instance_destroy(_item_)
			
			var cre_item = instance_create(x,y+10,obj_item)
			cre_item.stucked_item_number = intel_num
			cre_item.vspeed = -3
			cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
			cre_item.image_yscale = 0.18
			cre_item.image_index = it_ind
			cre_item.floor_y = y+10
			cre_item.depth = depth
			cre_item.received_item = 0
			cre_item.a = irandom_range(9,15)
			
			furnacing_ore = noone
			}
		}
	}
}