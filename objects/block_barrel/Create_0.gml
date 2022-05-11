/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.5
image_yscale = 0.5
image_speed = 0
image_index = 4

move_snap(32,32)
depth = -(y+8)


check_item_kinds = 0
check_total_item_num = 0
noclip_block = instance_create(x,y,block_noclip)
noclip_block.image_xscale = 0.5/1.9
noclip_block.image_yscale = 0.5*0.125
noclip_block.x = x
noclip_block.y = y+4

txscale = 0.5
tyscale = 0.5
xscale = 0.5
yscale = 0.5
auto_picking = 1
inside_of_view = 0
draw_hp_bar = 0
auto_target = 0


block_num = -1
stone_color = -1
item_num = -1


chat_buffer = buffer_create(2, buffer_grow, 1);

if instance_number(creating_maps) > 0
{
received = 1
}

alarm[0] = 1
alarm[8] = 20