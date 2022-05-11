/// @description Insert description here
// You can write your code in this editor
image_alpha += (t_image_alpha - image_alpha)*0.1
if stop_t_alpha = 1
{
t_image_alpha = 6-(point_distance(x,y,portalx,portaly))
}

image_xscale += ((image_xscale*0.01) - image_xscale)*0.04
image_yscale += ((image_yscale*0.01) - image_yscale)*0.04

x += (t_x - x)*0.02
y += (t_y - y)*0.02


if image_xscale <= 0
{
instance_destroy()
}


if image_angle = 360 || image_angle = -360
{
image_angle = 0
}