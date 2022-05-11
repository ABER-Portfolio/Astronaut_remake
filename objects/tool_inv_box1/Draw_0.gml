/// @description Insert description here
// You can write your code in this editor
if (global.drawing_cancle_ui = 0 || global.inv_open > 0) && global.inv_open != 2 && global.draw_minimap != 1
{
if global.chat_activity = false && global.playing_scene = 0
{
var x_scale = (obj_camera.v_x/1280)/1.8
var y_scale = (obj_camera.v_y/720)/1.8

var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-530*x_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
var yyy = camera_get_view_y(view_camera[0])

var box_size = 103



var a_text_xscale = 0.9*x_scale
var a_text_yscale = 0.9*y_scale
	
var a_text_xm = 15*x_scale*xx_scale
var a_text_ym = 15*y_scale*xx_scale

if global.ui_loc = 0
{
draw_sprite_ext(sprite_index,0,xx+(box_size*x_scale*box_num),yy-(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,c_white,0.65)//0.85


	//자신이 클릭된 경우
	if box_num = global.tool_inv_box_choose
	{
	draw_sprite_ext(sprite_index,1,xx+(box_size*x_scale*box_num),yy-(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,c_white,1)//0.85

		if instance_number(pl_inhand) > 0
		{
			if co_op_code.is_server = true
			{
				if pl_inhand.cool_time > 0
				{
				draw_sprite_ext(sprite_index,1,xx+(box_size*x_scale*box_num),yy-(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,$FF6D19FF,1)//0.85
				}
			}
			else
			{
				if instance_number(pl_inhand_co_op) > 0
				{
					if pl_inhand_co_op.cool_time > 0
					{
					draw_sprite_ext(sprite_index,1,xx+(box_size*x_scale*box_num),yy-(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,$FF6D19FF,1)//0.85
					}
				}
			}
		}
	}


	//해당칸안의 아이템 그리기
	if item_num != noone
	{
		//아이템이 없는경우는 드로우X
		if string_hash_to_newline(item_having_num) > 0
		{
			if item_real_spr = spr_potion_center_origin || item_real_spr = spr_clothes_center_origin
			{
			draw_sprite_ext(item_real_spr,item_num,xx+(box_size*x_scale*box_num),yy-(y_scale*box_size*0.8),(xx_scale*x_scale*1.5),(yy_scale*y_scale*1.5),0,c_white,1)
			}
			else
			{
			draw_sprite_ext(item_real_spr,item_num,xx+(box_size*x_scale*box_num),yy-(y_scale*box_size*0.8),(xx_scale*x_scale),(yy_scale*y_scale),0,c_white,1)
			}
		
			//만약 도구가 아닌경우 갯수까지 드로우
			if item_real_spr != spr_pickaxe_center_origin && item_real_spr != spr_clothes_center_origin
			{
			draw_text_kl_scale(xx+(box_size*x_scale*box_num)+a_text_xm,yy-(y_scale*box_size*0.8)+a_text_ym,string_hash_to_newline(string(item_having_num)),a_text_xscale*25,-1,1,c_white,0,-1,ko_80,a_text_xscale*xx_scale/1.5*0.5,a_text_yscale*yy_scale/1.5*0.5,0)
			}
		}
	}

			if global.quick_slot_number = 0
			{
			draw_text_kl_scale(xx+(box_size*x_scale*box_num)-a_text_xm*2.2,yy-(y_scale*box_size*0.8)-a_text_ym*2.2,string(box_num),a_text_xscale*25,-1,1,c_white,0,-1,ko_80,a_text_xscale*xx_scale*0.25,a_text_yscale*yy_scale*0.25,0)
			}
		}
		else
		{
		draw_sprite_ext(sprite_index,0,xx+(box_size*x_scale*box_num),yyy+(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,c_white,0.65)//0.85


			//자신이 클릭된 경우
			if box_num = global.tool_inv_box_choose
			{
			draw_sprite_ext(sprite_index,1,xx+(box_size*x_scale*box_num),yyy+(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,c_white,1)//0.85

				if instance_number(pl_inhand) > 0
				{
					if co_op_code.is_server = true
					{
						if pl_inhand.cool_time > 0
						{
						draw_sprite_ext(sprite_index,1,xx+(box_size*x_scale*box_num),yyy+(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,$FF6D19FF,1)//0.85
						}
					}
					else
					{
						if instance_number(pl_inhand_co_op) > 0
						{
							if pl_inhand_co_op.cool_time > 0
							{
							draw_sprite_ext(sprite_index,1,xx+(box_size*x_scale*box_num),yyy+(y_scale*box_size*0.8),xx_scale*x_scale,yy_scale*y_scale,0,$FF6D19FF,1)//0.85
							}
						}
					}
				}
			}


			//해당칸안의 아이템 그리기
			if item_num != noone
			{
				//아이템이 없는경우는 드로우X
				if string_hash_to_newline(item_having_num) > 0
				{
					if item_real_spr = spr_potion_center_origin || item_real_spr = spr_clothes_center_origin
					{
					draw_sprite_ext(item_real_spr,item_num,xx+(box_size*x_scale*box_num),yyy+(y_scale*box_size*0.8),(xx_scale*x_scale*1.5),(yy_scale*y_scale*1.5),0,c_white,1)
					}
					else
					{
					draw_sprite_ext(item_real_spr,item_num,xx+(box_size*x_scale*box_num),yyy+(y_scale*box_size*0.8),(xx_scale*x_scale),(yy_scale*y_scale),0,c_white,1)
					}
		
					//만약 도구가 아닌경우 갯수까지 드로우
					if item_real_spr != spr_pickaxe_center_origin && item_real_spr != spr_clothes_center_origin
					{
					draw_text_kl_scale(xx+(box_size*x_scale*box_num)+a_text_xm,yyy+(y_scale*box_size*0.8)+a_text_ym,string_hash_to_newline(string(item_having_num)),a_text_xscale*25,-1,1,c_white,0,-1,ko_80,a_text_xscale*xx_scale/1.5*0.5,a_text_yscale*yy_scale/1.5*0.5,0)
					}
				}
			}

			if global.quick_slot_number = 0
			{
			draw_text_kl_scale(xx+(box_size*x_scale*box_num)-a_text_xm*2.2,yyy+(y_scale*box_size*0.8)-a_text_ym*2.2+y_scale*6,string(box_num),a_text_xscale*25,-1,1,c_white,0,-1,ko_80,a_text_xscale*xx_scale*0.25,a_text_yscale*yy_scale*0.25,0)
			}
		}
	}
}
