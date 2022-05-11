/// @description Insert description here
// You can write your code in this editor
depth = -room_width*2

if global.night_vision > 0
{
	if instance_number(night_vision) = 0
	{
	night_vision = instance_create(x,y,objLight)
	}
	night_vision.lightcol = $FF89E590 & $ffffff
	
	if global.night_vision > 10
	{
	night_vision.alpha = 0.125
	}
	else
	{
	night_vision.alpha = global.night_vision/80
	}
}
else
{
night_vision.alpha = 0
night_vision.lightcol = $FF89E590 & $ffffff
}

if instance_number(day_light) = 0
{
day_light = instance_create(x,y,objLight)
day_light.alpha = 0
day_light.lightcol = $00FFFFFF & $ffffff
}

if instance_number(sun_light) = 0
{
sun_light = instance_create(x,y,objLight)
sun_light.alpha = 0
sun_light.lightcol = $FF3D81FF & $ffffff
}

if instance_number(moon_light) = 0
{
moon_light = instance_create(x,y,objLight)
moon_light.alpha = 0
moon_light.lightcol = $FFF8FFCC & $ffffff
}

if global.n_room = 1
{
day_light.alpha = day_light_alpha
sun_light.alpha = sun_light_alpha
moon_light.alpha = moon_light_alpha
}
else if global.n_room = 2
{
day_light.alpha = 0
sun_light.alpha = 0
moon_light.alpha = 0.02//0.001
}
else
{
day_light.alpha = 0
sun_light.alpha = 0
moon_light.alpha = 0.07//0.001
}

if global.co_op_mode = 0
{
	if instance_number(player) > 0
	{
	global.time += 1

	if global.time >= 2000
	{
		if day_light_alpha < 0.9
		{
		day_light_alpha += 0.0001
		}
	}

	if global.time >= 60000 && global.time < 63000
	{
		if sun_light_alpha > 0
		{
		day_light_alpha -= 0.00002
		}
	
		if sun_light_alpha < 0.732362
		{
		sun_light_alpha += 0.0002512
		}
	}


	if global.time >= 56666
	{
		if day_light_alpha > 0
		{
		day_light_alpha -= 0.0002256
		}
	}

	if global.time >= 63000
	{
		if sun_light_alpha > 0
		{
		sun_light_alpha -= 0.0004623
		}
	}

	if global.time >= 66666
	{
		if day_light_alpha > 0
		{
		day_light_alpha -= 0.0007623
		}
	
		if sun_light_alpha > 0
		{
		sun_light_alpha -= 0.00078623
		}
	}


	if global.time >= 66666
	{
		if moon_light_alpha < 0.01
		{
		moon_light_alpha += 0.0001
		}
	}

	if global.time >= 0 && global.time < 66666
	{
		if moon_light_alpha > 0
		{
		moon_light_alpha -= 0.0001
		}
	}

	if global.time >= 0 && global.time < 2000
	{
		if sun_light_alpha > 0
		{
		day_light_alpha -= 0.0001
		}
	
		if sun_light_alpha > 0
		{
		sun_light_alpha -= 0.0001
		}
	}

	if global.time >= 80000
	{
	global.time = 0
	global.survived_days ++
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.PLUS_SURVIVAL_DAYS);
	send_all(chat_buffer);
	}
	}
}
else
{
	if instance_number(player) > 0 && co_op_code.is_server = true
	{
	global.time++

	if global.time >= 2000
	{
		if day_light_alpha < 0.9
		{
		day_light_alpha += 0.0001
		}
	}

	if global.time >= 60000 && global.time < 63000
	{
		if sun_light_alpha > 0
		{
		day_light_alpha -= 0.00002
		}
	
		if sun_light_alpha < 0.732362
		{
		sun_light_alpha += 0.0002512
		}
	}


	if global.time >= 56666
	{
		if day_light_alpha > 0
		{
		day_light_alpha -= 0.0002256
		}
	}

	if global.time >= 63000
	{
		if sun_light_alpha > 0
		{
		sun_light_alpha -= 0.0004623
		}
	}

	if global.time >= 66666
	{
		if day_light_alpha > 0
		{
		day_light_alpha -= 0.0007623
		}
	
		if sun_light_alpha > 0
		{
		sun_light_alpha -= 0.00078623
		}
	}


	if global.time >= 66666
	{
		if moon_light_alpha < 0.032
		{
		moon_light_alpha += 0.0001
		}
	}

	if global.time >= 0 && global.time < 66666
	{
		if moon_light_alpha > 0
		{
		moon_light_alpha -= 0.0001
		}
	}

	if global.time >= 0 && global.time < 2000
	{
		if sun_light_alpha > 0
		{
		day_light_alpha -= 0.0001
		}
	
		if sun_light_alpha > 0
		{
		sun_light_alpha -= 0.0001
		}
	}

	if global.time >= 80000
	{
	global.time = 0
	}
	}
	
	
	
	
buffer_seek(chat_buffer, buffer_seek_start, 0);
	
buffer_write(chat_buffer, buffer_u8, DATA.SEND_TIME);
buffer_write(chat_buffer, buffer_string, day_light_alpha);
buffer_write(chat_buffer, buffer_string, sun_light_alpha);
buffer_write(chat_buffer, buffer_string, flash_light_alpha);
buffer_write(chat_buffer, buffer_string, moon_light_alpha);
buffer_write(chat_buffer, buffer_string, global.time);
buffer_write(chat_buffer, buffer_string, global.rainy);
buffer_write(chat_buffer, buffer_string, global.wind_dir);
send_all(chat_buffer);
}
