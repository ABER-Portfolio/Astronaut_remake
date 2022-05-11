/// @description Insert description here
// You can write your code in this editor
if can_click = 1
{
	if setting_num = 0
	{
	global.map_num = global.all_map_num+1
	map_select_button.t_y -= 820
	map_select_button.des = 1
	main_menu_button.t_y -= 820
	main_menu_title.t_y -= 820
	
	main_menu_button.can_click = 0
	map_select_button.can_click = 0
	
	alarm[2] = 100
	}
	else
	{
		if global.all_map_num > 0
		{
			if map_name = string(global.map_name[setting_num])
			{
				if map_name != "Broken map file!\nYou cannot open this one"
				{
				instance_create(x,y,BG_blind)
				instance_destroy(BT_setting)
				instance_destroy(BG_title)
				global.map_num = setting_num
				obj_camera.setting_blind = 1.2
				room_goto(ingame)
				global.n_room = 1
				global.now_loading = 0
				//obj_camera.alarm[9] = 1
				}
			}
		}
	}
global.now_loading = 1
}
