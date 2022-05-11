/// @description Insert description here
// You can write your code in this editor
if can_des = 1
{
	if global.co_op_mode = 1
	{
		if instance_number(player_co_op) > 0
		{
			if point_distance(player.x,player.y,x,y) >= 640 && point_distance(player_co_op.x,player_co_op.y,x,y) >= 640
			{
			alarm[0] = 1
			}
		}
	}
	else
	{
		if instance_number(player) > 0
		{
			if point_distance(player.x,player.y,x,y) >= 640
			{
			alarm[0] = 1
			}
		}
	}
	
	
	if place_meeting(x,y,monster_parents) || place_meeting(x,y,block_container) || place_meeting(x,y,block_container_vertical) || place_meeting(x,y,Lab_giant_door)
	{
	alarm[0] = 1
	}
}