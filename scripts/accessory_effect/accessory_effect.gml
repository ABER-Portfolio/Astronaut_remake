var _a_ = 3
var _b_ = 2
var _c_ = 1
var _d_ = 0
var _e_ = 1
var _f_ = 1
var _g_ = 0
var _h_ = 1
var _i_ = 0
var _j_ = 9
var _k_ = 1
var _l_ = 6
var _n_ = 1




if inventory_number_find_by_name(item60001,0) > 0
{
_a_ += (inventory_number_find_by_name(item60001,0))*4
_b_ += (inventory_number_find_by_name(item60001,0))*4
}


if inventory_number_find_by_name(item60002,0) > 0
{
_c_ += (inventory_number_find_by_name(item60002,0))*0.05
}


if inventory_number_find_by_name(item60003,0) > 0
{
_d_ += (inventory_number_find_by_name(item60003,0))
}



if inventory_number_find_by_name(item60004,0) > 0
{
_a_ += (inventory_number_find_by_name(item60004,0))
_l_ += (inventory_number_find_by_name(item60004,0))
}


if inventory_number_find_by_name(item60005,0) > 0
{
_a_ += (inventory_number_find_by_name(item60005,0))
}


if inventory_number_find_by_name(item60006,0) > 0
{
_e_ += (inventory_number_find_by_name(item60006,0))*0.1
}


if inventory_number_find_by_name(item60007,0) > 0
{
_f_ += (inventory_number_find_by_name(item60007,0))*0.1
}


if inventory_number_find_by_name(item60008,0) > 0
{
_n_ += (inventory_number_find_by_name(item60008,0))*0.1
}


if inventory_number_find_by_name(item60009,0) > 0
{
_c_ += (inventory_number_find_by_name(item60009,0))*0.05
}


if inventory_number_find_by_name(item600010,0) > 0
{
_l_ += (inventory_number_find_by_name(item600010,0))
}


if inventory_number_find_by_name(item600011,0) > 0
{
_g_ = (inventory_number_find_by_name(item600011,0))*2
}


if inventory_number_find_by_name(item600012,0) > 0
{
_l_ += (inventory_number_find_by_name(item600012,0))
}


if inventory_number_find_by_name(item600013,0) > 0
{
_l_ += (inventory_number_find_by_name(item600013,0))*3
_b_ += (inventory_number_find_by_name(item600013,0))*3
}


if inventory_number_find_by_name(item600014,0) > 0
{
_d_ += (inventory_number_find_by_name(item600014,0))
}


if inventory_number_find_by_name(item600015,0) > 0
{
_h_ += (inventory_number_find_by_name(item600015,0))*0.1
}


if inventory_number_find_by_name(item600016,0) > 0
{
_k_ += (inventory_number_find_by_name(item600016,0))*0.1
}


if inventory_number_find_by_name(item600017,0) > 0
{
_b_ += (inventory_number_find_by_name(item600017,0))
}


if inventory_number_find_by_name(item600018,0) > 0
{
_b_ += (inventory_number_find_by_name(item600018,0))*2
}

if inventory_number_find_by_name(item600019,0) > 0
{
_i_ = (inventory_number_find_by_name(item600019,0))
}


if inventory_number_find_by_name(item600020,0) > 0
{
_j_ += (inventory_number_find_by_name(item600020,0))*9
}


if inventory_number_find_by_name(item600021,0) > 0
{
_j_ += (inventory_number_find_by_name(item600021,0))*18
}




global.max_hp = _a_
global.max_stemina = _b_
global.accessory_damage_plus = _c_
global.accessory_defence = _d_
global.radiation_dec_sp = _e_
global.poisoning_dec_sp = _f_
if global.shining_self < 2
{
global.shining_self = _g_
}
else
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
	if instance_number(target_)
	{
	target_.alarm[0] = 60
	}
}
global.radiation_damege_dec = _h_
global.ignore_break_debuff = _i_
global.real_inventory_size = _j_
global.poisoning_damege_dec = _k_
global.max_o2 = _l_
global.temperature_rec_sp = _n_


if global.real_inventory_size <= 9 //&& _j_ <= 18
{
ui_inv.inventory_width = 9
ui_inv.inventory_height = 1
}

if global.real_inventory_size >= 10 && global.real_inventory_size <= 18
{
ui_inv.inventory_width = 9
ui_inv.inventory_height = 2
}

if global.real_inventory_size >= 19 && global.real_inventory_size <= 27
{
ui_inv.inventory_width = 9
ui_inv.inventory_height = 3
}

if global.real_inventory_size >= 28
{
ui_inv.inventory_width = 9
ui_inv.inventory_height = 4
}







//_a_ += saved_max_hp
//global.max_o2 += saved_max_o2
//_b_ += saved_max_stemina
//_c_ += saved_accessory_damage_plus
//_d_ += saved_accessory_defence
//_h_ += saved_radiation_damege_dec
//_k_ += saved_poisoning_damege_dec
//_i_ += saved_ignore_break_debuff
//_j_ += saved_real_inventory_size
