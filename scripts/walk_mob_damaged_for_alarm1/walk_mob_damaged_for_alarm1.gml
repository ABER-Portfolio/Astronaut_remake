///@param knockback_mply

	if co_op_code.is_server = true
	{
		if player.x > x
		{
		hspeed += argument0*global.knockback/10
		}
		
		if player.x < x
		{
		hspeed -= argument0*global.knockback/10
		}
		
		var random_var = irandom_range(0,100)
		if random_var > 80
		{
		for_draw_damage = (global.attack_damage) + (global.attack_damage/((irandom_range(20,80)*0.1)))
		}
		else
		{
		for_draw_damage = (global.attack_damage)
		}
		

	
	var draw_damaged_value = instance_create(x,y,draw_damage)
	draw_damaged_value.draw_healing = 0
	draw_damaged_value.depth = depth-1
	draw_damaged_value.damage = for_draw_damage
	hp -= for_draw_damage
	dilay = 1
	vspeed = -2

	
	
	if (!position_meeting(x+image_xscale*48,y+image_yscale*52,fl_parents)) || (!position_meeting(x-image_xscale*48,y+image_yscale*52,fl_parents)) || (!position_meeting(x,y+image_yscale*48,fl_parents))
	{
	hspeed = -((hspeed*0.5)+(abs(x - point_distance(x,y,player.x,y))/(x - point_distance(x,y,player.x,y))))
	}
	else
	{
	hspeed = -(hspeed - hspeed*0.25)
	}
	gravity = 0.2
	var injured = audio_play_sound(choose(hit1,hit2),0,false)
	audio_sound_gain(injured,20*global.master_volume*global.sfx_volume*global.scene_volume,1)
	alarm[0] = 3
	}
	else
	{
		if player_co_op.x > x
		{
		hspeed += argument0*global.knockback/10
		}
		
		if player_co_op.x < x
		{
		hspeed -= argument0*global.knockback/10
		}
		
		var random_var = irandom_range(0,100)
		if random_var > 80
		{
		for_draw_damage = (global.attack_damage) + (global.attack_damage/((irandom_range(20,80)*0.1)))
		}
		else
		{
		for_draw_damage = (global.attack_damage)
		}
		

	
	var draw_damaged_value = instance_create(x,y,draw_damage)
	draw_damaged_value.draw_healing = 0
	draw_damaged_value.depth = depth-1
	draw_damaged_value.damage = for_draw_damage
	hp -= for_draw_damage
	dilay = 1
	vspeed = -2

	
	
	if (!position_meeting(x+image_xscale*48,y+image_yscale*52,fl_parents)) || (!position_meeting(x-image_xscale*48,y+image_yscale*52,fl_parents)) || (!position_meeting(x,y+image_yscale*48,fl_parents))
	{
	hspeed = -((hspeed*0.5)+(abs(x - point_distance(x,y,player_co_op.x,y))/(x - point_distance(x,y,player_co_op.x,y))))
	}
	else
	{
	hspeed = -(hspeed - hspeed*0.25)
	}
	gravity = 0.2
	var injured = audio_play_sound(choose(hit1,hit2),0,false)
	audio_sound_gain(injured,20*global.master_volume*global.sfx_volume*global.scene_volume,1)
	alarm[0] = 3
	}