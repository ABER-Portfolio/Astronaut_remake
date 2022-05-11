/// @description 그래픽 퀄리티

if global.mobile = 0
{
var a = instance_create(-999,-999,option_resolution)
a.setting_num = 0
}

var a = instance_create(-999,-999,option_shadow_setting)
a.setting_num = 1

var a = instance_create(-999,-999,option_obj_effect_setting)
a.setting_num = 2

var a = instance_create(-999,-999,option_obj_activation_distance)
a.setting_num = 3

var a = instance_create(-999,-999,option_snow_effect)
a.setting_num = 4

var a = instance_create(-999,-999,option_snow_amount)
a.setting_num = 5

var a = instance_create(-999,-999,option_anti_aliasing)
a.setting_num = 6