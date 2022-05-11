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