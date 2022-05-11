/// @description Insert description here
// You can write your code in this editor
image_speed = 0
randomize()
angle = choose(-1,1)
angel_p_speed = irandom_range(1,8)
vspeed = -irandom_range(0,4)
hspeed = irandom_range(-2,2)
gravity = 0.08

des_time = -30
with(dead_head)
{
des_time += 30
}

alarm[1] = 1



image_xscale = 0.45
image_yscale = 0.45
