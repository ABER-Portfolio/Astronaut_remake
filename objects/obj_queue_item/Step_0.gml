
//뎁스 설정


image_alpha += (1 - image_alpha)/9

if global.inv_open = 2
{
depth = -room_width*3
var xx_scale = (obj_camera.v_x/1280)/1.8
var box_size = 150

p_x += ((t_p_x*box_size*xx_scale) - p_x)*0.2
}

if t_p_x < 1
{
t_p_x = 1
}


if instance_number(tuto_log) > 0
{
	if tuto_log.a = 10 && instance_number(mid_massage_log) > 0 && global.inv_open = 2 && item_name = item40006
	{
	mid_massage_log.alarm[1] = 60
	tuto_log.alarm[10] = 120
	tuto_log.a += 0.5
	
	crafting_time = 1
	}
}