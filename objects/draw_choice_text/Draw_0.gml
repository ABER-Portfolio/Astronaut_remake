/// @description Insert description here
// You can write your code in this editor
var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38

var xx_wid = camera_get_view_width(view_camera[0])
var xx = camera_get_view_x(view_camera[0])+xx_wid*0.5
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-160*camera_ysize

depth = -9999999999

var _text_1_center_x = xx-200*camera_xsize
var _text_2_center_x = xx+200*camera_xsize





if time = 0
{
d_your_choose_x = _text_1_center_x
}

if your_choose = 0
{
d_your_choose_x += (_text_1_center_x - d_your_choose_x)*0.15
}
else
{
d_your_choose_x += (_text_2_center_x - d_your_choose_x)*0.15
}


if global.co_op_mode = 1 && can_skip_solo = 0
{
	if global.choice_choosed_co_op = 0
	{
	d_your_choose_x_cp += (_text_1_center_x - d_your_choose_x_cp)*0.15
	}
	else
	{
	d_your_choose_x_cp += (_text_2_center_x - d_your_choose_x_cp)*0.15
	}
}


draw_sprite_ext(sprite220,0,_text_1_center_x,yy-camera_xsize*60,camera_xsize,camera_ysize,0,c_black,1)
draw_text_kl_scale(_text_1_center_x,yy-70*camera_ysize,string(text_1),32*camera_xsize,99999,image_alpha,c_white,0,0,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)

draw_sprite_ext(sprite220,0,_text_2_center_x,yy-camera_xsize*60,camera_xsize,camera_ysize,0,c_black,1)
draw_text_kl_scale(_text_2_center_x,yy-70*camera_ysize,string(text_2),32*camera_xsize,99999,image_alpha,c_white,0,0,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)

if global.co_op_mode = 1
{
draw_sprite_ext(sprite220,1,d_your_choose_x_cp,yy-camera_xsize*60,camera_xsize,camera_ysize,0,c_red,image_alpha*0.8)
}

draw_sprite_ext(sprite220,1,d_your_choose_x,yy-camera_xsize*60,camera_xsize,camera_ysize,0,c_white,image_alpha)





time ++
if time < 240
{
	if image_alpha < 1
	{
	image_alpha += (1 - image_alpha)*0.1
	}
}

if time > 600 && can_skip_solo = 0
{
global.choice_choosed_already = 1
	if send_once = 0
	{
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.CHOICE_CHOOSED);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		send_all(chat_buffer);
		}
	send_once = 1
	}
}



if (time > 600 && global.choice_choosed_already_co_op = 1) || (time > 600 && can_skip_solo = 1)
{
	if forced_choose = 0 && can_skip_solo = 0 && global.co_op_mode = 1 && co_op_code.is_server = true && your_choose != global.choice_choosed_co_op
	{
	var random_choice = choose(your_choose,global.choice_choosed_co_op)
	your_choose = random_choice
	forced_choose = 1
	
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.FORCED_CHOOSED);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		buffer_write(chat_buffer, buffer_string, random_choice);
		send_all(chat_buffer);
		}
	}

	
image_alpha -= 0.05

if your_choose = 0
{
global.choice_choosed = 1
}

if your_choose = 1
{
global.choice_choosed = 0
}

	if image_alpha <= 0
	{
	instance_destroy()
	global.choice_choosed_already_co_op = 0
	}
}










var text_scale = 25
var shape_scale = 38

var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.95
var yy2 = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-30*camera_ysize

draw_set_alpha(0.45)
draw_set_color(c_black)
draw_rectangle(xx2,yy2,xx2-camera_xsize*100,yy2-15*camera_ysize,false)

draw_set_alpha(0.8)
draw_set_color(c_white)
if time <= 600
{
draw_rectangle(xx2-camera_xsize*60,yy2,xx2-camera_xsize*60+80*camera_xsize*(time/600),yy2-15*camera_ysize,false)
}
else
{
draw_rectangle(xx2-camera_xsize*60,yy2,xx2+camera_xsize*20,yy2-15*camera_ysize,false)
}

	