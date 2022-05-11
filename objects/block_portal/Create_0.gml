/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

move_snap(32,32);

image_speed = 0
image_index = 0

image_xscale = 0.5
image_yscale = 0.5

//이팩트
alpha = 1;
alpha_return = 0;
draw_hp_bar = 0
inside_of_view = 0
alarm[1] = 300;


//이미지 앵글 돌아가는 이팩트
angle = choose(-1,1);


//위아래로 흔들거림 이팩트
t_plus_y = 0;
t_t_plus_y = -0.1;
plus_y = -5;
alarm[2] = 200;

//그림자 위치 설정
ty = y;


//먼지 이팩트
alarm[11] = 60;



xscale = 0.5
txscale = 0.5
yscale = 0.5
tyscale = 0.5

auto_target = 0
auto_picking = 0
already_targeted = 0
picking_effect_alpha = 0
cannot_picking_effect_alpha = 0




depth = -(y+24);

