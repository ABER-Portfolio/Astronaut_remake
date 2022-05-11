/// @description Insert description here
// You can write your code in this editor
depth = -(y+23)

if image_index >= 4
{
	if instance_number(player) > 0
	{
	p_damaged(1,false,45,60,true)
	}

	if place_meeting(x,y,bomb_site)
	{
	m_damaged(other,4,25,c_gray,self,3,2)
	}
}



if breathing > 0
{
breath_time ++
	if breath_time > 55
	{
	breath_time = 0
	breathing ++
		if breathing > 2
		{
		breathing = 1
		}
	}
	
	if breathing = 1
	{
	image_xscale -= 0.0001
	image_yscale -= 0.0001
	}
	
	if breathing = 2
	{
	image_xscale += 0.0001
	image_yscale += 0.0001
	}
}
