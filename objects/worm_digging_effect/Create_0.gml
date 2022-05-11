/// @description Insert description here
// You can write your code in this editor
image_blend = $FF809799 & $ffffff
floor_y = y
cool_time = 0
alarm[1] = 2
randomize()
vspeed = irandom_range(-10,0)/5
hspeed = irandom_range(-10,10)/15
gravity = 0.14
t_image_angle = irandom_range(-20,20)/10

var random_scale = irandom_range(100,200)/500
image_xscale = random_scale
image_yscale = random_scale