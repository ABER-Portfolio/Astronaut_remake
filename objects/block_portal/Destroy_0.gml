/// @description Insert description here
// You can write your code in this editor
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

view_shake(5,1,4)

if instance_number(creating_maps) = 0 || global.change_map_to > 0
{
global.worm_boss++

	randomize()

	if global.guide_massage = 0
	{
		if global.worm_boss = 1
		{
		chat_up("Crystal was broken",0);
		}

		if global.worm_boss = 2
		{
		chat_up("Feel like someone is coming",0);
		}

		if global.worm_boss = 3
		{
		chat_up("Guardian worm has appeared!",0);
		}
	}
}

if buffer_exists(chat_buffer)
{
	if global.co_op_mode = 1
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.A_BL_STATE);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, -1);
	buffer_write(chat_buffer, buffer_string, -1);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, auto_picking);
	buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
	send_all(chat_buffer);
	buffer_delete(chat_buffer);
	}
}