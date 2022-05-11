/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;



var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


var text_scale = 25
var shape_scale = 33
var text_space = 60
var first_text_space = 170


var gl_pressed = global.pressed

//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
//그래픽 세팅
if setting_num = 0
{
	if global.language = 0
	{
	text = "Graphics quality"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space,"Graphics quality",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space,"Graphics quality",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space,"Graphics quality",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "그래픽 퀄리티"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space,"그래픽 퀄리티",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space,"그래픽 퀄리티",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space,"그래픽 퀄리티",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}


//이미지 효과 세팅
if setting_num = 1
{
	if global.language = 0
	{
	text = "Image effects"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Image effects",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Image effects",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Image effects",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "이미지 효과"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"이미지 효과",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"이미지 효과",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"이미지 효과",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}

//플로어 세팅
if setting_num = 2
{
	if global.language = 0
	{
	text = "Floor quality"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Floor quality",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Floor quality",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Floor quality",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "바닥 퀄리티"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"바닥 퀄리티",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"바닥 퀄리티",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"바닥 퀄리티",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}

//유저 세팅
if setting_num = 3
{
	if global.language = 0
	{
	text = "User setting"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"User setting",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"User setting",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"User setting",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "유저 세팅"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"유저 세팅",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"유저 세팅",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"유저 세팅",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}

//사운드 세팅
if setting_num = 4
{
	if global.language = 0
	{
	text = "Sound"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Sound",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Sound",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Sound",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "사운드"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"사운드",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"사운드",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"사운드",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}


//세이빙 세팅
if setting_num = 5
{
	if global.language = 0
	{
	text = "Saving"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Optimizing",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Optimizing",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Optimizing",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "세이빙"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"최적화",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"최적화",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"최적화",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}


//돌아가기
if setting_num = 8
{
	if global.language = 0
	{
	text = "Quit"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Quit",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Quit",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"Quit",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
	
	if global.language = 1
	{
	text = "종료하기"
	if gl_pressed != setting_num && entered != 1
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"종료하기",15,-1,text_alpha,c_gray,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if gl_pressed = setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"종료하기",15,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	
	if entered = 1 && gl_pressed != setting_num
	{
	draw_text_kl_scale(xx+(camera_xsize)*30,yy+(camera_ysize)*first_text_space+(setting_num*text_space),"종료하기",15,-1,text_alpha,$FFB2B2B2,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
	}
	}
}