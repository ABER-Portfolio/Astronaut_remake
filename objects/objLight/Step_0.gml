/// @description Insert description here
// You can write your code in this editor
if !os_is_paused()
{
	var xx = global._came_vx;
	var yy = global._came_vy;

	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_SurfLight_2, 0,xx,yy, 1920, 1080, 0, lightcol, alpha);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
	else
	{
	global.lightsurf = surface_create(1920, 1080);
	}
}