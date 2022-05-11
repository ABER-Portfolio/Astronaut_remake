/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_speed = 0
sprite_index = spr_pickaxe_center_origin
got_item = 0
got_item_c = 0
create_cool_time = 1
alarm[1] = 90
crashed = 0


image_speed = 0


alarm[11] = 1 
alarm[2] = 3600

if instance_number(creating_maps) > 0
{
instance_destroy()
}