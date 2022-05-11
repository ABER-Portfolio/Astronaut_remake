/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
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
_alpha = 1.5



chat_buffer = buffer_create(2, buffer_grow, 1);

saved_speed = noone

alarm[1] = 1
