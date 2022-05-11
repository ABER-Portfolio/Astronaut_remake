/// @description Insert description here
// You can write your code in this editor
if(co_op_code.is_server == false) && global.inv_open = 0 && instance_number(option_line_bar) = 0 && instance_number(player_co_op) > 0 && global.stemina > 0 && global.do_not_move2 = 0
{
	if global.inhand_item_type = spr_potion_only
	{
		if global.potion_cool_time <= 0
		{
		gun_kind = 0
		alarm[3] = 1
		}
	}
	else
	{
		if global.weapon_kind = 5
		{
		alarm[3] = 1
		}
		else
		{
		gun_kind = 0
		alarm[3] = 1
		}
	}
}