/// @description Insert description here
// You can write your code in this editor



image_xscale = 999
image_yscale = 999
image_speed = 0
image_index = 0
a = 0
alpha = 1.5
//created_time = instance_number(BG_blind)+1

//생성되고 없어지기까지 시간
//created_time = 0
depth = -(room_width*5)

//alarm[1] = 340


depth = -99

//창 열려있음
global.opening_menu = 1

if co_op_code.is_server = true
{
	instance_activate_object(player)
	if instance_number(player) > 0
	{
	obj_camera.x = player.x
	obj_camera.y = player.y
	}
}
else
{
	instance_activate_object(player_co_op)
	if instance_number(player_co_op) > 0
	{
	obj_camera.x = player_co_op.x
	obj_camera.y = player_co_op.y
	}
}