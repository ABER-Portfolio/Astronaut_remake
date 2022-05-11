/// @description Insert description here
// You can write your code in this editor
move_snap(32, 32);
image_speed = 0
image_index = 0
floor_y = y
vspeed = -3
angle = choose(-1,1)
double = -1
alarm[1] = 2

xscale = 1
yscale = 1
txscale = 1
tyscale = 1
inside_of_view  = 0

draw_hp_bar = 0


auto_target = 0
auto_picking = 0
already_targeted = 0
picking_effect_alpha = 0
cannot_picking_effect_alpha = 0
shake_block_time = 0

if place_meeting(x,floor_y,block_parents) || place_meeting(x,floor_y,block_ore) || place_meeting(x,floor_y,block_cemetery)
{
hspeed = irandom_range(-200,200)*0.01
}


chat_buffer = buffer_create(2, buffer_grow, 1);


if instance_number(creating_maps) > 0
{
received = 1
}


alarm[0] = 1
