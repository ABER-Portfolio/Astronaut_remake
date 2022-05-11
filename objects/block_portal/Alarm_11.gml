/// @description Insert description here
// You can write your code in this editor
if global.obj_effect = 0
{
	var r_var = irandom_range(0,4);
	for(var i = 0; i < r_var; i++)
	{
	ef = instance_create(x+(irandom_range(-480,480))*0.1,y+(irandom_range(-480,480))*0.1,portal_effect)
	ef.depth = depth + choose(-1,1)
	ef.portalx = x
	ef.portaly = y+plus_y
	};
}



alarm[11] = choose(18,19,25,30,32);