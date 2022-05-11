/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = 0
w_alpha = 10
gravity = 0

image_xscale = -10
image_yscale = -10
step_for_scale_shake = 0

y = -200
x = 640

alarm[0] = 70
alarm[1] = 1

aa = 6
t_x = 640
t_y = 280

opened_option = 0

randomize()
repeat(irandom_range(29,32))//irandom_range(11,16)
{
randomize()
var random_x = irandom_range(-60,3080)
var random_y = irandom_range(-100,820)
var _dust = instance_create(random_x,random_y,main_menu_dust)
_dust.t_x = random_x
_dust.t_y = random_y
var scale = irandom_range(100,200)/259*0.01
_dust.image_xscale = scale
_dust.image_yscale = scale
}


randomize()
repeat(irandom_range(22,27))//irandom_range(8,11)
{
randomize()
var random_x = irandom_range(-100,1080)
var random_y = irandom_range(0,720)
var _dust = instance_create(random_x,random_y,main_menu_dust)
_dust.t_x = random_x
_dust.t_y = random_y
var scale = irandom_range(100,200)/259*0.01
_dust.image_xscale = scale
_dust.image_yscale = scale
}

randomize()
repeat(irandom_range(13,17))//irandom_range(8,11)
{
randomize()
var random_x = irandom_range(-100,580)
var random_y = irandom_range(320,720)
var _dust = instance_create(random_x,random_y,main_menu_dust)
_dust.t_x = random_x
_dust.t_y = random_y
var scale = irandom_range(100,200)/259*0.01
_dust.image_xscale = scale
_dust.image_yscale = scale
}