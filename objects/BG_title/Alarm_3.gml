/// @description Insert description here
// You can write your code in this editor
if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = window_get_height()/(720*(global.mobile+1))


var max_i = 1+global.all_map_num

global.select = 0
can_press = 0
max_can_press = max_i
if instance_number(destroy_map) = 0
{
instance_create(1180,640,destroy_map)
}


var a = instance_create(0,670,BT_setting)
a.a = 11


for(var i = 0; i < max_i; i++)
{
var a = instance_create(640+(i*200/win_wid),360+64/win_hei,select_map_button)
a.select = i
a.own_menu_name = "error_unknown_name"
	if i = 0
	{
		if global.language = 0
		{
		a.own_menu_name = "Create new world"
		}
		if global.language = 1
		{
		a.own_menu_name = "새로운 월드 생성"
		}
	}
	
	if i >= 1
	{
	a.own_menu_name = string(global.map_name[i])
	}
}


step = 3