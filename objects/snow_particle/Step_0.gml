/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


if global.rainy = 1
{
	if in_biome < 1
	{
	in_biome += 0.02
	}
}
else
{
	if in_biome > 0
	{
	in_biome -= 0.02
	}
}


if global.n_room > 1
{
in_biome = 0
}


depth = -(room_width*3)


if in_biome > 0 && global.biome_real != "ice" && global.biome_real != "bloody_ice" && global.biome_real != "polluted_ice" && global.biome_real != "desert" && global.biome_real != "polluted_desert" && global.biome_real != "bloody_desert"
{
var snow = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성


part_type_sprite(particle1,spr_rain,0,0,true)


part_type_life(particle1,500,900);//파티클의 수명(랜덤)
part_type_size(particle1,0.2,0.8,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,in_biome,0);//파티클의 투명도(변화)

part_type_speed(particle1,6.7,13,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270+global.wind_dir,270+global.wind_dir,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,90,90,0,0,1);//파티클 이미지 방향
//part_type_shape(particle1,shape);//파티클의 종류

var emitter1 = part_emitter_create(snow);//파티클 이미터 생성

var xx = global._came_vx;

var camera_yscale = obj_camera.v_y
var yy = global._came_vy
var xxx = global._came_vx_p_w

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서


var random_var = percentage_k(65+((global.snowflake_amount)*100)*0.2)
if random_var = 1
{
	for(var i = 0; i < (global.snow_effect_distance)*0.1+1; i++)
	{
	part_particles_create(emitter1,irandom_range(xx-global.snow_effect_distance*100,xxx+global.snow_effect_distance*100),(yy-camera_yscale/18)-global.snow_effect_distance*50,particle1,1)
	}
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

}




if in_biome > 0 && (global.biome_real = "ice" || global.biome_real = "bloody_ice" || global.biome_real = "polluted_ice")
{
var snow = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성

if global.biome_real = "ice"
{
part_type_sprite(particle1,spr_snow_flake,0,0,true)
}
if global.biome_real = "bloody_ice"
{
part_type_sprite(particle1,spr_bloody_snow_flake,0,0,true)
}
if global.biome_real = "polluted_ice"
{
part_type_sprite(particle1,spr_polluted_snow_flake,0,0,true)
}

part_type_life(particle1,500,900);//파티클의 수명(랜덤)
part_type_size(particle1,0.1,0.8,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,in_biome,0);//파티클의 투명도(변화)

part_type_speed(particle1,1,2,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270+global.wind_dir,270+global.wind_dir,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,0,360,0,0,1);//파티클 이미지 방향
//part_type_shape(particle1,shape);//파티클의 종류

var emitter1 = part_emitter_create(snow);//파티클 이미터 생성

var xx = global._came_vx;

var camera_yscale = obj_camera.v_y
var yy = global._came_vy
var xxx = global._came_vx_p_w

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서


var random_var = percentage_k(50+((global.snowflake_amount)*100)*0.2)
if random_var = 1
{
	for(var i = 0; i < (global.snow_effect_distance)*0.1+1; i++)
	{
	part_particles_create(emitter1,irandom_range(xx-global.snow_effect_distance*100,xxx+global.snow_effect_distance*100),(yy-camera_yscale/18)-global.snow_effect_distance*50,particle1,1)
	}
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

}

