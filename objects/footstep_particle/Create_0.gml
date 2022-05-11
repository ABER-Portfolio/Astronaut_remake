/// @description Insert description here
// You can write your code in this editor
depth = -(room_width*3)
var footstep = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성

part_type_sprite(particle1,spr_footstep,0,0,false)


//part_type_shape(particle1,shape);//파티클의 종류
part_type_life(particle1,500,900);//파티클의 수명(랜덤)

if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	part_type_size(particle1,player.image_xscale,player.image_xscale,0,0);//파티클의 크기(랜덤)
	}
	else
	{
	part_type_size(particle1,1,1,0,0);//파티클의 크기(랜덤)
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	part_type_size(particle1,player_co_op.image_xscale,player_co_op.image_xscale,0,0);//파티클의 크기(랜덤)
	}
	else
	{
	part_type_size(particle1,1,1,0,0);//파티클의 크기(랜덤)
	}
}

part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha3(particle1,0.8,1,0);//파티클의 투명도(변화)

part_type_orientation(particle1,0,0,0,0,1);//파티클 이미지 방향

var emitter1 = part_emitter_create(footstep);//파티클 이미터 생성


//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(footstep,1);//파티클 생성시 표시 순서
if instance_number(player) > 0
{
part_particles_create(emitter1,player.x,player.y,particle1,1)
}
else
{
part_particles_create(emitter1,-100,-100,particle1,1)
}

instance_destroy()