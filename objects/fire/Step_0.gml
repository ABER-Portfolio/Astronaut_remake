image_xscale -= scale_min
image_yscale -= scale_min
if vspeed < 0
{
vspeed += 0.001
}

if image_xscale <= 0
{
instance_destroy()
}

if instance_exists(light)
{
light.x = x
light.y = y
}

if alpha2 > 0
{
alpha2 -= 0.025
}

if x_move = 0
{
x += x_m_point/2
}
else
{
x -= x_m_point/2
}

x_m_point += (0 - x_m_point)*0.1



if y >= floor_y
{
gravity = 0
vspeed += (0 - vspeed)/random_var
hspeed = hspeed-((hspeed/abs(hspeed))*vspeed)*0.02
}
else
{
gravity = -0.002
}


//플레이어가 불에 닿음
if place_meeting(x,floor_y,player) && image_alpha > 0.2 && image_xscale > 0.25
{
	if global.burning < 1
	{
	global.burning = 1
	}
	
	if global.de_fire <= 0
	{
	global.burning += 0.02
	}
}