/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])



if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = (window_get_height()/(720*(global.mobile+1)))

var camera_xscale = (obj_camera.v_x/1280)*win_wid
var camera_yscale = (obj_camera.v_y/720)*win_hei




var title_text_scale = 1.1*camera_xscale
//검은 라인 그리기
draw_sprite_ext(spr_gage_bar,1,xx+camera_xscale*32,yy+camera_yscale*670,25*camera_xscale,2.6*camera_yscale,0,c_white,0.4)

//로딩바 그리기
//draw_sprite_ext(spr_gage_bar_left_origin,6,xx+camera_xscale*448,yy+camera_yscale*420,6*camera_xscale,0.23*camera_yscale,0,c_white,1)

//하얀 라인 그리기
//draw_sprite_ext(spr_gage_bar_left_origin,0,xx+camera_xscale*448,yy+camera_yscale*420,6*camera_xscale,0.23*camera_yscale,0,c_white,alpha_white_ef)

//로딩바 그리기

if loading_kinds = -1
{
random_ind_bar = 2
}
else if loading_kinds = 0
{
random_ind_bar = 11
}
else if loading_kinds = 1
{
random_ind_bar = 5
}
else if loading_kinds = 2
{
random_ind_bar = 9
}
else
{
random_ind_bar = 11
}


if loading_dis >= max_loading_dis
{
alpha_white_ef = 1
}

alpha_white_ef += (0 - alpha_white_ef)*0.1


if new_map = 1
{
	
#region//처음 맵생성

if global.language = 0
{
	if loading_kinds = -1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Loading info",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Generating terrains    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 0
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Generating specific terrains    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 2
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Generating biomes    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 3
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Creating objects    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 4
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Clean up    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 5
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Done",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if global.a_m_c_save = -1
	{
		if global.server_open = true
		{
		global.co_op_mode = 1
			if loading_kinds = 6
			{
			draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Waiting the participants...",20*camera_yscale,3600,1,c_white,1,-1,ko_80,camera_xscale*0.0125*20,camera_yscale*0.0125*20,image_angle)
				if cre_server = 0
				{
				co_op_code.alarm[3] = 1
				cre_server++
				}
			}
		
			if loading_kinds = 7
			{
			draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Done",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
			}
		}
	}
	else
	{
		if loading_kinds = 6
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Saving new map    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	
		if loading_kinds = 7 && global.server_open = false
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Done",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	}
	
	if global.server_open = true
	{
	global.co_op_mode = 1
		if loading_kinds = 7
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Waiting the participants...",20*camera_yscale,3600,1,c_white,1,-1,ko_80,camera_xscale*0.0125*20,camera_yscale*0.0125*20,image_angle)
			if cre_server = 0
			{
			co_op_code.alarm[3] = 1
			cre_server++
			}
		}
		
		if loading_kinds = 8
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Done",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	}
}

if global.language = 1
{
	if loading_kinds = -1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"정보 불러오는중",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"지형 생성중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 0
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"특정 지형 생성중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 2
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"바이옴 생성중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 3
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"오브젝트 생성중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 4
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"정리중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 5
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"완료",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if global.a_m_c_save = -1
	{
		if global.server_open = true
		{
			if loading_kinds = 6
			{
			draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"참가자를 기다리는 중...",20*camera_yscale,3600,1,c_white,1,-1,ko_80,camera_xscale*0.0125*20,camera_yscale*0.0125*20,image_angle)
				if cre_server = 0
				{
				co_op_code.alarm[3] = 1
				cre_server++
				}
			}
		
			if loading_kinds = 7
			{
			draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"완료",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
			}
		}
	}
	else
	{
		if loading_kinds = 6
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"새로운 맵 저장중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	
		if loading_kinds = 7 && global.server_open = false
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"완료",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	}
	
	if global.server_open = true
	{
		if loading_kinds = 7
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"참가자를 기다리는 중...",20*camera_yscale,3600,1,c_white,1,-1,ko_80,camera_xscale*0.0125*20,camera_yscale*0.0125*20,image_angle)
			if cre_server = 0
			{
			co_op_code.alarm[3] = 1
			cre_server++
			}
		}
		
		if loading_kinds = 8
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"완료",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	}
}

#endregion

}

if new_map = -1
{
	
#region//맵 불러오기

if global.language = 0
{
	if loading_kinds = -1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Loading Map    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 0
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Clean up    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Done",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}

	
	if global.server_open = true
	{
	global.co_op_mode = 1
		if loading_kinds = 2
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Waiting the participants...",20*camera_yscale,3600,1,c_white,1,-1,ko_80,camera_xscale*0.0125*20,camera_yscale*0.0125*20,image_angle)
			if cre_server = 0
			{
			co_op_code.alarm[3] = 1
			cre_server++
			}
		}
		
		if loading_kinds = 4
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"Done",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	}
}

if global.language = 1
{
	if loading_kinds = -1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"맵 불러오는중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 0
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"정리중    ("+string(loading_dis)+" / "+string(max_loading_dis)+")",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}
	
	if loading_kinds = 1
	{
	draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"완료",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
	}

	
	if global.server_open = true
	{
		if loading_kinds = 2
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"참가자를 기다리는 중...",20*camera_yscale,3600,1,c_white,1,-1,ko_80,camera_xscale*0.0125*20,camera_yscale*0.0125*20,image_angle)
			if cre_server = 0
			{
			co_op_code.alarm[3] = 1
			cre_server++
			}
		}
		
		if loading_kinds = 4
		{
		draw_text_kl_scale(xx+camera_xscale*32,yy+camera_yscale*670,"완료",29,-1,1,c_white,0,-1,ko_80,title_text_scale*0.0125*15,title_text_scale*0.0125*15,image_angle)
		}
	}
}
	
#endregion

}