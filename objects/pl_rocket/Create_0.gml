/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_alpha = 0
x = global.room_size*0.5
y = global.room_size*0.5
image_xscale = -0.5
image_yscale = 0.5
image_speed = 0
image_index = 0
image_angle = 0
hspeed = 0

t_y = -400
t_t_y = 0
vspeed_ = 0

d_c_inj_ef = 0
audi_op = noone
w_alpha = 0
setting_blind = 0

player_drop_anime = 0
blind_ = 0
obj_camera.b_blind = 1.5
global.black_blind = 1
created = 0

p_ins = instance_create(room_width*0.5,room_width*0.5,player)
p_ins.image_alpha = -1
if global.co_op_mode = 1
{
p_c_ins = instance_create(room_width*0.5,room_width*0.5,player_co_op)
p_c_ins.image_alpha = -1
}



origin_readied = 0
if global.co_op_mode = 0
{
co_op_readied = 1
}
else
{
co_op_readied = 0
}


floor_y = y
t_vsp = 4
alarm0 = 0
text_cre = 0

global.respawn_x = (global.room_size/2)
global.respawn_y = (global.room_size/2)
b_rexpon_x = (global.room_size/2)



