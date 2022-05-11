/// @description Insert description here
// You can write your code in this editor

var _check = 0

if global.n_room = 3
{
	if create_lab.lab_generator > 0
	{
	_check = 1
	}
}
else
{
_check = 1
}

if _check = 1
{
	sparking = 1
	auto_picking = 1.5
	t_warning_alpha = 0
	if instance_number(electric_rod) > 0
	{
	var _near_rod = instance_nearest(x,y,electric_rod)
		if _near_rod.id != id
		{
			if point_distance(_near_rod.x,_near_rod.y,x,y) <= 96
			{
			rod_near_num = 1
			target_x2 = _near_rod.x
			target_y2 = _near_rod.y-64*image_yscale
			}
			else
			{
			rod_near_num = 0
			}
		}
	}

p_damaged(4,false,45,60,false)
}
alarm[2] = 140
