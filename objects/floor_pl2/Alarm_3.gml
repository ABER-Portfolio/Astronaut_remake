/// @description Insert description here
// You can write your code in this editor
if global.biome = 2
{
//파티클
var star = part_system_create();
var particle1 = part_type_create();//파티클 타입 생성
part_type_sprite(particle1,sp_ef_shapes,0,0,0)
part_type_life(particle1,100,100);//파티클의 수명(랜덤)
part_type_size(particle1,0.156*0.125,0.156*0.125,-0.001,0);//파티클의 크기(랜덤)
part_type_color3(particle1,c_white,$FF483A6E,$FF483A6E);//파티클의 색(1가지색)
part_type_alpha2(particle1,1,0);//파티클의 투명도(변화)
var angle = 90
part_type_speed(particle1,2,2,-0.07,0);//파티클의 속도(랜덤)
part_type_direction(particle1,angle,angle,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,angle,angle,0,0,1);//파티클 이미지 방향
var emitter1 = part_emitter_create(star);//파티클 이미터 생성
part_system_draw_order(star,1);//파티클 생성시 표시 순서
part_particles_create(emitter1,x,y,particle1,1)
}
	
var random_var2 = irandom_range(200,600)
alarm[3] = random_var2