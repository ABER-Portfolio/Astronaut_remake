/// @description Insert description here
// You can write your code in this editor
depth = -room_width*2.01
var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+220*camera_yscale

var image_size = 1

x = xx+camera_xscale*24*image_size
y = yy+(camera_yscale*48*image_size*t_y)

image_xscale = image_size*camera_xscale
image_yscale = image_size*camera_yscale


if tt_y <= 0
{
tt_y = 1
};


t_y += (tt_y - t_y)*0.2


text_alpha += (t_text_alpha - text_alpha)*0.1
left_time_alpha += (t_left_time_alpha - left_time_alpha)*0.1



//////////////////////////////////////////////////////////////////////////////////////////////////
if image_index = 0
{
text = "Low oxygen"
left_time = global.o2-1
	if global.o2 > 3.5
	{
	code.created_o2_ui_buff = 0
	des = 1
	}
}

if image_index = 1
{
text = "Poisoning"
left_time = global.poisoning
	if global.poisoning <= 0
	{
	code.created_po_ui_buff = 0
	des = 1
	}
}

if image_index = 2
{
text = "Burning"
left_time = global.burning
	if global.burning <= 0
	{
	code.created_bu_ui_buff = 0
	des = 1
	}
}

if image_index = 3
{
text = "Radiation"
left_time = global.radiation
	if global.radiation <= 0
	{
	code.created_ra_ui_buff = 0
	des = 1
	}
}

if image_index = 4 || image_index = 5
{
left_time = global.temperature
	if global.temperature > 26
	{
	image_index = 5
	text = "High temperature"
	}
	else if global.temperature < 26
	{
	image_index = 4
	text = "Low temperature"
	}
	
	if point_distance(global.temperature,0,26,0) < 5
	{
	code.created_te_ui_buff = 0
	des = 1
	}
}

if image_index = 6
{
text = "Poisoning defence"
left_time = global.de_poisoning
	if global.de_poisoning <= 0
	{
	code.created_de_po_ui_buff = 0
	des = 1
	}
}

if image_index = 7
{
text = "Burning defence"
left_time = global.de_fire
	if global.de_fire <= 0
	{
	code.created_de_bu_ui_buff = 0
	des = 1
	}
}

if image_index = 8
{
text = "Radiation defence"
left_time = global.de_radiation
	if global.de_radiation <= 0
	{
	code.created_de_ra_ui_buff = 0
	des = 1
	}
}

if image_index = 9
{
text = "Cold defence"
left_time = global.de_cold
	if global.de_cold <= 0
	{
	code.created_de_co_ui_buff = 0
	des = 1
	}
}

if image_index = 10
{
text = "Night vision"
left_time = global.night_vision
	if global.night_vision <= 0
	{
	code.created_nv_ui_buff = 0
	des = 1
	}
}

if image_index = 11
{
text = "Oxygen healing"
left_time = global.ignore_oxygen
	if global.ignore_oxygen <= 0
	{
	code.created_de_o2_ui_buff = 0
	des = 1
	}
}

if image_index = 12
{
text = "Health healing"
left_time = global.keep_healing
	if global.keep_healing <= 0
	{
	code.created_hp_healing_ui_buff = 0
	des = 1
	}
}

if image_index = 13
{
text = "Undead"
left_time = global.ignore_hp
	if global.ignore_hp <= 0
	{
	code.created_de_hp_ui_buff = 0
	des = 1
	}
}

if image_index = 14
{
text = "Movement speed increase"
left_time = global.plus_speed
	if global.plus_speed <= 0
	{
	code.created_movement_speed_ui_buff = 0
	des = 1
	}
}

if image_index = 15
{
text = "Swing speed increase"
left_time = global.plus_swing_speed
	if global.plus_swing_speed <= 0
	{
	code.created_swing_speed_ui_buff = 0
	des = 1
	}
}

if image_index = 16
{
text = "Safe zone"
	if co_op_code.is_server = true
	{
		if global.safe_zone_origin <= 0
		{
		code.created_safe_zone = 0
		des = 1
		left_time = global.safe_zone_origin
		}
	}
	else
	{
		if global.co_op_mode = 1
		{
			if global.safe_zone_co_op <= 0
			{
			code.created_safe_zone = 0
			des = 1
			left_time = global.safe_zone_co_op
			}
		}
		else
		{
			if global.safe_zone_origin <= 0
			{
			code.created_safe_zone = 0
			des = 1
			left_time = global.safe_zone_origin
			}
		}
	}
}






if des = 1
{
image_alpha -= 0.06
	if image_alpha <= 0
	{
	instance_destroy()
	};
};
else
{
	if image_alpha < 1
	{
	image_alpha += 0.05
	};
};

