/// @description Insert description here
// You can write your code in this editor
if abs(x - mouse_x) < 64
{
x = round(mouse_x)
}
else
{
x += (mouse_x - x)*0.1
}



if abs(y - mouse_y) < 64
{
y = round(mouse_y)
}
else
{
y += (mouse_y - y)*0.1
}


if telescope_disable = 1
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
	if instance_number(target_) > 0
	{
	mx = target_.x
	my = target_.y
	}
}



	if b = 0
	{
	image_xscale += (1.4 - image_xscale)*0.05
	image_yscale += (1.4 - image_yscale)*0.05
	}
	else
	{
	image_xscale += (1.2 - image_xscale)*0.05
	image_yscale += (1.2 - image_yscale)*0.05
	}



if instance_number(BG_blind) = 0
{
	if global.inv_open != 0
	{
		if (keyboard_check(vk_alt))
		{
		image_index = 1
		}
		else
		{
			if mouse_check_button(mb_left)
			{
			image_index = 2
			}
			else
			{
			image_index = 4
			}
		}
	}
	
	if global.inv_open = 0
	{
		if instance_number(build_system) > 0
		{
		image_index = 3
		}
		else
		{
		image_index = 0
		}
	}
}
else
{
	if instance_number(option_line_bar) = 0 && instance_number(BG_title) = 0
	{
	image_index = 3
	}
	else
	{
	image_index = 0
	}
}