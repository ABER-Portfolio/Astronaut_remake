/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 360; i += 10)
{
var t_x = x+lengthdir_x(time*16,i)
var t_y = y+lengthdir_y(time*16,i)

	for(var ii = 0; ii < choose(1,1,2,2,3); ii++)
	{
	randomize()
	var ef_fire = instance_create(t_x,t_y,fire_noburn)
		with(ef_fire)
		{
		move_snap(32,32)
		}
	var scale = irandom_range(150,100)/230
	ef_fire.image_xscale = scale/2
	ef_fire.image_yscale = scale/2
	ef_fire.vspeed = irandom_range(-360,-100)/250
	ef_fire.hspeed = irandom_range(-360,10)/250
	ef_fire.scale_min = irandom_range(10,50)/2500
	ef_fire.floor_y = y+irandom_range(-1,3)
	ef_fire.depth = depth-choose(1,-1)
	}
}



if time > length/16
{
instance_destroy()
}
time += 1

alarm[1] = 2