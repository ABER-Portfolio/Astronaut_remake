/// @description Insert description here
// You can write your code in this editor
	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])

	if instance_number(player) > 0
	{
		if surface_exists(global.lightsurf2)
		{
		gpu_set_blendmode(bm_subtract);
		draw_surface_ext(global.lightsurf2,xx,yy, 1, 1, 0, $ffffff, global.in_building);
		gpu_set_blendmode(bm_normal);
		}
		else
		{
		global.lightsurf2 = surface_create(1920, 1080);
		}
	}