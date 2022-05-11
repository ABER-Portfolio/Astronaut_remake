/// @description Insert description here
// You can write your code in this editor

var omn = own_menu_name

if instance_number(destroy_map) > 0
{
	if destroy_map.press = 0
	{
		if global.select = select && w_alpha >= 0.1
		{
			if global.all_map_num > 0
			{
				if omn = string(global.map_name[select]) || omn = string(global.map_name[select])
				{
					if dilay_a = 0 && global.map_name[select] != 0 && global.map_name[select] != "0"
					{
					dilay_a = 1
					instance_destroy(BT_setting)
					instance_destroy(BG_title)
					global.map_num = select
					obj_camera.setting_blind = 1.2
					room_goto(ingame)
					global.n_room = 1
					obj_camera.alarm[9] = 1
					obj_camera.alarm[7] = 60
					}
				}
			}

			if omn = "Create new world" || omn = "새로운 월드 생성"
			{
			instance_destroy(BT_setting)
			room_goto(loading_room)
			global.map_num = global.all_map_num+1
			}
		}
	}
	else
	{
		if omn = "Delete "+string(global.map_name[select]) || omn = string(global.map_name[select])+" 을(를) 삭제합니다"
		{

		global.map_name[global.map_num] = "(deleted_map)"
		
		ini_open("Astronaut_remake_map_pr.ini")

		ini_write_real("all_map_num","all_map_num",global.all_map_num)
		ini_write_string("map_name","map_name"+string(global.map_num),global.map_name[global.map_num])

		ini_close()

		
		
		
		instance_destroy(select_map_button)
		BG_title.alarm[3] = 3
		}
	}
}