/// @description Insert description here
// You can write your code in this editor
if global.dev_mode > 1
{
var sound_break_effect = audio_play_sound(keycard_sef,1,false)
audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
inventory_item_sub(item46,1,0)
opened = 1
}