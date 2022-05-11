/// @description Insert description here
// You can write your code in this editor
if image_index != 2
{
var _setting_b_ = instance_create(-999,-999,option_set_nickname)
_setting_b_.setting_num = 0

var _setting_b_ = instance_create(-999,-999,option_charater_s)
_setting_b_.setting_num = 2


var _setting_b_ = instance_create(-999,-999,option_goggles_R)
_setting_b_.setting_num = 2

var _setting_b_ = instance_create(-999,-999,option_goggles_G)
_setting_b_.setting_num = 2.5

var _setting_b_ = instance_create(-999,-999,option_goggles_B)
_setting_b_.setting_num = 3

var _setting_b_ = instance_create(-999,-999,option_suit_R)
_setting_b_.setting_num = 2

var _setting_b_ = instance_create(-999,-999,option_suit_G)
_setting_b_.setting_num = 2.5

var _setting_b_ = instance_create(-999,-999,option_suit_B)
_setting_b_.setting_num = 3


var _setting_b_ = instance_create(-999,-999,option_o2_tank_R)
_setting_b_.setting_num = 4

var _setting_b_ = instance_create(-999,-999,option_o2_tank_G)
_setting_b_.setting_num = 4.5

var _setting_b_ = instance_create(-999,-999,option_o2_tank_B)
_setting_b_.setting_num = 5
}
else
{
instance_create(640,180,enter_map_name)

var _setting_b_ = instance_create(-999,-999,option_map_size)
_setting_b_.setting_num = 2

var _setting_b_ = instance_create(-999,-999,option_island_size)
_setting_b_.setting_num = 4
}


can_do_step_event = 1