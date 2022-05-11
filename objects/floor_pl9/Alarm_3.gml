/// @description Insert description here
// You can write your code in this editor

	if global.obj_effect = 0
	{
	//파티클
	var ef_fire = instance_create(x+irandom_range(-16,16),y+irandom_range(-16,16),fire_noburn)
	var scale = irandom_range(150,100)/700
	ef_fire.image_xscale = scale
	ef_fire.image_yscale = scale
	ef_fire.vspeed = irandom_range(400,800)/130
	ef_fire.hspeed = irandom_range(-360,0)/250
	ef_fire.scale_min = irandom_range(10,50)/2500
	ef_fire.floor_y = ef_fire.y+1
	ef_fire.depth = depth-1
	}

	
var random_var2 = irandom_range(600,2000)
alarm[3] = random_var2