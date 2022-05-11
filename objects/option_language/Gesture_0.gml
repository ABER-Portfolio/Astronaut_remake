/// @description Insert description here
// You can write your code in this editor
pressed ++
if pressed > 1
{
pressed = 0
}


image_xscale = 0
image_yscale = 0
step_for_scale_shake = 0



if instance_number(BG_title) > 0
{
instance_activate_object(BT_title)
instance_destroy(BT_title)

var select = 3
global.select = select
BG_title.can_press = select
BG_title.max_can_press = 0
BG_title.alarm[2] = 1
}
