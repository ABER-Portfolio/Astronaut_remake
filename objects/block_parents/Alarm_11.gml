/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,player)
{
var sf_ef = audio_play_sound(choose(break1,break2,break3,break4),1,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
instance_destroy()
}