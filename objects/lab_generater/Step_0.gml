/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
	if place_meeting(x,y,player)
	{
	image_index = 6
	}
}

if instance_number(player_co_op) > 0
{
	if place_meeting(x,y,player_co_op)
	{
	image_index = 6
	}
}

if image_index = 6
{
	if instance_number(create_lab) > 0
	{
		if create_lab.lab_generator = 0
		{
		create_lab.lab_generator = 1
		}
	}
}