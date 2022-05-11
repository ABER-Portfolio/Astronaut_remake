/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
instance_destroy()
}

if place_meeting(x,y,destroy_floor)
{
instance_destroy()
instance_activate_object(noclip_block)
	if instance_exists(noclip_block)
	{
	instance_destroy(noclip_block)
	}
}

if instance_number(creating_maps) > 0 && (place_meeting(x,y,floor_pl17) || place_meeting(x,y,chest))
{
instance_destroy()
instance_activate_object(noclip_block)
	if instance_exists(noclip_block)
	{
	instance_destroy(noclip_block)
	}
}