/// @description Insert description here
// You can write your code in this editor
hspeed += (0 - hspeed)/15
vspeed += (0 - vspeed)/15

image_xscale -= 0.001
image_yscale -= 0.001

if des = 1
{
image_alpha += (-0.1 - image_alpha)*0.2
	if image_alpha <= 0
	{
	instance_destroy()
	}
}