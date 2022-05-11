/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.lightsurf2)
{
surface_set_target(global.lightsurf2);
gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
draw_set_color($ffffff);
draw_rectangle(0, 0, 1920, 1080, 0);
gpu_set_blendmode(bm_normal);
surface_reset_target();
}
else
{
global.lightsurf2 = surface_create(1920, 1080);
}
