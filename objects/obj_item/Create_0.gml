/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_speed = 0

got_item = 0
got_item_c = 0

create_cool_time = 1
alarm[1] = 90
//앵글쉐이크
a_shake_var_a = 0
shake_angle_power = 35

///////////////////////////////////////


image_xscale = 0.3
image_yscale = 0.3
alarm[11] = 1

alarm[2] = 3600

if instance_number(creating_maps) > 0
{
instance_destroy()
}