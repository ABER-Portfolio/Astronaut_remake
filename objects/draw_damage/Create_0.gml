
//해당오브젝트에서 사용되지만, 직접적으로 선언되지않는 변수들
//damage = 0

depth = -room_width*7

image_xscale = 0.1
image_yscale = 0.1
ty = y-16
if place_meeting(x,y-16,draw_damage) 
{
alarm[3] = 1
}

effect = 0
destroy = 0
over_damage = 0
var random_var = irandom_range(0,100)

if random_var > 70
{
angle = irandom_range(-7,7)
}
else
{
angle = irandom_range(-2,2)
}

alarm[0] = 15
des_time = -30
alarm[2] = 1

with(draw_damage)
{
des_time += 30
}