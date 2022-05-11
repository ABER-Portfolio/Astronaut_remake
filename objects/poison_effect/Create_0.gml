/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = irandom_range(0,image_number-1)
hspeed = irandom_range(-100,100)*0.02
vspeed = irandom_range(-100,100)*0.02

image_xscale = irandom_range(50,100)*0.01
image_yscale = irandom_range(50,100)*0.01

var angle = irandom_range(0,359)
image_angle = angle
des = 0

alarm[1] = 300