/// @description Insert description here
// You can write your code in this editor
if a = 0 && instance_number(mid_massage_log) > 0 && (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(ord("D")))
{
mid_massage_log.alarm[1] = 60
alarm[1] = 120
a += 0.5
}

if a = 1 && instance_number(mid_massage_log) > 0 && global.inv_open = 1
{
mid_massage_log.alarm[1] = 60
alarm[2] = 120
a += 0.5
}

if a = 2 && instance_number(mid_massage_log) > 0 && global.inhand_item_type = spr_pickaxe && global.inhand_item = 0
{
mid_massage_log.alarm[1] = 60
alarm[3] = 120
a += 0.5
}

if a = 3 && instance_number(mid_massage_log) > 0 && global.inv_open = 0
{
mid_massage_log.alarm[1] = 60
alarm[4] = 120
a += 0.5
}

if a = 4 && instance_number(mid_massage_log) > 0 && mouse_check_button_pressed(mb_left)
{
mid_massage_log.alarm[1] = 60
alarm[5] = 120
a += 0.5
}

//블럭 오브젝트 참고
//if a = 5 && instance_number(mid_massage_log) > 0
//{
//mid_massage_log.alarm[1] = 60
//alarm[6] = 120
//a += 0.5
//}

//if a = 6 && instance_number(mid_massage_log) > 0 && instance_number(block_ore) > 0
//{
//	if block_ore.already_targeted > 0
//	{
//	mid_massage_log.alarm[1] = 60
//	alarm[7] = 120
//	a += 0.5
//	}
//}

//if a = 7 && instance_number(mid_massage_log) > 0 && mouse_check_button_pressed(mb_left)
//{
//mid_massage_log.alarm[1] = 60
//alarm[8] = 120
//a += 0.5
//}

if a <= 11
{
global.o2 = global.max_o2
global.hp = global.max_hp
}

if a = 9 && instance_number(mid_massage_log) > 0 && global.inv_open = 2
{
mid_massage_log.alarm[1] = 60
alarm[0] = 120
a += 0.5
}

if a = 10 && instance_number(mid_massage_log) > 0 && global.inhand_item_type = spr_placeable && global.inhand_item = 0
{
mid_massage_log.alarm[1] = 60
alarm[9] = 120
a += 0.5
}

if a = 11 && instance_number(block_workbench) > 0
{
mid_massage_log.alarm[1] = 60
alarm[11] = 120
a += 0.5
}
