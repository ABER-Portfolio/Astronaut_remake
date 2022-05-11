/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy

var win_wid = 1
var win_hei = 1


if global.window_ = 1920
{
var win_wid = 1.5
var win_hei = 1.5
}

var camera_xscale = (obj_camera.v_x/1280)*win_wid
var camera_yscale = (obj_camera.v_y/720)*win_hei


depth = -(room_width*3)
var star = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성

part_type_sprite(particle1,sp_ef_shapes,0,0,0)

//part_type_shape(particle1,shape);//파티클의 종류
part_type_life(particle1,6000,6000);//파티클의 수명(랜덤)
part_type_size(particle1,0.001*camera_xscale,0.008*camera_xscale,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha3(particle1,0,1,0);//파티클의 투명도(변화)

var angle = irandom_range(-20,20)
part_type_speed(particle1,0.1,0.2,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,0+angle,0+angle,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,0,360,0,0,1);//파티클 이미지 방향

var emitter1 = part_emitter_create(star);//파티클 이미터 생성


//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(star,1);//파티클 생성시 표시 순서


var random_var = percentage_k(1)
if random_var = 1
{
part_particles_create(emitter1,xx,yy+irandom_range(0,720*camera_yscale),particle1,1)
}

if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	x = player_co_op.x
	y = player_co_op.y
	}
}