/// @description Insert description here
// You can write your code in this editor
crafting_time --
alarm[1] = 60

if crafting_time < 0
{
	var _empty_ = inventory_empty_check(item_name,item_to_craft_num,item_state_to_craft)
	
	if _empty_ = 1
	{
	inventory_item_add(item_name,item_to_craft_num,item_state_to_craft)
	}
	
	with(obj_queue_item)
	{
	t_p_x -= 1
	}
global.queue_num -= 1
	
instance_destroy()
}
