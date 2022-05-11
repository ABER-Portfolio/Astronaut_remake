/// @description Insert description here
// You can write your code in this editor

if co_op_code.is_server = false && instance_number(pl_rocket) > 0
{
received = 1
}

next_page = 0
move_snap(32,32);
image_xscale = 0.5
image_yscale = 0.5

_s_xscale_ = 0
_s_xscale_2 = 0

p_1_place_met = 0
p_2_place_met = 0
noclip_block = instance_create(x,y,block_noclip)
noclip_block.image_xscale = 0.3
noclip_block.image_yscale = 0.15
noclip_block.x = x
noclip_block.y = y-1

chat_buffer = buffer_create(2, buffer_grow, 1);
someone_went_cave = 0
noclip_block = -5
clicked = 0
alarm[1] = 2

can_enter = 1
alarm[2] = 120