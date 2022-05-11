/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


var text_scale = 25
var shape_scale = 38
var text_space = 60
var first_text_space = 170


if global.b_window != global.window_
{
	if global.language = 1
	{
	draw_text_kl_scale(xxx,yyy-camera_ysize*32,"설정 창을 닫으면, 창 크기가 변경됩니다.",(text_scale/shape_scale)*camera_ysize*80,-1,text_alpha,$FF0F33FF,0,1,ko_80,(text_scale/shape_scale)*camera_xsize/90*30,(text_scale/shape_scale)*camera_ysize/90*30,0)
	}
	
	if global.language = 0
	{
	draw_text_kl_scale(xxx,yyy-camera_ysize*32,"When you close the setting window, the window size is changed.",(text_scale/shape_scale)*camera_ysize*80,-1,text_alpha,$FF0F33FF,0,1,ko_80,(text_scale/shape_scale)*camera_xsize/90*30,(text_scale/shape_scale)*camera_ysize/90*30,0)
	}
}


	if pressed = 1
	{
	global.window_ = 1280
	draw_sprite_ext(sprite_index,1,xx+(camera_xsize)*400,yy+((camera_ysize)*1.02)*first_text_space+(setting_num*text_space),image_xscale,image_yscale,0,c_white,1)
		if global.language = 0
		{
		draw_text_kl_scale(xx+(camera_xsize)*450,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Resolution\n1280 x 720 ( Windowed mode )",(text_scale/shape_scale)*camera_ysize*230,-1,text_alpha,c_white,0,-1,ko_80,(text_scale/shape_scale)*camera_xsize/90*30,(text_scale/shape_scale)*camera_ysize/90*30,0)
		}
		if global.language = 1
		{
		draw_text_kl_scale(xx+(camera_xsize)*450,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"해상도\n1280 x 720 ( 창모드 )",(text_scale/shape_scale)*camera_ysize*230,-1,text_alpha,c_white,0,-1,ko_80,(text_scale/shape_scale)*camera_xsize/90*30,(text_scale/shape_scale)*camera_ysize/90*30,0)
		}
	}
	else
	{
	global.window_ = 1920
	draw_sprite_ext(sprite_index,0,xx+(camera_xsize)*400,yy+((camera_ysize)*1.02)*first_text_space+(setting_num*text_space),image_xscale,image_yscale,0,c_white,1)
		if global.language = 0
		{
		draw_text_kl_scale(xx+(camera_xsize)*450,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Resolution\n1920 x 1080 ( Full screen )",(text_scale/shape_scale)*camera_ysize*230,-1,text_alpha,c_white,0,-1,ko_80,(text_scale/shape_scale)*camera_xsize/90*30,(text_scale/shape_scale)*camera_ysize/90*30,0)
		}
		if global.language = 1
		{
		draw_text_kl_scale(xx+(camera_xsize)*450,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"해상도\n1920 x 1080 ( 전체화면 )",(text_scale/shape_scale)*camera_ysize*230,-1,text_alpha,c_white,0,-1,ko_80,(text_scale/shape_scale)*camera_xsize/90*30,(text_scale/shape_scale)*camera_ysize/90*30,0)
		}
	}

