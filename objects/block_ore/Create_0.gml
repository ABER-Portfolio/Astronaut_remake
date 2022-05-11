/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);
image_xscale = choose(-0.5,0.5)
image_yscale = 0.5
image_speed = 0
auto_target = 0
auto_picking = 1
already_targeted = 0
//received = 0

shake_block_time = 0

//구조물 넘버 (해당변수는 직접적으로 실행되지않음)
//block_num = 0


xscale = 0.5
yscale = 0.5


txscale = xscale
tyscale = yscale

draw_hp_bar = 0
picking_effect_alpha = 0
cannot_picking_effect_alpha = 0

noclip_block = instance_create(x,y,block_noclip)
noclip_block.image_xscale = 0.5/1.9
noclip_block.image_yscale = 0.5*0.125
noclip_block.x = x
noclip_block.y = y+4


draw_true = 0
random_falldown_angle = 0
random_falldown_angle_p = 0
alarm[0] = 10

alarm[3] = 5
alarm[8] = 20


light = noone


inside_of_view = 0
block_num = -1


chat_buffer = buffer_create(2, buffer_grow, 1);