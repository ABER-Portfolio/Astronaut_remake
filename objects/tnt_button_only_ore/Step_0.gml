/// @description Insert description here
// You can write your code in this editor
depth = room_width*1.5-y-1
move_snap(32,32);

if time > 0
{
site_scale += (1 - site_scale)*0.04
}

image_xscale += (0.5 - image_xscale)*0.2
image_yscale += (0.5 - image_yscale)*0.2

if co_op_code.is_server = true
{
	if instance_number(player) > 0 && dilay = 0
	{
		if (point_distance(x,y,player.x,player.y+20) < 64) && (place_meeting(x,y,player) || place_meeting(x,y,monster_parents) || place_meeting(x,y,obj_item)) && (global.knocked_out = 0)
		{
	
		image_index = 4
		dilay = 1
		}
		else
		{
		image_index = 3
		}
	}
}
else
{
	if instance_number(player_co_op) > 0 && dilay = 0
	{
		if (point_distance(x,y,player_co_op.x,player_co_op.y+20) < 64) && (place_meeting(x,y,player_co_op) || place_meeting(x,y,monster_parents) || place_meeting(x,y,obj_item)) && (global.knocked_out = 0)
		{
	
		image_index = 4
		dilay = 1
		}
		else
		{
		image_index = 3
		}
	}
}



if dilay = 1
{
time ++
	
	if time >= 120
	{
	instance_create(x,y,bomb_effect_only_ore)
	instance_destroy()
	}
}