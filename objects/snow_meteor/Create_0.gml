/// @description Insert description here
// You can write your code in this editor
image_speed = 0
light = instance_create(x,y,objLight_for_obj)
light.x = x
light.y = y
light.lightxs = 48
light.lightys = 48
light.lightcol = $FFFFEAB2 & $ffffff
light.alpha = 0.7
can_des = 0
des = 0

_alpha = 1.2
t_x = x
t_y = y


chat_buffer = buffer_create(2, buffer_grow, 1);

floor_y = room_height+100

randomize()
hspeed = 5

image_xscale = 0.5
image_yscale = 0.5

alarm[1] = 1