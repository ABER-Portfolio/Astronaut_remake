/// @description Insert description here
// You can write your code in this editor


///////////////////////////////////////////////////////////////////////////////////////////////////////////

if inview = true
{
	if instance_number(BG_blind) = 0
	{
	draw_sprite_ext(sprite_index,image_index+floor_img_ind,x,y,image_xscale,image_yscale,floor_img_ang,c_white,image_alpha)

	
	/////////////////////////////////////////////////////////////////////////////////////
	if global.floor_sea = 0
	{
		if draw_water = 1
		{
		draw_sprite_ext(sprite_index,image_index+floor_wall_img_ind,x,y,image_xscale*floor_wall_xscale,image_yscale,0,c_white,image_alpha)

		
		var y_p_29_p_y_3 = y+29+y_3
		var x_p_16 = x+16
		var x_m_16 = x-16
		var y_p_33 = y+33
			
		if global.w_c_alpha[1]-0.5 > 0
		{
		draw_set_color($BDE59D2D)
		draw_sprite_pos(spr_water_shake,0,x_m_16,y_p_29_p_y_3,x_p_16,y_p_29_p_y_3,x_p_16,y_p_33,x_m_16,y_p_33,global.w_c_alpha[1]-0.5)
		}
		
		if global.w_c_alpha[2]-0.5 > 0
		{
		draw_set_color($E34537B2)
		draw_sprite_pos(spr_water_shake,0,x_m_16,y_p_29_p_y_3,x_p_16,y_p_29_p_y_3,x_p_16,y_p_33,x_m_16,y_p_33,global.w_c_alpha[2]-0.5)
		}
		
		if global.w_c_alpha[3]-0.5 > 0
		{
		draw_set_color($CF6F2255)
		draw_sprite_pos(spr_water_shake,0,x_m_16,y_p_29_p_y_3,x_p_16,y_p_29_p_y_3,x_p_16,y_p_33,x_m_16,y_p_33,global.w_c_alpha[3]-0.5)
		}
		
		if global.w_c_alpha[4]-0.5 > 0
		{
		draw_set_color($D6FFCF80)
		draw_sprite_pos(spr_water_shake,0,x_m_16,y_p_29_p_y_3,x_p_16,y_p_29_p_y_3,x_p_16,y_p_33,x_m_16,y_p_33,global.w_c_alpha[4]-0.5)
		}
		
		if global.w_c_alpha[5]-0.5 > 0
		{
		draw_set_color($D6FCCE80)
		draw_sprite_pos(spr_water_shake,0,x_m_16,y_p_29_p_y_3,x_p_16,y_p_29_p_y_3,x_p_16,y_p_33,x_m_16,y_p_33,global.w_c_alpha[5]-0.5)
		}
		
		if global.w_c_alpha[6]-0.5 > 0
		{
		draw_set_color($DE986F22)
		draw_sprite_pos(spr_water_shake,0,x_m_16,y_p_29_p_y_3,x_p_16,y_p_29_p_y_3,x_p_16,y_p_33,x_m_16,y_p_33,global.w_c_alpha[6]-0.5)
		}
		
		if global.w_c_alpha[1] > 0
		{
		draw_set_color($FFFFEE6E)
		draw_set_alpha(global.w_c_alpha[1])
		draw_line_width(x-17,y_p_29_p_y_3-1,x+15,y_p_29_p_y_3-1,1.4)
		}
		
		if global.w_c_alpha[2] > 0
		{
		draw_set_color($FF534AE6)
		draw_set_alpha(global.w_c_alpha[2])
		draw_line_width(x-17,y_p_29_p_y_3-1,x+15,y_p_29_p_y_3-1,1.4)
		}
		
		if global.w_c_alpha[3] > 0
		{
		draw_set_color($FFB76491)
		draw_set_alpha(global.w_c_alpha[3])
		draw_line_width(x-17,y_p_29_p_y_3-1,x+15,y_p_29_p_y_3-1,1.4)
		}
		
		if global.w_c_alpha[4] > 0
		{
		draw_set_color($FFF2EFA9)
		draw_set_alpha(global.w_c_alpha[4])
		draw_line_width(x-17,y_p_29_p_y_3-1,x+15,y_p_29_p_y_3-1,1.4)
		}
		
		if global.w_c_alpha[5] > 0
		{
		draw_set_color($FFB0DFFF)
		draw_set_alpha(global.w_c_alpha[5])
		draw_line_width(x-17,y_p_29_p_y_3-1,x+15,y_p_29_p_y_3-1,1.4)
		}


		//draw_sprite_ext(spr_water_line,0,x,y+(m_water_s*32)+image_yscale*80,image_xscale,image_yscale,angle,c_white,0.9)
		}
	}


	///////////////////////////////////////////////바닥 파임 이미지////////////////////////////////////////////////
	if draw_tiles_on_the_floor = 0 && global.floor_quality != -1 && !place_meeting(x,y,grill_floor)
	{
	var _num = image_index/18
		if _num < 10
		{
		draw_sprite_ext(tiles_on_the_floor,_num+random_tiles_on_the_floor,x,y,image_xscale*random_xscale,image_yscale,image_angle,c_white,1)
		}
		else
		{
		draw_sprite_ext(tiles_on_the_floor,60+random_tiles_on_the_floor,x,y,image_xscale*random_xscale,image_yscale,image_angle,c_white,1)
		}
	}

	}
}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////
