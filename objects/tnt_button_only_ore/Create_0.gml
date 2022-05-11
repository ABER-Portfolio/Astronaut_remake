/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_speed = 0
image_index = 3
image_xscale = 0
image_yscale = 0
dilay = 0

site_scale = 0
time = 0

if (!position_meeting(x,y,fl_parents))
{
instance_destroy()
}


if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}



if instance_number(BG_blind) = 0
{
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
}

alarm[11] = 1