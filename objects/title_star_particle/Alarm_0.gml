/// @description Insert description here
// You can write your code in this editor
depth = -(room_width*3)
snow = part_system_create();

particle1 = part_type_create();//파티클 타입 생성

part_type_sprite(particle1,spr_snow_flake,0,0,true)


//part_type_shape(particle1,shape);//파티클의 종류
part_type_life(particle1,500,700);//파티클의 수명(랜덤)
part_type_size(particle1,0.1,0.8,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,1,0);//파티클의 투명도(변화)

part_type_speed(particle1,1,2,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270,270,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,0,360,0,0,1);//파티클 이미지 방향

emitter1 = part_emitter_create(snow);//파티클 이미터 생성

var xx = global._came_vx;

var camera_xscale = obj_camera.v_x
var yy = global._came_vy

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
part_emitter_stream(snow,emitter1,particle1,-2);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서

