

	//일반지형
	if position_meeting(x,y+10,floor_pl0)
	{
	global.biome = 0
	global.t_movement_speed = 2
	global.t_hmovement_speed = 2
	global.biome_real = "normal"
	}
	else if position_meeting(x,y+10,floor_pl1) //블러드 지역
	{
	global.biome = 1
	global.t_movement_speed = 2
	global.t_hmovement_speed = 2
	global.biome_real = "bloody"
		if global.radiation < 100 && increasing_buff >= 60
		{
			if global.de_radiation <= 0
			{
			global.radiation += 0.0025
			global.radiation += global.radiation*0.01
			}
		}
	}
	else if position_meeting(x,y+10,floor_pl5)//블러드 얼음
	{
	global.biome_real = "bloody_ice"
	global.t_movement_speed = 2.2
	global.t_hmovement_speed = 2.2
	global.biome = 1
		if global.radiation < 100 && increasing_buff >= 60
		{
			if global.de_radiation <= 0
			{
			global.radiation += 0.0025
			global.radiation += global.radiation*0.01
			}
		}
	
		if global.de_cold <= 0
		{
			if global.temperature > -35
			{
			global.temperature -= 0.001
			}
		}
	}
	else if position_meeting(x,y+10,floor_pl6)//블러드 사막
	{
	global.biome_real = "bloody_desert"
	global.t_movement_speed = 1.5
	global.t_hmovement_speed = 1.5
	global.biome = 1
		if global.radiation < 100 && increasing_buff >= 60
		{
			if global.de_radiation <= 0
			{
			global.radiation += 0.0025
			global.radiation += global.radiation*0.01
			}
		}
	
		if global.night = 0
		{
			if global.temperature < 35
			{
			global.temperature += 0.001
			}
		}
		else
		{
			if global.de_cold <= 0
			{
				if global.temperature > 3
				{
				global.temperature -= 0.02
				}
			}
		}
	}
	else if position_meeting(x,y+10,floor_pl2) //오염된 지역
	{
	global.biome = 2
	global.biome_real = "polluted"
	global.t_movement_speed = 2
	global.t_hmovement_speed = 2
		if global.poisoning < 100 && increasing_buff >= 60
		{
			if global.de_poisoning <= 0
			{
			global.poisoning += 0.01
			}
		}
	}
	else if position_meeting(x,y+10,floor_pl7)//오염된 얼음
	{
	global.biome_real = "polluted_ice"
	global.t_movement_speed = 2.2
	global.t_hmovement_speed = 2.2
	global.biome = 2
		if global.poisoning < 100 && increasing_buff >= 60
		{
			if global.de_poisoning <= 0
			{
			global.poisoning += 0.01
			}
		
			if global.de_cold <= 0
			{
				if global.temperature > -35
				{
				global.temperature -= 0.001
				}
			}
		}
	}
	else if position_meeting(x,y+10,floor_pl8)//오염된 사막
	{
	global.biome_real = "polluted_desert"
	global.t_movement_speed = 1.5
	global.t_hmovement_speed = 1.5
	global.biome = 2
		if global.de_poisoning <= 0
		{
			if global.poisoning < 100 && increasing_buff >= 60
			{
			global.poisoning += 0.01
			}
		}
		
			if global.night = 0
			{
				if global.temperature < 35
				{
				global.temperature += 0.01
				}
			}
			else
			{
				if global.de_cold <= 0
				{
					if global.temperature > 3
					{
					global.temperature -= 0.02
					}
				}
			}
	}
	else if position_meeting(x,y+10,floor_pl3)//얼음
	{
	global.biome_real = "ice"
	global.t_movement_speed = 2.2
	global.t_hmovement_speed = 2.2
	global.biome = 3
		if global.de_cold <= 0
		{
			if global.temperature > -35
			{
			global.temperature -= 0.08
			}
		}
	}
	else if position_meeting(x,y+10,floor_pl4)//사막
	{
	global.biome_real = "desert"
	global.t_movement_speed = 1.5
	global.t_hmovement_speed = 1.5
	global.biome = 4
		if global.night = 0
		{
			if global.temperature < 35
			{
			global.temperature += 0.01
			}
		}
		else
		{
			if global.de_cold <= 0
			{
				if global.temperature > 3
				{
				global.temperature -= 0.02
				}
			}
		}
	
	}
	else if position_meeting(x,y+10,floor_pl9)//메테오
	{
	global.biome_real = "meteor"
	global.t_movement_speed = 1.43
	global.t_hmovement_speed = 1.43
	global.biome = 5

		if global.de_fire <= 0
		{
			if global.burning < 0.1
			{
			global.burning += 0.1
			}
		}
	}
	else
	{
	global.t_movement_speed = 2
	global.t_hmovement_speed = 2
	}