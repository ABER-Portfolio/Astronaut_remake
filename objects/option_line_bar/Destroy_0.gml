/// @description Insert description here
// You can write your code in this editor
if instance_number(ingame_button_setting) > 0
{
var bvx = ingame_button_setting.b_v_x
var bvy = ingame_button_setting.b_v_y

obj_camera.v_x = bvx
obj_camera.v_y = bvy

obj_camera.tv_x = 1280/(4-(global.sight*2))
obj_camera.tv_y = 720/(4-(global.sight*2))
}

if global.mobile = 0
{
	if global.window_ = 1280
	{
	window_set_fullscreen(false)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	window_set_size(1280,720)
	global.b_window = global.window_
	}


	if global.window_ = 1920
	{
	window_set_fullscreen(true)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	window_set_size(1920,1080)
	global.b_window = global.window_
	}
	
	if instance_number(ingame_button_setting) = 0 && code.fir_win_set = 0
	{
		if instance_number(BG_title) > 0
		{
		instance_activate_object(BT_title)
		instance_destroy(BT_title)

		var select = 3
		global.select = select
		BG_title.can_press = select
		BG_title.max_can_press = 0
		BG_title.alarm[2] = 1
		}
	}
	code.fir_win_set = 0
}
else
{
global.window_ = 1600
window_set_fullscreen(true)
surface_resize(application_surface, display_get_width (), display_get_height ());
window_set_size(1600,900)
global.b_window = global.window_
}









