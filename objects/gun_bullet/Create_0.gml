/// @description Insert description here
// You can write your code in this editor
image_speed = 0
light = instance_create(x,y,objLight_for_obj)
light.x = x
light.y = y
light.lightxs = 128
light.lightys = 128
light.lightcol = $FF99EFFF
light.alpha = 0.7

t_x = x
t_y = y

can_des = 0
des = 0

saved_speed = noone
image_alpha = 0

chat_buffer = buffer_create(2, buffer_grow, 1);
_alpha = 1.5


if global.inhand_item = 69
{
image_index = 1
}
else if (global.inhand_item = 70 || global.inhand_item = 72 || global.inhand_item = 73)
{
image_index = 2
}
else
{
image_index = 0
}


alarm[1] = 1
alarm[2] = 4