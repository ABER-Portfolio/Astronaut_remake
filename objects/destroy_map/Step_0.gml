/// @description Insert description here
// You can write your code in this editor

x += (mouse_x - x)*0.003
y += (mouse_y - y)*0.003

x += (1180 - x)*0.16
y += (640 - y)*0.16

scale_shake()
angle_shake()




image_alpha = 1
w_alpha += (t_w_alpha - w_alpha)*0.125


depth = -room_width*5.01


////////////////////////////////////////////////////////////////////////////////////////////////////////////

t_p_alpha = press

p_alpha += (t_p_alpha - p_alpha)*0.125

if press = 0 && place_meeting(x,y,obj_mouse)
{
	if t_w_alpha != 1
	{
	step_for_scale_shake = 0
	t_w_alpha = 1
	}
}
else
{
	if t_w_alpha != 0
	{
	step_for_scale_shake = 0
	t_w_alpha = 0
	}
}


if t_w_alpha = (1 - press)
{
/////////////////////////////////////////////////////////////////////////////////////////////////////

star = part_system_create();

particle1 = part_type_create();//파티클 타입 생성

part_type_sprite(particle1,sp_ef_shapes,0,0,0)


//part_type_shape(particle1,shape);//파티클의 종류
part_type_life(particle1,90,160);//파티클의 수명(랜덤)
part_type_size(particle1,0.007,0.02,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha3(particle1,0,1,0);//파티클의 투명도(변화)

var angle = irandom_range(-180,180)
part_type_speed(particle1,1,3,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,90+angle,90+angle,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,0,360,0,0,1);//파티클 이미지 방향

emitter1 = part_emitter_create(star);//파티클 이미터 생성


//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(star,1);//파티클 생성시 표시 순서


part_particles_create(emitter1,x,y,particle1,1)
/////////////////////////////////////////////////////////////////////////////////////////////////////
}
