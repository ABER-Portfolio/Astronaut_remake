/// @description breathing

if instance_number(player) > 0 && global.knocked_out = 0
{
breath = audio_play_sound(breath_1,0,false)
audio_sound_gain(breath,0.4*global.master_volume*global.sfx_volume*global.scene_volume,1)

	if global.o2 <= 1 && global.ignore_oxygen <= 0
	{
	global.poisoning ++
	}
	
	if global.o2 < 3
	{
	alarm[1] = (global.o2)*30+100
	}
	else
	{
	alarm[1] = 200
	}
}
else
{
audio_stop_sound(breath_1)
alarm[1] = 1
}