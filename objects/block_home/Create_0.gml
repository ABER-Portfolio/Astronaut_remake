/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = 0
image_xscale = 0.75
image_yscale = 0.75

move_snap(32,32)
noclip_block = instance_create(x,y,block_noclip)
chat_buffer = buffer_create(2, buffer_grow, 1);

choice = 0