/// @description Insert description here
// You can write your code in this editor
pressed ++
randomize()
global.img_bl_col = irandom_range(100000,999999)
if pressed > 1
{
pressed = 0
}


image_xscale = 0
image_yscale = 0
step_for_scale_shake = 0

if pressed = 1
{
global.img_bl_col = c_white
}
