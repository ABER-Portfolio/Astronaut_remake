/// @description Insert description here
// You can write your code in this editor
if !os_is_paused()
{
depth = -room_width*2

	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprSurfLight, 0, x,y, lightxs, lightys, 0, lightcol, 1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
	else
	{
	global.lightsurf = surface_create(1920, 1080);
	}
}