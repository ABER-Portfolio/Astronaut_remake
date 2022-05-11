/// @description Insert description here
// You can write your code in this editor

light = instance_create(x,y,objLight_for_obj)
light.x = x
light.y = y
light.lightxs = 23
light.lightys = 23
light.lightcol = $FF99EFFF
light.alpha = 0.7


image_speed = 0
image_alpha = 1

image_xscale = 0.7
image_yscale = 0.7

var sound_effect = audio_play_sound(choose(portal_shot_sound1,portal_shot_sound2,portal_shot_sound3),1,false)
audio_sound_gain(sound_effect,global.master_volume*global.sfx_volume*global.scene_volume*0.8,0)