/// @description Insert description here
// You can write your code in this editor

chat_buffer = buffer_create(2, buffer_grow, 1);
image_speed = 0
image_index = 4
noclip_block = instance_create(x,y,block_noclip)
image_xscale = 0.5
image_yscale = 0.5



if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}


txscale = 0.5
tyscale = 0.5
xscale = 0.5
yscale = 0.5
auto_picking = 1
draw_hp_bar = 0
auto_target = 0
inside_of_view = 0

furnacing_ore = noone
furnacing_time = 0
d_ore_bar_ready = 0
scale_plus = 0
scale_plus_time = 0
alarm[1] = 60




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

alarm[10] = 1