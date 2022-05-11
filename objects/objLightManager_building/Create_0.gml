/// @description Insert description here
// You can write your code in this editor
if instance_number(objLightManager_building) > 1
{
instance_destroy()
}
else
{
global.basecolor2 = 0;
global.lightsurf2 = surface_create(1920, 1080);
}
