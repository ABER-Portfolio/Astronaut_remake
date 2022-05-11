/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.lightsurf2)
{
surface_set_target(global.lightsurf2);
draw_clear(global.basecolor2);
surface_reset_target();
}
else
{
global.lightsurf2 = surface_create(1920, 1080);
}