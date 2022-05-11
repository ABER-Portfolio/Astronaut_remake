/// @description Insert description here
// You can write your code in this editor
depth = -(y+11)

if time != -1
{
time += 0.5

	if time > 30
	{
	time += 0.5
	}

	if time > 60
	{
	time += 1
	}
}

if time%2
{
w_alpha = 1
var sound_break_effect = audio_play_sound(bomb_beep,2,false)
audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)
}
else
{
w_alpha = 0
}

if time > 80
{
alarm[0] = 1
time = -1
}