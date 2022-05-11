/// @description Insert description here
// You can write your code in this editor
var target_ = player

if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op;
};

if place_meeting(target_.x,target_.y+2,floor_pl16)
{
//파티클
var star = part_system_create();
var particle1 = part_type_create();//파티클 타입 생성
part_type_sprite(particle1,sp_ef_shapes,0,0,0)
part_type_life(particle1,100,100);//파티클의 수명(랜덤)
part_type_size(particle1,0.156*0.125,0.156*0.125,-0.001,0);//파티클의 크기(랜덤)
part_type_color3(particle1,c_white,$FFCD4C67,$FFCD4C67);//파티클의 색(1가지색)
part_type_alpha2(particle1,1,0);//파티클의 투명도(변화)
var angle = 90
part_type_speed(particle1,2,2,-0.07,0);//파티클의 속도(랜덤)
part_type_direction(particle1,angle,angle,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,angle,angle,0,0,1);//파티클 이미지 방향
var emitter1 = part_emitter_create(star);//파티클 이미터 생성
part_system_draw_order(star,1);//파티클 생성시 표시 순서
part_particles_create(emitter1,x,y,particle1,1)
}
	
var random_var2 = irandom_range(200,400)
alarm[3] = random_var2