/// @description Insert description here
// You can write your code in this editor
image_yscale = 0.5
image_speed = 0
image_index = 2
image_angle = -90

move_snap(32,32)

noclip_block = instance_create(x,y,block_noclip)

txscale = 0.5
tyscale = 0.5
xscale = 0.5
yscale = 0.5
auto_picking = 0
inside_of_view = 0
draw_hp_bar = 0
auto_target = 0

randomize()
var _random_alarm = irandom_range(30,70)
alarm[1] = _random_alarm

chat_buffer = buffer_create(2, buffer_grow, 1);

if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}


alarm[0] = 1

destroy_ = 0

w_alpha = 0