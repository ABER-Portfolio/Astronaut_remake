/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = 0
image_alpha = 0.7
a = 0
yp = irandom_range(-4,7)
vspeed = irandom_range(-100,-10)*0.02;
hspeed = irandom_range(-100,100)*0.02
v_gravity = choose(0.1,0.13,0.16,0.19,0.2)
//해당오브젝트에서 사용되지만 직접적으로 선언되지 않는 변수
//scale = 0.5
alarm[1]= 30