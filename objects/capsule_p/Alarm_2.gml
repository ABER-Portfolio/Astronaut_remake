/// @description Insert description here
// You can write your code in this editor
w_alpha = 1
var sound_break_effect = audio_play_sound(bomb_beep,2,false)
audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)

if 100-destroy_ > 5
{
alarm[2] = 100-destroy_
}
else
{
alarm[2] = 5
}