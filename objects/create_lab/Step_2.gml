/// @description Insert description here
// You can write your code in this editor

light.x = x
light.y = y

image_alpha += (0.3 - image_alpha)*0.08
depth = room_width*1.5-(y+32)

exit_time++
light_turnoff_time++


if lab_generator = 1
{
	for(var i = 0; i < 24; i++)
	{
		if light_[i] != 0
		{
		light_[i].lightxs += 200
		light_[i].lightys += 200
		light_[i].alpha += 0.4
		}
	}
lab_generator = 2
}


if light_turnoff_time > 100
{
	if light_turnon_time = 0
	{
	random_val = irandom_range(0,24)
		if light_[random_val] != 0
		{
		saved_light_alpha = light_[random_val].alpha
		light_[random_val].alpha = 0
		}
	}
light_turnon_time++
}

if light_turnon_time > 13
{
light_[random_val].alpha = saved_light_alpha
light_turnon_time = 0
light_turnoff_time = irandom_range(-5,20)
}


if dilay = 0
{
	if co_op_code.is_server = true
	{
			if exit_time > 1800
			{
			go_back = 1
			}
			else
			{
				if place_meeting(x,y,player)
				{
				chat_up("You have to wait "+string(floor((1800 - exit_time)/60))+"s to exit",0)
				}
			}
		dilay = 1
		alarm[2] = 1
	}
	else
	{
			if exit_time > 1800
			{
			go_back = 1
			}
			else
			{
				if place_meeting(x,y,player_co_op)
				{
				chat_up("You have to wait "+string(floor((1800 - exit_time)/60))+"s to exit",0)
				}
			}
		dilay = 1
		alarm[2] = 1
	}
}
