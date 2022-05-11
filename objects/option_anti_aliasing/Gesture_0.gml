/// @description Insert description here
// You can write your code in this editor
pressed ++
if pressed > 3
{
pressed = 0
}


image_xscale = 0
image_yscale = 0
step_for_scale_shake = 0

global.anti_aliasing = pressed


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