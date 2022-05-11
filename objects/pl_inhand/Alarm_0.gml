/// @description Insert description here
// You can write your code in this editor
if(co_op_code.is_server == true)
{
	if global.inhand_item != b_image_index
	{
	ready_to_attack = 1
	alarm[4] = 60

		if global.weapon_kind = 0 || global.weapon_kind = 1
		{
		image_angle = -180*image_xscale
		}
	
		if global.weapon_kind = 2
		{
		image_angle = -180*image_xscale
		}
	}

	image_index = global.inhand_item
	set_inhand_item_info()

	b_image_index = global.inhand_item


	alarm[0] = 5
}