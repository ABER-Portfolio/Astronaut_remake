/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_index = 0
image_speed = 0

image_xscale = 0.5
image_yscale = 0.5

move_snap(32,32);

if co_op_code.is_server = false && instance_number(creating_maps) > 0
{
received = 1
}



watered_alpha = 0
watered_alpha_crimson = 0
watered_alpha_polluted = 0

cre_cooltime = 0

alarm[1] = 1
