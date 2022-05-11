/// @description Insert description here
// You can write your code in this editor

if text_cool_time = 0
{
text_cool_time = 1
	if text_now < 2
	{
	image_alpha = 0
	text_now ++
	alarm[2] = 20
	
	var aud = audio_play_sound(button,0,false)
	audio_sound_gain(aud,0.1*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
	else
	{
	pl_rocket.alarm[1] = 60
	des = 1
	}
}