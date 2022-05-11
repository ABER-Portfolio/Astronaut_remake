/// @description Insert description here
// You can write your code in this editor

if co_op_code.is_server = true
{
var p_dis = point_distance(player.x,player.y+5,x,y)
var s_ef = audio_play_sound(choose(bat_1,bat_2,bat_3),0,false)
	if p_dis <= 128
	{
	audio_sound_gain(s_ef,(p_dis/128)*5*global.master_volume*global.sfx_volume*global.scene_volume,1)
	}
}
else
{
var p_co_dis = point_distance(player_co_op.x,player_co_op.y+5,x,y)
var s_ef = audio_play_sound(choose(bat_1,bat_2,bat_3),0,false)
	if p_co_dis <= 128
	{
	audio_sound_gain(s_ef,(p_co_dis/128)*5*global.master_volume*global.sfx_volume*global.scene_volume,1)
	}
}

alarm[5] = irandom_range(2000,4000)