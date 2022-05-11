/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

move_snap(32,32);
depth = -(y+11)

image_speed = 0
//image_index = 0

image_xscale = 0.5
image_yscale = 0.5

//이팩트
alpha = 1;
alpha_return = 0;
draw_hp_bar = 0
inside_of_view = 0


//이미지 앵글 돌아가는 이팩트
angle = choose(-1,1);

met_mob = -1;
swing_dilay_time = 0




block_num = -1
stone_color = -1
item_num = -1


//양옆으로 흔들거림 이팩트
x_shake_time = 0
x_shake = -1
t_x_shake = 0
t_x_scale_plus = 0

wind_shake = 0

//그림자 위치 설정
ty = y;


//먼지 이팩트
alarm[11] = 60;
image_index = choose(0,1)


xscale = 0.5
txscale = 0.5
yscale = 0.5
tyscale = 0.5

auto_target = 0
auto_picking = 0
already_targeted = 0
picking_effect_alpha = 0
cannot_picking_effect_alpha = 0



noclip_block = instance_create(x,y,block_noclip)

if instance_number(creating_maps) > 0
{
received = 1
}


depth = -(y+24);

alarm[9] = 1
alarm[8] = 20