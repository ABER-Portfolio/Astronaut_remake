/// @description Insert description here
// You can write your code in this editor
if image_index >= 5 
{
	if instance_exists(light)
	{
	instance_destroy(light)
	}
}


if global.n_room > 1
{
	if !place_meeting(x,y,fl_parents)
	{
	instance_destroy()
	}
}

for(var ii = 0; ii < saved_speed; ii += 0.1) 
{
x += lengthdir_x(ii/25,direction)
y += lengthdir_y(ii/25,direction)
}

if instance_number(gun_bullet) < 42
{
	for(var i = 0; i < saved_speed; i += 1) 
	{

		if i%1 = 0.5
		{
		//파티클
		var star = part_system_create();
		var particle1 = part_type_create();//파티클 타입 생성
		part_type_sprite(particle1,bullet_effect,false,0,0)
		part_type_life(particle1,3,3);//파티클의 수명(랜덤)
		part_type_size(particle1,image_xscale,image_xscale,-0.001,0);//파티클의 크기(랜덤)
		if image_index = 0
		{
		part_type_color1(particle1,$FF9959FF);//파티클의 색(1가지색)
		}
		if image_index = 1
		{
		part_type_color1(particle1,$FFFF5299);//파티클의 색(1가지색)
		}
		if image_index = 2
		{
		part_type_color1(particle1,$FF3F00EE);//파티클의 색(1가지색)
		}
		if image_index = 3
		{
		part_type_color1(particle1,$FF2188D8);//파티클의 색(1가지색)
		}

		part_type_alpha2(particle1,1,0);//파티클의 투명도(변화)
		part_type_speed(particle1,0,0,0,0);//파티클의 속도(랜덤)
		part_type_direction(particle1,image_angle,image_angle,0,0);//파티클의 방향(중력 방향)
		part_type_orientation(particle1,image_angle,image_angle,0,0,1);//파티클 이미지 방향
		var emitter1 = part_emitter_create(star);//파티클 이미터 생성
		part_system_draw_order(star,1);//파티클 생성시 표시 순서
		part_particles_create(emitter1,x,y,particle1,1)
		}
	}
}





if _alpha > 0
{
_alpha -= 0.1
}
if _alpha <= 0.8
{
instance_destroy(light)
}

if instance_exists(light)
{
	if image_index = 0
	{
	light.lightcol = $FF99EFFF
	}
	
	if image_index = 1
	{
	light.lightcol = $FFFFD699
	}
	
	if image_index = 2
	{
	light.lightcol = $FF9D77EE
	}
	
	if image_index = 3
	{
	light.lightcol = $FF21FFD8
	}
}

if image_index = 10
{
des += 10
}
else
{
des ++
}

if des > 300
{
instance_destroy()
}











if instance_number(BG_blind) = 0
{
	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
	var _x = x - __view_get( e__VW.XView, 0 )
	var _y = y - __view_get( e__VW.YView, 0 )
	draw_sprite_ext(sprite_index,4,_x,_y,image_xscale,image_yscale,image_angle,c_white, 0.9);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
}

