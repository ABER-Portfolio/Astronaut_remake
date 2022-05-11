/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])


if os_is_paused()
{
global.paused = 1

	if global.window_ = 1280
	{
	window_set_fullscreen(false)
	window_set_size(1280,720)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	global.b_window = global.window_
	}


	if global.window_ = 1920
	{
	window_set_fullscreen(true)
	window_set_size(1920,1080)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	global.b_window = global.window_
	}

	if global.anti_aliasing = 0
	{
	display_reset(0,global.vsync);
	surface_resize(application_surface, display_get_width (), display_get_height ());
	}

	if global.anti_aliasing = 1
	{
	display_reset(2,global.vsync);
	surface_resize(application_surface, display_get_width (), display_get_height ());
	}

	if global.anti_aliasing = 2
	{
	display_reset(4,global.vsync);
	surface_resize(application_surface, display_get_width (), display_get_height ());
	}

	if global.anti_aliasing = 3
	{
	display_reset(8,global.vsync);
	surface_resize(application_surface, display_get_width (), display_get_height ());
	}
}
else
{
global.paused = 0
}


if global.paused = 1 && global.dev_mode > 0
{
	if co_op_code.is_server = true
	{
	draw_sprite_ext(build_things,0,xx,yy,999,999,0,c_white,1)
	draw_text_kl_scale(xx+(obj_camera.v_x)*0.5,yy+(obj_camera.v_y)*0.5,"Paused!",999,-1,1,c_yellow,0,0,ko_80,0.35*obj_camera.v_x/1920,0.35*obj_camera.v_x/1920,0)
	}
}

//////////////////////////////////////모래바람 효과///////////////////////////////////
if instance_number(BG_blind) = 0
{
draw_set_alpha(dust_effect_alpha1)
draw_set_color(dust_1_color)
draw_line_width(xx-32,yy,xxx,yy,3000)

draw_set_alpha(dust_effect_alpha2)
draw_set_color(dust_2_color)
draw_line_width(xx-32,yy,xxx,yy,3000)


draw_set_alpha(rain_blind*0.3426236)
draw_set_color($FF3F2A17)
draw_line_width(xx-32,yy,xxx,yy,3000)
draw_set_color(c_white)
draw_set_alpha(1)
}