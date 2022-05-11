/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
	if co_op_code.is_server = true
	{
		if place_meeting(x,y,player)
		{
		var sf_ef = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
		instance_destroy()
		}
	}
	else
	{
		if place_meeting(x,y,player_co_op)
		{
		var sf_ef = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
		instance_destroy()
		}
	}
}