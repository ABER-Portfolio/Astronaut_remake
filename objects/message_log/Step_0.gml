/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx
var yy = global._came_vy_p_h

var camera_yscale = obj_camera.v_y/720


x = xx
y = yy-(camera_yscale*30)

if des = 1
{
alpha -= 0.06
	if alpha <= 0
	{
	instance_destroy()
	}
}

if instance_number(BG_blind) = 0
{
depth = -(room_width*2.1)
}
else
{
depth = -(room_width*6.1)
}

if instance_number(message_log) > 10
{
des = 1
}