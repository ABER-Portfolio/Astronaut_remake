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

if place_meeting(x,y,bomb_site)
{
var _random_dm = irandom_range(-10,10)
txscale -= _random_dm
tyscale -= _random_dm
	if txscale < 0.11
	{
		if co_op_code.is_server = true
		{
		barrel_item_drop()
		}
	instance_destroy()
	}
}