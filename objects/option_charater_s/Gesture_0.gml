/// @description Insert description here
// You can write your code in this editor
pressed ++
randomize()
global.gender++
if pressed > 1
{
pressed = 0
}


image_xscale = 0
image_yscale = 0
step_for_scale_shake = 0

if pressed = 1
{
global.gender = 0
}




var injured_audio = audio_play_sound(choose(injured_player1,injured_player2,injured_player3),1,false)
audio_sound_gain(injured_audio,20*global.master_volume*global.sfx_volume*global.scene_volume,1)
if global.gender != 0
{
audio_sound_pitch(injured_audio,global.gender*1.3)
}