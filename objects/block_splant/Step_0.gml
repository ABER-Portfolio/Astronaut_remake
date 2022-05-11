/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,destroy_floor)
{
instance_destroy()
instance_activate_object(noclip_block)
	if instance_exists(noclip_block)
	{
	instance_destroy(noclip_block)
	}
}

if instance_number(creating_maps) > 0 && creating_maps.new_map = 1
{
	if position_meeting(x,y,floor_pl0)
	{
	image_index = choose(0,1)
	}
	if position_meeting(x,y,floor_pl1)
	{
	image_index = choose(2,3)
	}
	if position_meeting(x,y,floor_pl2)
	{
	image_index = choose(4,5)
	}
	if position_meeting(x,y,floor_pl3)
	{
	image_index = 6
	}
	if position_meeting(x,y,floor_pl4)
	{
	image_index = choose(11,12)
	}
	if position_meeting(x,y,floor_pl5)
	{
	image_index = 6
	}
	if position_meeting(x,y,floor_pl6)
	{
	image_index = choose(13,14)
	}
	if position_meeting(x,y,floor_pl7)
	{
	image_index = 6
	}
	if position_meeting(x,y,floor_pl8)
	{
	image_index = choose(15,16)
	}
}


if instance_number(creating_maps) > 0 && (place_meeting(x,y,floor_pl17) || place_meeting(x,y,chest) || place_meeting(x,y,block_splant))
{
instance_destroy()
instance_activate_object(noclip_block)
	if instance_exists(noclip_block)
	{
	instance_destroy(noclip_block)
	}
}








x_shake += (t_x_scale_plus - x_shake)*0.04

if place_meeting(x,y,obj_water_wave)
{
t_x_scale_plus += (4 - t_x_scale_plus)*0.008
}
else
{
t_x_scale_plus += (-4 - t_x_scale_plus)*0.008
}



wind_shake += (global.wind_dir - wind_shake)*0.05


