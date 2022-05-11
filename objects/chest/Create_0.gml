/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 14; i++)
{
chest_item[i] = noone
chest_item_num[i] = -1
}

chat_buffer = buffer_create(2, buffer_grow, 1);

image_speed = 0


a = 0
open_chest = 0
draw_hp_bar = 0
inside_of_view = 0

//해당 오브젝트에서 사용되지만 직접 선언되지 않는 변수
//locked = 0
inv_changed = false

//상자 아이템
//for(var i = 0; i < 14; i++)
//{
//chest_item[i] = noone
//chest_item_num[i] = -1
//}


open_chest = 0




if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}


floor_y = y

//앵글쉐이크
a_shake_var_a = 0
shake_angle_power = 0

////////////////////////////////////////////////////////////////////////////////////
image_xscale = 0.4
image_yscale = 0.4
xscale = 0.5
yscale = 0.5
txscale = 0.5
tyscale = 0.5


auto_target = 0
auto_picking = 1
already_targeted = 0
picking_effect_alpha = 0
cannot_picking_effect_alpha = 0
locked = 0

noclip_block = instance_create(x,y,block_noclip)

alarm[2] = 1


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
