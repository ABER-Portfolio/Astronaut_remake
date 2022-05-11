/// @description Insert description here
// You can write your code in this editor
x = mouse_x
y = mouse_y

if instance_number(main_menu_button) = 0
{
depth = -room_width*5.01
}
else
{
depth = -999999
}

if global.inv_open <= 0 && instance_number(main_menu_button) = 0
{
instance_destroy(self)
}


if s_mouse_x > 0 && s_mouse_y > 0
{
	if room = ingame
	{
		if point_distance(s_mouse_x,s_mouse_y,x,y) > 3
		{
		instance_destroy(self)
		}
	}
	else
	{
		if point_distance(s_mouse_x,s_mouse_y,x,y) > 64
		{
		instance_destroy(self)
		}
	}
}