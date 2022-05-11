/// @description Insert description here
// You can write your code in this editor
//if dilay = 0
image_index ++
if return_alarm1 < 60
{
return_alarm1 += 1
}

if instance_number(player_co_op) = 0
{
	if return_alarm1 >= 60
	{
	return_alarm1 = 30
	
	if x > player.x
	{
	image_xscale = abs(image_xscale)
	}
	
	if x < player.x
	{
	image_xscale = -abs(image_xscale)
	}

	move_towards_point(player.x,player.y+5,3)
	}
}
else
{
	if point_distance(x,y,player.x,player.y) < point_distance(x,y,player_co_op.x,player_co_op.y)
	{
		if return_alarm1 >= 60
		{
		return_alarm1 = 30

		if x > player.x
		{
		image_xscale = abs(image_xscale)
		}
	
		if x < player.x
		{
		image_xscale = -abs(image_xscale)
		}

		move_towards_point(player.x,player.y+5,3)
		}
	}
	else
	{
		if return_alarm1 >= 60
		{
		return_alarm1 = 30

		if x > player_co_op.x
		{
		image_xscale = abs(image_xscale)
		}
	
		if x < player_co_op.x
		{
		image_xscale = -abs(image_xscale)
		}

		move_towards_point(player_co_op.x,player_co_op.y+5,3)
		}
	}
}
alarm[1] = 61 - return_alarm1

