/// @description Insert description here
// You can write your code in this editor
randomize()
x += irandom_range(-32,32)
y += 16
if river_width > 2
{
river_width -= 0.01
}

if random_val = 1
{
random_val = percentage_k(99)
}
else
{
random_val = percentage_k(20)
}

if random_val = 1
{
var random_width = river_width+irandom_range(-20,100)/100
var _des_fl = instance_create(x,y,destroy_floor)
_des_fl.image_xscale = random_width/288*48
_des_fl.image_yscale = random_width/288*48
}
