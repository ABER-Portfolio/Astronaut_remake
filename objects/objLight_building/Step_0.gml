/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.lightsurf2)
{
surface_set_target(global.lightsurf2);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_SurfLight_2,0,x- __view_get( e__VW.XView, 0 ),y- __view_get( e__VW.YView, 0 )-32, 0.5, 0.5, 0, $ffffff, global.in_building);
gpu_set_blendmode(bm_normal);
surface_reset_target();
}
else
{
global.lightsurf2 = surface_create(1920, 1080);
}