/// @description Insert description here
// You can write your code in this editor

depth = -(y+10)

if instance_number(player) > 0
{
p_damaged(0,false,45,60,true)
}

if place_meeting(x,y,bomb_site)
{
m_damaged(other,4,25,c_gray,self,3,2)
}

hp_t += (hp - hp_t)*0.1


if paturn = 0 && woke_up = 1
{
image_index = 0
paturn_time++
	if breathing = 0
	{
	breathing = 1
	}

	if paturn_time > 450
	{
	paturn_time = 0
	breathing = 0
	paturn = choose(1,2,2,1,3,3,3)
	}
}

if paturn = 1
{
image_index = 1
paturn_time ++
	if paturn_time < 33
	{
	image_xscale += (0.75 - image_xscale)*0.02
	image_yscale += (1.25 - image_yscale)*0.02
	}
	
	if paturn_time >= 33 && paturn_time < 39
	{
	image_xscale += (1.3 - image_xscale)*0.1
	image_yscale += (0.7 - image_yscale)*0.1
	}
	
	if paturn_time >= 39
	{
	image_xscale += (1 - image_xscale)*0.1
	image_yscale += (1 - image_yscale)*0.1
	}
	
	if paturn_time = 43
	{
	var target = player
	if global.co_op_mode = 1
	{
	target = choose(player,player_co_op)
	}
	
	var _vine = instance_create(target.x,target.y-25,flower_boss_vine)
	_vine.image_xscale = choose(-1,1)
	_vine.received = 0
	}
	
	if paturn_time >= 65
	{
	image_xscale = 1
	image_yscale = 1
	paturn = 0
	paturn_time = 0
	}
}


if paturn = 2
{
image_index = 1
paturn_time ++

	if paturn_time < 100
	{
	image_xscale += (1.15 - image_xscale)*0.15
	image_yscale += (0.85 - image_yscale)*0.15
	}
	
	if paturn_time >= 24 && paturn_time < 30
	{
	image_xscale += (0.85 - image_xscale)*0.33
	image_yscale += (1.15 - image_yscale)*0.33
	
		if paturn_time = 27
		{
		var sound_break_effect = audio_play_sound(vine,2,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	
	if paturn_time >= 40 && paturn_time < 50
	{
	image_xscale += (0.85 - image_xscale)*0.33
	image_yscale += (1.15 - image_yscale)*0.33
	
		if paturn_time = 46
		{
		var sound_break_effect = audio_play_sound(vine,2,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	
	if paturn_time >= 60 && paturn_time < 70
	{
	image_xscale += (0.85 - image_xscale)*0.33
	image_yscale += (1.15 - image_yscale)*0.33
	
		if paturn_time = 66
		{
		var sound_break_effect = audio_play_sound(vine,2,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	
	if paturn_time >= 100
	{
	image_xscale += (1 - image_xscale)*0.1
	image_yscale += (1 - image_yscale)*0.1
	}
	
	if paturn_time = 180 || paturn_time = 195 || paturn_time = 210
	{
	var target = player
	if global.co_op_mode = 1
	{
	target = choose(player,player_co_op)
	}
	var seed_ = instance_create(target.x,target.y-256,seed_bomb)
	seed_.received = 0
	seed_.floor_y = target.y+3
	}
	
	if paturn_time >= 250
	{
	paturn = 0
	paturn_time = 0
	}
}


if paturn = 3
{
image_index = 1
paturn_time ++

	if paturn_time < 55
	{
	image_xscale += (1.15 - image_xscale)*0.15
	image_yscale += (0.85 - image_yscale)*0.15
	}
	
	if paturn_time >= 24 && paturn_time < 30
	{
	image_xscale += (0.85 - image_xscale)*0.33
	image_yscale += (1.15 - image_yscale)*0.33
	}
	
	
	if paturn_time = 27
	{
	var target = player
		if global.co_op_mode = 1
		{
		target = choose(player,player_co_op)
		}
		
	var sound_break_effect = audio_play_sound(vine,2,false)
	audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume,0)
		
	var seed_ = instance_create(target.x,target.y-256,seed_bomb_2)
	seed_.received = 0
	seed_.floor_y = target.y+3
	}

	
	if paturn_time >= 55
	{
	image_xscale += (1 - image_xscale)*0.1
	image_yscale += (1 - image_yscale)*0.1
	}
	
	if paturn_time >= 150
	{
	paturn = 0
	paturn_time = 0
	}
}











if breathing > 0
{
breath_time ++
	if breath_time > 55
	{
	breath_time = 0
	breathing ++
		if breathing > 2
		{
		breathing = 1
		}
	}
	
	if breathing = 1
	{
	image_xscale -= 0.0005
	image_yscale -= 0.0005
	}
	
	if breathing = 2
	{
	image_xscale += 0.0005
	image_yscale += 0.0005
	}
}
else
{
	if paturn = 0
	{
	image_xscale = 1
	image_yscale = 1
	}
}