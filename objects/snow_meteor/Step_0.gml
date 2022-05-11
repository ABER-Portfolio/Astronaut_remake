/// @description Insert description here
// You can write your code in this editor


if global.n_room != 0
{
	if !place_meeting(x,y,fl_parents)
	{
	instance_destroy()
	}
}

instance_create(x,y,snow_effect)

if instance_exists(light)
{
light.x = x
light.y = y
}

if _alpha > 0
{
_alpha -= 0.1
}

des++
if des > 600
{
des = 0
}

if can_des = 1
{
	if place_meeting(x,y,monster_parents) || place_meeting(x,y,block_container) || place_meeting(x,y,block_container_vertical) || place_meeting(x,y,Lab_giant_door)
	{
	instance_destroy()
	}


	if global.co_op_mode = 1
	{
		if instance_number(player_co_op) > 0
		{
			if point_distance(player.x,player.y,x,y) >= 640 && point_distance(player_co_op.x,player_co_op.y,x,y) >= 640
			{
			instance_destroy()
			}
		}
	}
	else
	{
		if instance_number(player) > 0
		{
			if point_distance(player.x,player.y,x,y) >= 640
			{
			instance_destroy()
			}
		}
	}
}