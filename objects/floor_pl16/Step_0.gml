/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0
{
	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
	var _x = x - __view_get( e__VW.XView, 0 )
	var _y = y - __view_get( e__VW.YView, 0 )
	draw_sprite_ext(sprite_index,237,_x,_y,image_xscale,image_yscale,image_angle,$FFFF8A5D, 0.72*global.light_bright);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
}





if !position_meeting(x,y-32,fl_parents) && instance_number(BG_blind) = 0
{
	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
	var _x = x - __view_get( e__VW.XView, 0 )
	var _y = y-36 - __view_get( e__VW.YView, 0 )
	draw_sprite_ext(sprite1711,15,_x,_y,image_xscale,image_yscale,image_angle,$FFFF8A5D, 0.72*global.light_bright);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
}
