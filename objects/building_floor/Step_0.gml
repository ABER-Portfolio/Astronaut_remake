/// @description Insert description here
// You can write your code in this editor
image_speed = 0
move_snap(32, 32);

depth = room_width*1.5-y

if instance_number(BG_blind) = 0
{
//////////////////////////////////////////////////////////////////////////////////////////////////////


water_shake += (t_water_shake - water_shake)*0.01


angle += (t_angle - angle)/30


if instance_number(obj_water_wave) > 0
{
	if place_meeting(x,0,obj_water_wave)
	{
	t_angle = -(point_distance(water_shake,0,0.42,0))*25
	t_water_shake = 0.55
	}
	else
	{
	t_angle = (point_distance(water_shake,0,0.42,0))*25
	t_water_shake = 0.44
	}
}
else
{
t_water_shake = 0.3
}


if global.biome = 0
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}
if global.biome = 1
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}
if global.biome = 2
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}

if global.biome = 3
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}

if global.biome = 4
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
}