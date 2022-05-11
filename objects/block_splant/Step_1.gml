/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
	if co_op_code.is_server = true
	{
		for(var i = 0; i < choose(0,0,0,0,1,1,1,2,2,2); i++)
		{
		var cre_item = instance_create(x,y,obj_item_placeable)
		cre_item.stucked_item_number = 1
		cre_item.hspeed = irandom_range(-20,20)*0.1
		cre_item.vspeed = -irandom_range(0,20)*0.1
		cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
		cre_item.image_yscale = 0.18
		if image_index = 0 || image_index = 1
		{
		cre_item.image_index = 24
		}
		if image_index = 2 || image_index = 3
		{
		cre_item.image_index = 25
		}
		if image_index = 4 || image_index = 5
		{
		cre_item.image_index = 26
		}
		if image_index = 6 || image_index = 7
		{
		cre_item.image_index = 27
		}
		if image_index = 8
		{
		cre_item.image_index = 28
		}
		cre_item.floor_y = y+irandom_range(-3,3)
		cre_item.depth = -(depth+1)
		cre_item.received_item = 0
		}
	}
instance_destroy()
}