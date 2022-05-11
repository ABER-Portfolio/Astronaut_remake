/// @description Insert description here
// You can write your code in this editor


if global.obj_effect = 0 && instance_number(BG_blind) = 0
{
	for(var ii = 0; ii < choose(1,1,2,2,3,3,3,2,2); ii++)
	{
	randomize()
	var ef_fire = instance_create(x-8+irandom_range(-6,8),y+irandom_range(-2,2),fire_noburn)
	var scale = irandom_range(150,100)/300
	ef_fire.image_xscale = scale/2
	ef_fire.image_yscale = scale/2
	ef_fire.vspeed = irandom_range(-360,360)/250
	ef_fire.hspeed = irandom_range(-360,10)/250
	ef_fire.scale_min = irandom_range(10,50)/2500
	ef_fire.floor_y = y+5
	ef_fire.depth = depth-choose(1,-1)
	}
}


randomize()
var _random_alarm = irandom_range(30,70)
alarm[1] = _random_alarm