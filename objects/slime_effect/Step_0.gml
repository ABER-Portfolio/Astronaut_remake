/// @description Insert description here
// You can write your code in this editor
image_xscale += (0 - image_xscale)*0.01
image_yscale += (0 - image_yscale)*0.01
hspeed += (0 - hspeed)/15
y_depth()
if y < ty+yp
{
gravity = v_gravity
}
else
{
gravity = 0
vspeed = 0
}

if a = 1
{
image_alpha -= 0.01
}

if image_alpha <= 0
{
instance_destroy()
}