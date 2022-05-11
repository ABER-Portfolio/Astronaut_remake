/// @description 맵생성시 바이옴 세팅
if !place_meeting(x,y,do_not_change_biome_here)
{


if instance_number(floor_pl1) > 0
{
	if place_meeting(x+32,y,floor_pl1) || place_meeting(x-32,y,floor_pl1) || place_meeting(x,y+32,floor_pl1) || place_meeting(x,y-32,floor_pl1)
	{
	instance_destroy()
	instance_create(x,y,floor_pl6)
	//일반지형 변경
	//floor_pl0.alarm[11] = 1
	//얼음지형 변경
	//floor_pl1.alarm[11] = 1
	//사막지형 변경
	//floor_pl1.alarm[11] = 1
	}
}

if instance_number(floor_pl2) > 0
{
	if place_meeting(x+32,y,floor_pl2) || place_meeting(x-32,y,floor_pl2) || place_meeting(x,y+32,floor_pl2) || place_meeting(x,y-32,floor_pl2)
	{
	instance_destroy()
	instance_create(x,y,floor_pl8)
	//일반지형 변경
	//floor_pl0.alarm[11] = 1
	//얼음지형 변경
	//floor_pl1.alarm[11] = 1
	//사막지형 변경
	//floor_pl1.alarm[11] = 1
	}
}

if instance_number(floor_pl5) > 0
{
	if place_meeting(x+32,y,floor_pl5) || place_meeting(x-32,y,floor_pl5) || place_meeting(x,y+32,floor_pl5) || place_meeting(x,y-32,floor_pl5)
	{
	instance_destroy()
	instance_create(x,y,floor_pl6)
	//일반지형 변경
	//floor_pl0.alarm[11] = 1
	//얼음지형 변경
	//floor_pl1.alarm[11] = 1
	//사막지형 변경
	//floor_pl1.alarm[11] = 1
	}
}

if instance_number(floor_pl6) > 0
{
	if place_meeting(x+32,y,floor_pl6) || place_meeting(x-32,y,floor_pl6) || place_meeting(x,y+32,floor_pl6) || place_meeting(x,y-32,floor_pl6)
	{
	instance_destroy()
	instance_create(x,y,floor_pl6)
	//일반지형 변경
	//floor_pl0.alarm[11] = 1
	//얼음지형 변경
	//floor_pl1.alarm[11] = 1
	//사막지형 변경
	//floor_pl1.alarm[11] = 1
	}
}

if instance_number(floor_pl7) > 0
{
	if place_meeting(x+32,y,floor_pl7) || place_meeting(x-32,y,floor_pl7) || place_meeting(x,y+32,floor_pl7) || place_meeting(x,y-32,floor_pl7)
	{
	instance_destroy()
	instance_create(x,y,floor_pl8)
	//일반지형 변경
	//floor_pl0.alarm[11] = 1
	//얼음지형 변경
	//floor_pl1.alarm[11] = 1
	//사막지형 변경
	//floor_pl1.alarm[11] = 1
	}
}

if instance_number(floor_pl8) > 0
{
	if place_meeting(x+32,y,floor_pl8) || place_meeting(x-32,y,floor_pl8) || place_meeting(x,y+32,floor_pl8) || place_meeting(x,y-32,floor_pl8)
	{
	instance_destroy()
	instance_create(x,y,floor_pl8)
	//일반지형 변경
	//floor_pl0.alarm[11] = 1
	//얼음지형 변경
	//floor_pl1.alarm[11] = 1
	//사막지형 변경
	//floor_pl1.alarm[11] = 1
	}
}



}


