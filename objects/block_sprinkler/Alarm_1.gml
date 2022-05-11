/// @description Insert description here
// You can write your code in this editor

if water_area = noone
{
	if image_index = 0
	{
	water_area = instance_create(x,y,watered_area)
	}

	if image_index = 1
	{
	water_area = instance_create(x,y,watered_crimson_area)
	}

	if image_index = 2
	{
	water_area = instance_create(x,y,watered_polluted_area)
	}
}





for(var i = 0; i < 360; i += 10)
{
var t_x = x+lengthdir_x(time,i)
var t_y = y+lengthdir_y(time,i)
	if instance_number(effect_parents) < 200
	{
		for(var ii = 0; ii < choose(1,1,1,1,2,2); ii++)
		{
		randomize()
		var ef_fire = instance_create(t_x,t_y,fire_noburn)
		if image_index = 0
		{
		ef_fire.sprite_index = spr_poison_effect11
		}
		if image_index = 1
		{
		ef_fire.sprite_index = spr_poison_effect111
		}
		if image_index = 2
		{
		ef_fire.sprite_index = spr_poison_effect1111
		}
			with(ef_fire)
			{
			move_snap(32,32)
			}
		var scale = irandom_range(150,100)/500
		ef_fire.image_xscale = scale/2
		ef_fire.image_yscale = scale/2
		ef_fire.vspeed = irandom_range(-300,360)/150
		ef_fire.hspeed = irandom_range(-360,360)/150
		ef_fire.scale_min = irandom_range(10,50)/2500
		ef_fire.floor_y = y+irandom_range(48,52)
		ef_fire.depth = depth-choose(1,-1)
		}
	}
	else
	{
	var ins_random_cre = percentage_k(40)
		if ins_random_cre = 1
		{
		randomize()
		var ef_fire = instance_create(t_x,t_y,fire_noburn)
		if image_index = 0
		{
		ef_fire.sprite_index = spr_poison_effect11
		}
		if image_index = 1
		{
		ef_fire.sprite_index = spr_poison_effect111
		}
		if image_index = 2
		{
		ef_fire.sprite_index = spr_poison_effect1111
		}
			with(ef_fire)
			{
			move_snap(32,32)
			}
		var scale = irandom_range(150,100)/500
		ef_fire.image_xscale = scale/2
		ef_fire.image_yscale = scale/2
		ef_fire.vspeed = irandom_range(-300,360)/150
		ef_fire.hspeed = irandom_range(-360,360)/150
		ef_fire.scale_min = irandom_range(10,50)/2500
		ef_fire.floor_y = y+irandom_range(48,52)
		ef_fire.depth = depth-choose(1,-1)
		}
	}
}



if time > length
{
time = 0
	if water_area != noone
	{
	instance_destroy(water_area)
	water_area = noone
	}
}
else
{
alarm[1] = 4
}
time += 1

