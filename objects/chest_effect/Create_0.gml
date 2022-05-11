/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
image_speed = 0

var a = (choose(-1,1))*0.25

image_xscale = a
image_yscale = a

floor_y = y+irandom_range(-7,12)
y = floor_y-3
vspeed = -(irandom_range(2,30)*0.1)

angle_speed = irandom_range(-10,10)

des = 0
do_not_move = 0
alarm[1] = 300
alarm[0] = 2