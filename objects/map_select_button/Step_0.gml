/// @description Insert description here
// You can write your code in this editor
w_alpha += (-0.01 - w_alpha)*0.1

x += (t_x - x)*0.1
y += (t_y - y)*0.1
y += (mouse_y - y)*0.004
x += (mouse_x - x)*0.005




if des = 0
{
var __sa = saved_t_y - t_y
	if image_index = 0 && t_y < -(instance_number(map_select_button)*obj_camera.v_y/720*200)+obj_camera.v_y/720*50
	{
		with(map_select_button)
		{
		self.t_y += __sa
		}
	}

	if image_index = 0 && t_y > saved_t_y+obj_camera.v_y/720*750
	{
		with(map_select_button)
		{
		self.t_y -= (instance_number(map_select_button)*obj_camera.v_y/720*200)
		}
	}
}





if setting_num != 0
{
	if map_name = ""
	{
	image_index = real(string(global.last_stayed_biome[setting_num]))+1
	map_name = global.map_name[setting_num]
	}

	if (map_name = 0 || map_name = "0" || map_name = "Broken map file!\nYou cannot open this one")
	{
	map_name = "Broken map file!\nYou cannot open this one"
	image_index = 7
	}
}
else
{
	if global.language = 0
	{
	map_name = "Create new map"
	}
	else
	{
	map_name = "새로운 맵 생성"
	}
}



if image_index = 1
{
last_position_name = "Normal area"
}

if image_index = 2
{
last_position_name = "Crimson area"
}

if image_index = 3
{
last_position_name = "Polluted area"
}

if image_index = 4
{
last_position_name = "Ice area"
}

if image_index = 5
{
last_position_name = "Desert area"
}

if image_index = 6
{
last_position_name = "Meteorite area"
}