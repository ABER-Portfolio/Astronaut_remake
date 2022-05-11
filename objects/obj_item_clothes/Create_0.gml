/// @description Insert description here
// You can write your code in this editor
image_speed = 0
sprite_index = spr_clothes_center_origin
got_item = 0
got_item_c = 0
create_cool_time = 1
alarm[1] = 90

//앵글쉐이크
a_shake_var_a = 0
shake_angle_power = 35


//해당 오브젝트에서 사용되지만, 직접적으로 선언되지 않는 변수
//floor_y = y

alarm[11] = 1 

chat_buffer = buffer_create(2, buffer_grow, 1);

alarm[2] = 3600

if instance_number(creating_maps) > 0
{
instance_destroy()
}