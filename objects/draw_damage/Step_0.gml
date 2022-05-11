/// @description Insert description here
// You can write your code in this editor
y += (ty - y)*0.05

if destroy = 1
{
image_alpha -= 0.1
	if image_alpha < 0
	{
	instance_destroy()
	}
}

if des_time > 150
{
destroy = 1
}

des_time ++