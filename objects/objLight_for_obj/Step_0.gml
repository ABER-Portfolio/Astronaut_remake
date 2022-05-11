/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0
{
	depth = -room_width*5
	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
		if instance_number(player) > 0
		{
		draw_sprite_ext(sprSurfLight, 0, x - __view_get( e__VW.XView, 0 ) ,y - __view_get( e__VW.YView, 0 ), (lightxs/256)*global.light_scaling, (lightys/256)*global.light_scaling, 0, lightcol, alpha*global.light_bright);
		}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
}
