/// @description Insert description here
// You can write your code in this editor
depth = -(room_width*6.1)

if instance_number(obj_camera) > 0
{
var camera_xsize = obj_camera.v_x/1280
}
else
{
var camera_xsize = 1
}


global.hp = 2
if global.o2 <= 2
{
global.o2 = 2
}


if depth_target != noone && instance_number(depth_target) > 0
{
x = depth_target.x
y = depth_target.y-16
depth = depth_target.depth - 1
}

if des > 0
{
	if original_scale != 0
	{
	original_scale = 0
	step_for_scale_shake = 0
	}
	
	if image_xscale <= 0 || image_yscale <= 0
	{
	instance_destroy()
	}
}
else
{
original_scale = camera_xsize*0.75
}



image_alpha += (1 - image_alpha)*0.1

/////////////////////////////////////////////////////////////////////////////////////////////////////
if end_page = 1
{
	if global.scene_sync_co_op = 1
	{
	end_page = 1.1
	}
}

if end_page = 1.1
{
alarm[3] = 200
astronaut_npc_taker.des = 1
end_page = 1.2
}
/////////////////////////////////////////////////////////////////////////////////////////////////////

y_plus_time++

if y_plus_time > 80
{
y_plus ++
y_plus_time = 0
}

if y_plus > 1
{
y_plus = 0
}

if y_plus = 0
{
ty += 0.01
}
else
{
ty -= 0.01
}



if des > 0
{
	if original_scale != 0
	{
	original_scale = 0
	step_for_scale_shake = 0
	}
	
	if image_xscale <= 0 || image_yscale <= 0
	{
	instance_destroy()
	}
}
else
{
original_scale = camera_xsize*0.75
}

scale_shake()