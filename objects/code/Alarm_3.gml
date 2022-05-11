/// @description Buff
if global.knocked_out = 0 && global.do_not_move = 0
{
	//방사능
	if global.radiation > 0
	{
	radiation_buff_damage ++
		if (global.biome_real != "bloody" && global.biome_real != "bloody_desert" && global.biome_real != "bloody_ice") || global.de_radiation > 0
		{
		global.radiation -= 0.02*global.radiation_dec_sp
		}
		
	auto_heal = 0
		if radiation_buff_damage >= 6
		{
		code.before_hp = global.hp
		global.hp -= 1
		radiation_buff_damage = 3
		}
	}
	else
	{
	radiation_buff_damage = 0
	}

	//독중독
	if global.poisoning > 0
	{
	poison_buff_time ++
		if (global.biome_real != "polluted" && global.biome_real != "polluted_desert" && global.biome_real != "polluted_ice") || global.de_poisoning > 0
		{
		global.poisoning -= 0.025*global.poisoning_dec_sp
		}
	
		if poison_buff_time >= 3
		{
		auto_heal = 0
		poison_buff_time = 0
		code.before_hp = global.hp
		global.hp -= 1
		}
	}
	else
	{
	poison_buff_time = 0
	}

//불에탐
if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
		if global.burning > 0
		{
		burning_buff_time ++
		player.image_blend = c_orange
		
			for(var ii = 0; ii < choose(4,4,4,5,5,6,6,6,6); ii++)
			{
				if global.obj_effect = 0
				{
				var ef_fire = instance_create(player.x+irandom_range(-4,4),player.y+irandom_range(-4,8),fire_noburn)
				var scale = irandom_range(150,100)/800
				ef_fire.image_xscale = scale
				ef_fire.image_yscale = scale
				ef_fire.vspeed = -(irandom_range(400,800)/500)
				ef_fire.hspeed = irandom_range(-360,360)/500
				ef_fire.scale_min = irandom_range(10,50)/9000
				ef_fire.floor_y = player.y+12+irandom_range(-2,2)
				ef_fire.depth = player.depth-1
				}
			}
	
	
			if burning_buff_time >= 1
			{
				if (global.biome_real != "meteor") || global.de_fire > 0
				{
				global.burning -= 1
				}
			
			burning_buff_time = 0
			auto_heal = 0
			code.before_hp = global.hp
			global.hp -= 1
			}
		}
		else
		{
		burning_buff_time = 0
		player.image_blend = c_white
		}
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
		if global.burning > 0
		{
		burning_buff_time ++
		player_co_op.image_blend = c_orange
		
			for(var ii = 0; ii < choose(4,4,4,5,5,6,6,6,6); ii++)
			{
				if global.obj_effect = 0
				{
				var ef_fire = instance_create(player_co_op.x+irandom_range(-4,4),player_co_op.y+irandom_range(-4,8),fire_noburn)
				var scale = irandom_range(150,100)/800
				ef_fire.image_xscale = scale
				ef_fire.image_yscale = scale
				ef_fire.vspeed = -(irandom_range(400,800)/500)
				ef_fire.hspeed = irandom_range(-360,360)/500
				ef_fire.scale_min = irandom_range(10,50)/9000
				ef_fire.floor_y = player_co_op.y+12+irandom_range(-2,2)
				ef_fire.depth = player_co_op.depth-1
				}
			}
	
	
			if burning_buff_time >= 1
			{
				if (global.biome_real != "meteor") || global.de_fire > 0
				{
				global.burning -= 1
				}


			auto_heal = 0
			burning_buff_time = 0
			auto_heal = 0
			code.before_hp = global.hp
			global.hp -= 1
			}
		}
		else
		{
		burning_buff_time = 0
		player_co_op.image_blend = c_white
		}
	}
}





			//온도효과
			if (global.biome_real != "ice" && global.biome_real != "desert" && global.biome_real != "bloody_ice" && global.biome_real != "bloody_desert" && global.biome_real != "polluted_desert" && global.biome_real != "polluted_ice")
			{
			global.temperature += (26 - global.temperature)*0.1*global.temperature_rec_sp
			}

			if global.temperature > 34 && global.de_fire <= 0
			{
			temparature_buff_time ++
				if temparature_buff_time > 100
				{
				auto_heal = 0
				code.before_hp = global.hp
				global.hp -= 1
				temparature_buff_time = 0
				}
			}
			
			if global.temperature < 12 && global.de_cold <= 0
			{
			temparature_buff_time ++
				if temparature_buff_time > 70
				{
				auto_heal = 0
				code.before_hp = global.hp
				global.hp -= 1
				temparature_buff_time = 0
				}
			}
			
			if abs(global.temperature - 26) < 6
			{
			temparature_buff_time = 0
			}



	///////////////////////////////////////////////////////////////////////////



	//방사능
	if global.radiation < 0
	{
	global.radiation = 0
	}

	//독중독
	if global.poisoning < 0
	{
	global.poisoning = 0
	}

	//불에탐
	if global.burning < 0
	{
	global.burning = 0
	}

}
else
{
//방사능
global.radiation = 0
//독중독
global.poisoning = 0
//불에탐
global.burning = 0
//불에탐
global.temperature = 26
}


alarm[3] = 30