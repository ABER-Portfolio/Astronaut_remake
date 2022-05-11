/// @description Insert description here
// You can write your code in this editor
image_xscale = choose(0.75,-0.75)
image_yscale = 0.75
image_speed = 0
move_snap(32,32)
depth = -(y + 64)

noclip_block = instance_create(x,y,block_noclip)
noclip_block.image_xscale = 0.85
noclip_block.image_yscale = 1.94
noclip_block.x = x
noclip_block.y = y+4