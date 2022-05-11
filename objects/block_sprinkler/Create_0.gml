/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.5
image_yscale = 0.5
image_speed = 0

move_snap(32,32)


check_item_kinds = 0
check_total_item_num = 0
noclip_block = instance_create(x,y,block_noclip)

txscale = 0.5
tyscale = 0.5
xscale = 0.5
yscale = 0.5
auto_picking = 1
inside_of_view = 0
draw_hp_bar = 0
auto_target = 0
time = 0
length = 16


chat_buffer = buffer_create(2, buffer_grow, 1);

if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}
water_area = noone


alarm[0] = 1