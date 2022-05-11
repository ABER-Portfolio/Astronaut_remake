/// @description Insert description here
// You can write your code in this editor


if a < 12
{
bl = instance_create(a*128,b*128,BG_blind)
bl.xx = a*128
bl.yy = b*128
bl.image_index = a+b
a += 1

	if b <= 7
	{
		if a >= 12
		{
		a = 0
		b += 1
		}
	alarm[1] = 1 // 1
	}
}
