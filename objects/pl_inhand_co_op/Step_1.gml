/// @description Insert description here
// You can write your code in this editor
if !(global.inv_open > 0 || global.n_room > 1) && instance_number(co_op_code) > 0
{
	if(co_op_code.is_server == false)
	{
		if (sprite_index = spr_pickaxe && (global.inhand_item = 14 || global.inhand_item = 74)) || (sprite_index = spr_placeable) && global.inhand_item != -1 && global.inhand_item != noone && cool_time = 0 
		{
			if instance_number(build_system) = 0
			{
			instance_create(-100,-100,build_system)
			}
		}
		else
		{
		instance_destroy(build_system)
		}
	}
}