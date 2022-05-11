/// @description Insert description here
// You can write your code in this editor
if y < floor_y
{
gravity = 0.08
angle_speed += (0 - angle_speed)/500
}
else
{
y = floor_y+0.01
gravity = 0
vspeed = 0
angle_speed += (0 - angle_speed)/60
}

image_angle += angle_speed

if do_not_move = 0
{
	if hspeed < 2
	{
	hspeed = angle_speed*0.04
	}
	else
	{
	hspeed = 2
	}
}

depth = -floor_y

if des = 1
{
image_alpha -= 0.05
}

if image_alpha < 0
{
instance_destroy()
}

if !place_meeting(x,y,fl_parents)
{
hspeed = 0
do_not_move = 1
}