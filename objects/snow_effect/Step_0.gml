/// @description Insert description here
// You can write your code in this editor
hspeed += (0 - hspeed)/8
vspeed += (0 - vspeed)/8

image_xscale -= 0.005
image_yscale -= 0.005

if des = 1
{
image_alpha += (-0.1 - image_alpha)*0.2
	if image_alpha <= 0
	{
	instance_destroy()
	}
}