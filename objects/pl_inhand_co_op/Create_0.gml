/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

if instance_number(pl_inhand_co_op) > 1
{
instance_destroy()
}
else
{

instance_activate_all()




cool_time = 0
t_angle = 0

image_speed = 0

//포탈건
portal_create = 0


//던지기 준비
ready_to_throw = 0


scale = 0
p_x = 0

//아이템 이미지 및 이전 이미지 체크
b_image_index = global.inhand_item
alarm[0] = 5

gun_kind = 0


//무기 꺼냄
ready_to_attack = 1

light = instance_create(x,y,objLight_for_obj)
light_p = instance_create(x,y,objLight_for_obj)
}