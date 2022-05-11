/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.lightsurf)
{
surface_set_target(global.lightsurf);
draw_clear(global.basecolor);
surface_reset_target();
}
else
{
global.lightsurf = surface_create(1920, 1080);
}