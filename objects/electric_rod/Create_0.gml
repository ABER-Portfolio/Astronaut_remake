/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

image_speed = 0


a = 0
open_chest = 0


sparking = 0
elec_alpha = 2
sparking_time = 0

inside_of_view = 0
draw_hp_bar = 0

warning_alpha = 0
t_warning_alpha = 0

//해당 오브젝트에서 사용되지만 직접 선언되지 않는 변수
//locked = 0
inv_changed = false


randomize()
target_x = x+irandom_range(-96,96)

randomize()
target_y = y+irandom_range(-96,96)

rod_near_num = 0

randomize()
target_x2 = x+irandom_range(-96,96)

randomize()
target_y2 = y+irandom_range(-96,96)
alarm[2] = 140






if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}


floor_y = y


////////////////////////////////////////////////////////////////////////////////////
image_xscale = 0.5
image_yscale = 0.5
xscale = 0.5
yscale = 0.5
txscale = 0.5
tyscale = 0.5


auto_target = 0
auto_picking = 0
already_targeted = 0
picking_effect_alpha = 0
cannot_picking_effect_alpha = 0

noclip_block = instance_create(x,y,block_noclip)



//드랍된 아이템 총 갯수 확인
check_total_item_num = 0

//드랍된 아이템 종류 확인
check_item_kinds = 0


chat_buffer = buffer_create(2, buffer_grow, 1);
alarm[11] = 1

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
