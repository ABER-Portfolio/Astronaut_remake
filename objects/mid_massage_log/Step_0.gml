/// @description Insert description here
// You can write your code in this editor
depth = -(room_width*6.1)
if a = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.05
	}
}
else
{
image_alpha -= 0.05
	if image_alpha <= 0
	{
	instance_destroy()
		if instance_number(tuto_log) > 0
		{
			if tuto_log.a = 7.5
			{
			tuto_log.a += 0.5
			}
		}
	}
}