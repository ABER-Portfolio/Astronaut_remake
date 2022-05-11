/// @description Insert description here
// You can write your code in this editor
if instance_number(objLightManager) > 1
{
instance_destroy()
}
else
{
chat_buffer = buffer_create(2, buffer_grow, 1);

global.basecolor = 0;
global.lightsurf = surface_create(1920, 1080);


day_light = instance_create(x,y,objLight)
day_light.alpha = 1
day_light.lightcol = $00FFFFFF & $ffffff

sun_light = instance_create(x,y,objLight)
sun_light.alpha = 0
sun_light.lightcol = $FF3D81FF & $ffffff


moon_light = instance_create(x,y,objLight)
moon_light.alpha = 0
moon_light.lightcol = $FFF8FFCC & $ffffff

night_vision = instance_create(x,y,objLight)
night_vision.alpha = 0
night_vision.lightcol = $FF89E590 & $ffffff



day_light_alpha = 1
sun_light_alpha = 1
flash_light_alpha = 1
moon_light_alpha = 1

}