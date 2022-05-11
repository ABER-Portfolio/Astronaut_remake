/// @description Insert description here
// You can write your code in this editor
if dilay = 1
{
	if co_op_code.is_server = true
	{
		if place_meeting(x,y,player)
		{
		alarm[2] = 1
		}
		else
		{
		dilay = 0
		}
	}
	else
	{
		if place_meeting(x,y,player_co_op)
		{
		alarm[2] = 1
		}
		else
		{
		dilay = 0
		}
	}
}
