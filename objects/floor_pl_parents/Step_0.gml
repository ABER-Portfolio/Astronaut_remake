/// @description Insert description here
// You can write your code in this editor

if draw_water = 1
{
y_3 += (y_2 - y_3)*0.008
	if place_meeting(x,y,obj_water_wave)
	{
	y_2 += (5 - y_2)*0.05
	}
	else
	{
	y_2 += (-5 - y_2)*0.05
	}
}



if draw_tiles_on_the_floor = 0 && instance_number(grill_floor) > 0 && place_meeting(x,y,grill_floor)
{
var random_val = percentage_k(5)

	if random_val = 1
	{
	var cre_item = instance_create(x,y+10,obj_item)
	cre_item.stucked_item_number = 1
	cre_item.vspeed = -3
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	cre_item.image_index = choose(14,14,14,14,14,14,14,43,44,44,44,45,52,53,54,62,62,62)
	cre_item.floor_y = y+10
	cre_item.depth = depth
	cre_item.received_item = 0
	cre_item.a = irandom_range(9,15)
	}

draw_tiles_on_the_floor = 1
}