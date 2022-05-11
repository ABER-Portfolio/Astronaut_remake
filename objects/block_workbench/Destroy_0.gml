/// @description Insert description here
// You can write your code in this editor
instance_activate_object(noclip_block)
instance_destroy(noclip_block)

if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
	audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
	audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}

if buffer_exists(chat_buffer)
{
buffer_delete(chat_buffer);
}