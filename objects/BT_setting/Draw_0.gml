/// @description Insert description here
// You can write your code in this editor

if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = window_get_height()/(720*(global.mobile+1))

var title_text_scale = 0.85

var title_text_scale_plus = 20
if global.window_ = 1920
{
title_text_scale_plus = 22
}

if a = 10
{
	if global.language = 0
	{
	text = "Create a planet"
	draw_text_kl_scale(x,y,"Create a planet",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*title_text_scale_plus*0.5,text_scale/30*title_text_scale_plus*0.5,0)
	}


	if global.language = 1
	{
	text = "행성 생성"
	draw_text_kl_scale(x,y,"행성 생성",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*title_text_scale_plus*0.5,text_scale/30*title_text_scale_plus*0.5,0)
	}
}
else if a != 11 && a != 10 && a != 12
{
	if global.language = 0
	{
		if b = 0
		{
		text = "Small"
		draw_text_kl_scale(x,y,"Small",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*title_text_scale_plus*0.5,text_scale/30*title_text_scale_plus*0.5,0)
		}

		if b = 1
		{
		text = "Medium"
		draw_text_kl_scale(x,y,"Medium",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*title_text_scale_plus*0.5,text_scale/30*title_text_scale_plus*0.5,0)
		}

		if b = 2
		{
		text = "Large"
		draw_text_kl_scale(x,y,"Large",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*title_text_scale_plus*0.5,text_scale/30*title_text_scale_plus*0.5,0)
		}
		
		if b = 3
		{
		text = "Larger"
		draw_text_kl_scale(x,y,"Larger",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		draw_text_kl_scale(global._came_vx+20,global._came_vy_p_h-20,"It can be stopped depending on your device!",55,-1,image_alpha,$FF0F33FF,0,-1,ko_80,text_scale/30*title_text_scale_plus*0.5*0.5,text_scale/30*title_text_scale_plus*0.5*0.5,0)
		}
		
		if b = 4
		{
		text = "smallest"
		draw_text_kl_scale(x,y,"smallest",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		draw_text_kl_scale(global._came_vx+20,global._came_vy_p_h-20,"This setting is for low-end devices.",55,-1,image_alpha,$FF0F33FF,0,-1,ko_80,text_scale/30*title_text_scale_plus*0.5*0.5,text_scale/30*title_text_scale_plus*0.5*0.5,0)
		}

		if a = 0
		{
		text = "Planet size"
		draw_text_kl_scale(x,y-50,"Planet size",55,-1,image_alpha,c_white,0,0,ko_80,title_text_scale*0.025*0.5*title_text_scale_plus,title_text_scale*0.025*0.5*title_text_scale_plus,0)
		}
		
		if a = 1
		{
		text = "Island size"
		draw_text_kl_scale(x,y-50,"Island size",55,-1,image_alpha,c_white,0,0,ko_80,title_text_scale*0.025*0.5*title_text_scale_plus,title_text_scale*0.025*0.5*title_text_scale_plus,0)
		}
	}


	if global.language = 1
	{
		if b = 0
		{
		text = "좁음"
		draw_text_kl_scale(x,y,"좁음",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		}

		if b = 1
		{
		text = "보통"
		draw_text_kl_scale(x,y,"보통",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		}

		if b = 2
		{
		text = "넓음"
		draw_text_kl_scale(x,y,"넓음",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		}
		
		if b = 3
		{
		text = "더 넓음"
		draw_text_kl_scale(x,y,"더 넓음",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		draw_text_kl_scale(global._came_vx+20,global._came_vy_p_h-20,"기기에 따라 멈춤현상이 발생할수있습니다!",55,-1,image_alpha,$FF0F33FF,0,-1,ko_80,text_scale/30*title_text_scale_plus*0.5*0.5,text_scale/30*title_text_scale_plus*0.5*0.5,0)
		}
		
		if b = 4
		{
		text = "가장 좁음"
		draw_text_kl_scale(x,y,"가장 좁음",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
		draw_text_kl_scale(global._came_vx+20,global._came_vy_p_h-20,"저사양 기기를 위한 설정입니다.",55,-1,image_alpha,$FF0F33FF,0,-1,ko_80,text_scale/30*title_text_scale_plus*0.5*0.5,text_scale/30*title_text_scale_plus*0.5*0.5,0)
		}

		if a = 0
		{
		text = "행성 크기"
		draw_text_kl_scale(x,y-50,"행성 크기",55,-1,image_alpha,c_white,0,0,ko_80,title_text_scale*0.025*0.5*title_text_scale_plus,title_text_scale*0.025*0.5*title_text_scale_plus,0)
		}
		
		if a = 1
		{
		text = "섬 크기"
		draw_text_kl_scale(x,y-50,"섬 크기",55,-1,image_alpha,c_white,0,0,ko_80,title_text_scale*0.025*0.5*title_text_scale_plus,title_text_scale*0.025*0.5*title_text_scale_plus,0)
		}
	
	}
}



if a = 11
{
	if (instance_number(BT_title) > 0 || instance_number(select_map_button) > 0) && (instance_number(player) = 0 || instance_number(option_line_bar) = 0)
	{
		if global.language = 0
		{
		text = "Back"
		draw_text_kl_scale(x,y,"Back",55,-1,image_alpha,color,0,0,ko_80,text_scale*0.04*0.5*title_text_scale_plus/win_wid,text_scale*0.04*0.5*title_text_scale_plus/win_hei,0)
		}
	
		if global.language = 1
		{
		text = "뒤로 가기"
		draw_text_kl_scale(x,y,"뒤로 가기",55,-1,image_alpha,color,0,0,ko_80,text_scale*0.04*0.5*title_text_scale_plus/win_wid,text_scale*0.04*0.5*title_text_scale_plus/win_hei,0)
		}
	}
	
	
	if (instance_number(player) > 0 || instance_number(option_line_bar) > 0 || instance_number(setting_first) > 0 || instance_number(enter_ip) > 0)
	{
		if instance_number(enter_ip) > 0
		{
			if global.language = 0
			{
			text = "Back"
			draw_text_kl_scale(x,y,"Back",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
			}
	
			if global.language = 1
			{
			text = "뒤로 가기"
			draw_text_kl_scale(x,y,"뒤로 가기",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
			}
		}
		else
		{
			if global.language = 0
			{
			text = "Back"
			draw_text_kl_scale(x,y,"Back",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
			}
	
			if global.language = 1
			{
			text = "뒤로 가기"
			draw_text_kl_scale(x,y,"뒤로 가기",55,-1,image_alpha,color,0,0,ko_80,text_scale/30*0.5*title_text_scale_plus,text_scale/30*0.5*title_text_scale_plus,0)
			}
		}
	}
}








if a = 12
{
	if global.language = 0
	{
	text = "Join server"
	draw_text_kl_scale(x,y,"Join server",55,-1,image_alpha,color,0,0,ko_80,text_scale*0.04*0.45*title_text_scale_plus/win_wid,text_scale*0.04*0.45*title_text_scale_plus/win_hei,0)
	}
	
	if global.language = 1
	{
	text = "서버 참가"
	draw_text_kl_scale(x,y,"서버 참가",55,-1,image_alpha,color,0,0,ko_80,text_scale*0.04*0.45*title_text_scale_plus/win_wid,text_scale*0.04*0.45*title_text_scale_plus/win_hei,0)
	}
}