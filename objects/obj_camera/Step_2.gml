/// @description Insert description here
// You can write your code in this editor

if global.t_shake_x > 0 || global.t_shake_y > 0
{
global.shake_time ++
	if global.shake_time > 2
	{
	global.t_shake_x += (0 - global.t_shake_x)*0.1
	global.t_shake_y += (0 - global.t_shake_y)*0.1

		if abs(global.t_shake_x) < 0.05
		{
		global.t_shake_x = 0
		}
		
		if abs(global.t_shake_y) < 0.05
		{
		global.t_shake_y = 0
		}
		
		
		if global.shake_x = 0
		{
		global.shake_x = global.t_shake_x
		}
		else
		{
		global.shake_x = -global.t_shake_x*sign(global.shake_x)
		}
		
		if global.shake_y = 0
		{
		global.shake_y = global.t_shake_y
		}
		else
		{
		global.shake_y = -global.t_shake_y*sign(global.shake_y)
		}
	global.shake_time = 0
	}
}


if v_x <= 0
{
v_x = 0
}

if v_y <= 0
{
v_y = 0
}

if instance_number(player) > 0
{
v_x += (tv_x - v_x)*0.1;
v_y += (tv_y - v_y)*0.1;
}
var length = string_length(text_beta)
if t_beta_test_text_x = 0
{
beta_test_text_x += (138-length - beta_test_text_x)*0.05
}
else
{
beta_test_text_x += (170 - beta_test_text_x)*0.05
}

if global.saving_data > 0
{
t_beta_test_text_x = 0
text_beta = "Now saving game data. Please do not quit the game!"
}

