/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
var yyy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
var mid_xx = xx+camera_get_view_width(view_camera[0])*0.5
var mid_yy = yy+camera_get_view_height(view_camera[0])*0.5
var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720

//draw_text(xxx-200,yy+32,string(cm_x)+" "+string(cm_y))

var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}

if instance_number(target_) > 0
{
	if instance_exists(player_co_op)
	{
		if target_.reviving > 0
		{
		var text_scale = 25;
		var shape_scale = 38;

		var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.95;
		var yy2 = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-30*camera_yscale;
		
		draw_set_alpha(0.45);
		draw_set_color(c_black);
		draw_rectangle(mid_xx+camera_xscale*100,yy+camera_yscale*330,mid_xx-camera_xscale*100,yy+camera_yscale*340,false);

		draw_set_alpha(0.8);
		draw_set_color(c_white);
		draw_rectangle(mid_xx+camera_xscale*100*(target_.reviving),yy+camera_yscale*330,mid_xx-camera_xscale*100*(target_.reviving),yy+camera_yscale*340,false);
		}
	}
}





if co_op_code.is_server = true
{
	if instance_number(player) > 0 && point_distance(0,mid_yy,0,player.y) >= 40
	{
		if player.y > mid_yy
		{
		global.ui_loc = 1
		}
		else
		{
		global.ui_loc = 0
		}
	}
	else
	{
	global.ui_loc = 0
	}
}
else
{
	if instance_number(player_co_op) > 0 && point_distance(0,mid_yy,0,player_co_op.y) >= 40
	{
		if player_co_op.y > mid_yy
		{
		global.ui_loc = 1
		}
		else
		{
		global.ui_loc = 0
		}
	}
	else
	{
	global.ui_loc = 0
	}
}






//draw_text(xx+23,yy+23,x)
if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = (window_get_height()/(720*(global.mobile+1)))

var camera_xscale_ = (obj_camera.v_x/1280)*win_wid
var camera_yscale_ = (obj_camera.v_y/720)*win_hei

if global.drawing_cancle_ui = 0 && global.draw_minimap = 0 && global.n_room = 1 && global.inv_open != 2 && global.playing_scene = 0 && global.black_blind = 0 && obj_camera.scene_cancle_cooltime > 4
{
	if instance_number(BG_blind) = 0
	{
	var tw_vx = 2*camera_xscale
	var tt_vx = camera_xscale
	var xxx__ = xxx - 168*camera_xscale
	var yy___ = yy + 18*camera_xscale
	


	
	
	if instance_number(fl_cave) = 0
	{
	draw_set_color($BDE59D2D)
	draw_set_alpha(global.w_c_alpha[1])
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	
	draw_set_color($E34537B2)
	draw_set_alpha(global.w_c_alpha[2])
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	
	draw_set_color($CF6F2255)
	draw_set_alpha(global.w_c_alpha[3])
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	
	draw_set_color($D6FFCF80)
	draw_set_alpha(global.w_c_alpha[4])
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	
	draw_set_color($D6FCCE80)
	draw_set_alpha(global.w_c_alpha[5])
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	
	draw_set_color($DE986F22)
	draw_set_alpha(global.w_c_alpha[6])
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	}
	else
	{
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_rectangle(xxx__,yy___,xxx__+147*camera_xscale,yy___+147*camera_xscale,false)
	}



		if instance_exists(floor_pl_parents)
		{
			with(floor_pl_parents)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
				{
				draw_set_color(_img_ble)
				draw_set_alpha(1)
				draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
				draw_set_color(c_white)
				}
			}
		}
		
		if instance_exists(all_blocks_parents)
		{
			with(all_blocks_parents)
			{
				if object_index != block_noclip && object_index != paint_block
				{
				var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
				var yy__ = yy___+48*camera_xscale + (y - yy)/16
					if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
					{
					draw_set_color(c_gray)
					draw_set_alpha(1)
					draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
					draw_set_color(c_white)
					}
				}
				else if object_index = paint_block
				{
				var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
				var yy__ = yy___+48*camera_xscale + (y - yy)/16
					if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
					{
					draw_set_color(self.paint_col)
					draw_set_alpha(1)
					draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
					draw_set_color(c_white)
					}
				}
			}
		}
		
		if instance_exists(monster_parents)
		{
			with(monster_parents)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
				{
				draw_set_color(c_red)
				draw_set_alpha(1)
				draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
				draw_set_color(c_white)
				}
			}
		}


		if instance_exists(player)
		{
			with(player)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
				{
				draw_set_color(c_white)
				draw_set_alpha(1)
				if global.knocked_out_origin != 0
				{
				draw_sprite_ext(spr_cursur,3,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720,0,c_white,1)
				}
				else
				{
				draw_sprite_ext(minimap_head,0,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280/2.5)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720/2.5,0,global.suit_col,1)
				}
				draw_set_color(c_white)
				}
			}
		}
		
		
		if instance_exists(player_co_op)
		{
			with(player_co_op)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
				{
				draw_set_color(c_white)
				draw_set_alpha(1)
				if global.knocked_out_co_op != 0
				{
				draw_sprite_ext(spr_cursur,3,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720,0,c_white,1)
				}
				else
				{
				draw_sprite_ext(minimap_head,0,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280/2.5)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720/2.5,0,global.suit_col,1)
				}
				draw_set_color(c_white)
				}
			}
		}
		
		
		
		if instance_exists(minimap_hider_block)
		{
			with(minimap_hider_block)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx && yy__ > yy___ && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx
				{
				draw_set_color(c_black)
				draw_set_alpha(1)
				draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
				draw_set_color(c_white)
				}
			}
		}

	
	draw_sprite_ext(sprite1571,0,xxx__+75*camera_xscale,yy___+75*camera_xscale,obj_camera.v_x/1280,obj_camera.v_y/720,0,c_white,1)
	}
}












if global.drawing_cancle_ui = 0 && global.draw_minimap = 1 && global.n_room = 1 && global.inv_open != 2 && global.playing_scene = 0 && global.black_blind = 0 && obj_camera.scene_cancle_cooltime > 4
{
	if instance_number(BG_blind) = 0
	{
	var tw_vx = 2*camera_xscale
	var tt_vx = camera_xscale
	var xxx__ = xx + camera_get_view_width(view_camera[0])*0.5 - (168*camera_xscale*0.5)
	var yy___ = yy + camera_get_view_height(view_camera[0])*0.5 - (168*camera_yscale*0.5)
	var __adbs = (168*camera_xscale*1.3)


	if co_op_code.is_server = true
	{
	player.chunk_loading_time = global.chunk_loading_speed*70+1
	}
	else
	{
	player_co_op.chunk_loading_time = global.chunk_loading_speed*70+1
	}
	

	draw_set_color($BDE59D2D)
	draw_set_alpha(global.w_c_alpha[1])
	draw_rectangle(xxx__-__adbs,yy___-__adbs,xxx__+147*camera_xscale*2.5,yy___+147*camera_xscale*2.5,false)
	
	draw_set_color($E34537B2)
	draw_set_alpha(global.w_c_alpha[2])
	draw_rectangle(xxx__-__adbs,yy___-__adbs,xxx__+147*camera_xscale*2.5,yy___+147*camera_xscale*2.5,false)
	
	draw_set_color($CF6F2255)
	draw_set_alpha(global.w_c_alpha[3])
	draw_rectangle(xxx__-__adbs,yy___-__adbs,xxx__+147*camera_xscale*2.5,yy___+147*camera_xscale*2.5,false)
	
	draw_set_color($D6FFCF80)
	draw_set_alpha(global.w_c_alpha[4])
	draw_rectangle(xxx__-__adbs,yy___-__adbs,xxx__+147*camera_xscale*2.5,yy___+147*camera_xscale*2.5,false)
	
	draw_set_color($D6FCCE80)
	draw_set_alpha(global.w_c_alpha[5])
	draw_rectangle(xxx__-__adbs,yy___-__adbs,xxx__+147*camera_xscale*2.5,yy___+147*camera_xscale*2.5,false)
	
	draw_set_color($DE986F22)
	draw_set_alpha(global.w_c_alpha[6])
	draw_rectangle(xxx__-__adbs,yy___-__adbs,xxx__+147*camera_xscale*2.5,yy___+147*camera_xscale*2.5,false)





		if instance_exists(floor_pl_parents)
		{
			with(floor_pl_parents)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
				{
				draw_set_color(_img_ble)
				draw_set_alpha(1)
				draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
				draw_set_color(c_white)
				}
			}
		}
		
		if instance_exists(all_blocks_parents)
		{
			with(all_blocks_parents)
			{
				if object_index != block_noclip && object_index != paint_block
				{
				var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
				var yy__ = yy___+48*camera_xscale + (y - yy)/16
					if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
					{
					draw_set_color(c_gray)
					draw_set_alpha(1)
					draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
					draw_set_color(c_white)
					}
				}
				else if object_index = paint_block
				{
				var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
				var yy__ = yy___+48*camera_xscale + (y - yy)/16
					if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
					{
					draw_set_color(self.paint_col)
					draw_set_alpha(1)
					draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
					draw_set_color(c_white)
					}
				}
			}
		}
		
		if instance_exists(monster_parents)
		{
			with(monster_parents)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16 
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
				{
				draw_set_color(c_red)
				draw_set_alpha(1)
				draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
				draw_set_color(c_white)
				}
			}
		}


		if instance_exists(player)
		{
			with(player)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
				{
				draw_set_color(c_white)
				draw_set_alpha(1)
				if global.knocked_out_origin != 0
				{
				draw_sprite_ext(spr_cursur,3,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720,0,c_white,1)
				}
				else
				{
				draw_sprite_ext(minimap_head,0,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280/2.5)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720/2.5,0,global.suit_col,1)
				}
				draw_set_color(c_white)
				}
			}
		}
		
		
		if instance_exists(player_co_op)
		{
			with(player_co_op)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
				{
				draw_set_color(c_white)
				draw_set_alpha(1)
				if global.knocked_out_co_op != 0
				{
				draw_sprite_ext(spr_cursur,3,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720,0,c_white,1)
				}
				else
				{
				draw_sprite_ext(minimap_head,0,xx__+tw_vx,yy__+tw_vx,(obj_camera.v_x/1280/2.5)*(image_xscale/abs(image_xscale)),obj_camera.v_y/720/2.5,0,global.suit_col,1)
				}
				draw_set_color(c_white)
				}
			}
		}
		
		
		
		if instance_exists(minimap_hider_block)
		{
			with(minimap_hider_block)
			{
			var xx__ = xxx__+37.5*camera_xscale + (x - xx)/16
			var yy__ = yy___+48*camera_xscale + (y - yy)/16
				if xx__ > xxx__-tw_vx-__adbs && xx__ < xxx__+150*obj_camera.v_x/1280-tw_vx+__adbs && yy__ > yy___-__adbs && yy__ < yy___+150*obj_camera.v_x/1280-tw_vx+__adbs
				{
				draw_set_color(c_black)
				draw_set_alpha(1)
				draw_rectangle(xx__-tw_vx,yy__-tw_vx,xx__+tw_vx,yy__+tw_vx,false)
				draw_set_color(c_white)
				}
			}
		}


	
	draw_sprite_ext(sprite1571,0,xxx__+75*camera_xscale,yy___+75*camera_xscale,camera_xscale*4,camera_xscale*4,0,c_white,1)
	}
}








if instance_number(BG_blind) = 0
{
draw_set_color(c_white)
draw_set_alpha(bomb_blind)
if instance_number(BG_blind) > 0
{
draw_line_width(xx-32,yy,xxx,yy,room_width*10)
}
else
{
draw_line_width(xx-32,yy,xxx,yy,3000)
}
draw_set_alpha(1)
draw_set_color(c_white)
}














if instance_number(BG_blind) = 0 && global.drawing_cancle_ui = 0 && global.inv_open = 0 && global.playing_scene = 0 && obj_camera.scene_cancle_cooltime > 4
{
	if global.cave_floor > 0
	{
	draw_set_color(c_black)
	draw_set_alpha(1)
	
	var _img_ind = 0
	if global.cave_floor > 3 && global.cave_floor <= 8
	{
	_img_ind = 1
	}
	
	if global.cave_floor > 8 && global.cave_floor <= 12
	{
	_img_ind = 2
	}
	
	if global.cave_floor > 12 && global.cave_floor <= 15
	{
	_img_ind = 3
	}
	
	if global.cave_floor > 15 && global.cave_floor <= 18
	{
	_img_ind = 4
	}
	
	if global.cave_floor > 18 && global.cave_floor <= 21
	{
	_img_ind = 5
	}
	
	if global.cave_floor > 21 && global.cave_floor <= 24
	{
	_img_ind = 6
	}
	
	if global.cave_floor > 24
	{
	_img_ind = 7
	}
	
	
	draw_sprite_ext(sprite157,0,mid_xx,yy+40*camera_yscale,camera_xscale,camera_yscale,0,c_white,1)
	draw_set_color(c_white)
	draw_text_kl_scale(mid_xx,yy+31*camera_yscale,string(global.cave_floor),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*10,camera_xscale*1.5*0.0125*10,0)
	}
	
	if global.draw_minimap = 0
	{
	draw_sprite_ext(sprite213,1,xxx-(150-69)*camera_xscale,yy+(45+170)*camera_yscale,camera_xscale,camera_yscale,0,c_white,0.8)
	draw_sprite_ext(sprite213,0,xxx-(150-69)*camera_xscale,yy+(45+170)*camera_yscale,camera_xscale,camera_yscale,0,c_white,1)
	if global.language = 0
	{
	draw_text_kl_scale(xxx-140*camera_xscale,yy+(22+170)*camera_yscale,string(global.survived_days)+"d passed",camera_xscale*1.5*70,-1,1,c_white,0,-1,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
	}
	if global.language = 1
	{
	draw_text_kl_scale(xxx-140*camera_xscale,yy+(22+170)*camera_yscale,string(global.survived_days)+"일 지남",camera_xscale*1.5*70,-1,1,c_white,0,-1,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
	}
	
	var min_cal = floor((global.time/3333 - floor(global.time/3333))*60)
		if floor(global.time/3333) < 10
		{
			if min_cal < 10
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(36+185)*camera_yscale,"0"+string(floor(global.time/3333))+":0"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
			else
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(36+185)*camera_yscale,"0"+string(floor(global.time/3333))+":"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
		}
		else
		{
			if min_cal < 10
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(36+185)*camera_yscale,string(floor(global.time/3333))+":0"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
			else
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(36+185)*camera_yscale,string(floor(global.time/3333))+":"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
		}
	}
	else
	{
	draw_sprite_ext(sprite213,1,xxx-(150-69)*camera_xscale,yy+45*camera_yscale,camera_xscale,camera_yscale,0,c_white,0.8)
	draw_sprite_ext(sprite213,0,xxx-(150-69)*camera_xscale,yy+45*camera_yscale,camera_xscale,camera_yscale,0,c_white,1)
	if global.language = 0
	{
	draw_text_kl_scale(xxx-140*camera_xscale,yy+22*camera_yscale,string(global.survived_days)+"d passed",camera_xscale*1.5*70,-1,1,c_white,0,-1,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
	}
	if global.language = 1
	{
	draw_text_kl_scale(xxx-140*camera_xscale,yy+22*camera_yscale,string(global.survived_days)+"일 지남",camera_xscale*1.5*70,-1,1,c_white,0,-1,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
	}
	
	var min_cal = floor((global.time/3333 - floor(global.time/3333))*60)
		if floor(global.time/3333) < 10
		{
			if min_cal < 10
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(22+27)*camera_yscale,"0"+string(floor(global.time/3333))+":0"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
			else
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(22+27)*camera_yscale,"0"+string(floor(global.time/3333))+":"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
		}
		else
		{
			if min_cal < 10
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(22+27)*camera_yscale,string(floor(global.time/3333))+":0"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
			else
			{
			draw_text_kl_scale(xxx-70*camera_xscale,yy+(22+27)*camera_yscale,string(floor(global.time/3333))+":"+string(min_cal),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*8,camera_xscale*1.5*0.0125*8,0)
			}
		}
	}
}









////////////////////////////////////////////////////사망시///////////////////////////////////////////////////////
if global.dev_mode != 1
{
	if global.event_occurrence > 0
	{
	draw_set_color(c_white)
	draw_set_alpha(global.event_occurrence)
	draw_line_width(xx-32,yy,xxx,yy,3000)
	draw_set_alpha(1)
	draw_set_color(c_white)
	}
	
	if instance_number(BG_blind) = 0
	{
		draw_set_color(c_red)
		draw_set_alpha(hurted_alpha*0.25)
		if instance_number(BG_blind) > 0
		{
		draw_line_width(xx-32,yy,xxx,yy,room_width*10)
		}
		else
		{
		draw_line_width(xx-32,yy,xxx,yy,3000)
		}
		draw_set_alpha(1)
		draw_set_color(c_white)
		
		
		
		if draw_time_left_alpha > 0
		{
		draw_set_color(c_black)
		draw_set_alpha(draw_time_left_alpha)
		draw_line_width(xx-32,yy,xxx,yy,3000)
		draw_set_alpha(1)
		draw_set_color(c_white)
		global.revived_now = 1
		}
		
		

		if b_blind > 0
		{
		draw_set_color(c_black)
		draw_set_alpha(b_blind)
		draw_line_width(xx-32,yy,xxx,yy,3000)
		draw_set_alpha(1)
		draw_set_color(c_white)
		}
	}
}




if global.drawing_cancle_ui = 0
{
if global.now_loading = 0
{
	if global.saving_data > 0
	{
	save_loading_angle += (-70 - save_loading_angle)*0.2
	draw_sprite_ext(spr_inv_item,14,xx+camera_xscale_*32,yyy-camera_yscale_*64,camera_xscale_*0.5,camera_yscale_*0.5,0,c_white,1)
	draw_sprite_ext(spr_pickaxe,3,xx+camera_xscale_*55,yyy-camera_yscale_*50,-(camera_xscale_)*0.25,camera_yscale_*0.25,save_loading_angle,c_white,1)
	draw_text_kl_scale(xx+camera_xscale_*80,yyy-camera_yscale_*64,"Saving Data...",29,-1,1,c_white,-1,-1,ko_80,camera_xscale_*0.0125*10,camera_yscale_*0.0125*10,0)
		if global.saving_data = 0 || global.saving_data = 20
		{
		save_loading_angle = 0
		}
	}
}




if global.now_loading > 0
{
global.now_loading++
save_loading_angle += (-70 - save_loading_angle)*0.2
draw_sprite_ext(spr_inv_item,14,xx+camera_xscale_*32,yyy-camera_yscale_*64,camera_xscale_*0.5,camera_yscale_*0.5,0,c_white,1)
draw_sprite_ext(spr_pickaxe,3,xx+camera_xscale_*55,yyy-camera_yscale_*50,-(camera_xscale_)*0.25,camera_yscale_*0.25,save_loading_angle,c_white,1)
draw_text_kl_scale(xx+camera_xscale_*80,yyy-camera_yscale_*64,"Now loading...",29,-1,1,c_white,-1,-1,ko_80,camera_xscale_*0.0125*10,camera_yscale_*0.0125*10,0)
	if global.now_loading > 45
	{
	save_loading_angle = 0
		if global.now_loading != 0
		{
		global.now_loading = 1
		}
	}
}








////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if global.dev_mode = 1
{
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*96,"FPS(room_speed) : "+string(fps)+" / ins_num(code)"+string(instance_number(code))+" / chunk activation "+string(global.saving_data),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*112,"instance_count : "+string(instance_count)+"        particles_count : "+string(part_particles_count(effect_parents)+instance_number(effect_parents)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*128,"player_hspeed : "+string(global.hmovement_speed),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*144,"player_vspeed : "+string(global.movement_speed),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
if instance_number(BG_title) > 0
{
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*160,string(BG_title.can_press)+" / "+string(BG_title.max_can_press)+" ---- "+string(global.select),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
}
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*176,"chunk_size : "+string(global.chunk_size)+"  [ +"+string(global.chunk_size/32)+" block(s) ]",camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*192,"max_fps : "+string(max_fps),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*208,"average_frames/s : "+string(average_frames/60),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*224,"average_frames/m : "+string(average_frames_m/(3600)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*240,"biome : "+string(global.biome)+"   biome_real : "+string(global.biome_real),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)

draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*256+16,"global.knocked_out : "+string(global.knocked_out)+" global.do_not_move : "+string(global.do_not_move)+" global.revived_now : "+string(global.revived_now),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)

draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*256+16*2,"global.fl_block_all_num+block_all_num : "+string(global.fl_block_all_num+global.block_all_num),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)


if instance_number(pl_inhand) > 0
{
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*96,"damage : "+string(global.attack_damage),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*112,"picking_speed : "+string(global.plus_speed_mount*global.attacking_speed),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*128,"pickaxe_size : "+string(global.tool_size),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*144,"pickaxe_power : "+string(global.pickaxe_power),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*160,"knockback : "+string(global.knockback),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*176,"autoswing : "+string(global.autoswing),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*192,"weapon_kind : "+string(global.weapon_kind),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
if instance_number(player) > 0
{
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*208,"global.auto_scroll_x / x : "+string(global.auto_scroll_x)+" / "+string(player.x),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*224,"global.auto_scroll_y / y : "+string(global.auto_scroll_y)+" / "+string(player.y),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
}
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*240,"poisoning : "+string(global.poisoning),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*256,"burning : "+string(global.burning),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
	if instance_number(player) > 0
	{
	draw_text_k_scale(xxx-camera_xscale*16,yy+camera_yscale*302,"global.saving_data : "+string(floor(global.saving_data)),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
	}
}

if instance_number(objLightManager) > 0
{
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*16,"Time : "+string(global.time),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*32,"day_light : "+string(objLightManager.day_light_alpha*1000),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*48,"sun_light : "+string(objLightManager.sun_light_alpha*1000),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*64,"flash_light : "+string(objLightManager.flash_light_alpha*1000),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*80,"moon_light : "+string(objLightManager.moon_light_alpha*1000),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
	if instance_number(creating_maps) > 0 && room = ingame
	{
	draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*96,"creating_maps : "+string(creating_maps.loading_dis),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
	}
	else
	{
	draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*96,"creating_maps : there is no creating_maps",camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
	}
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*112,"Monster_num : "+string(instance_number(monster_parents)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yyy-camera_yscale*128,"pl_inhand_co_op : "+string(instance_number(pl_inhand_co_op))+"objLightParent : "+string(instance_number(objLightParent))+"objLightManager_building : "+string(instance_number(objLightManager_building)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
}










draw_text_k_scale(xxx-camera_xscale*16,yyy-camera_yscale*16,"window_width : "+string(global.window_),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xxx-camera_xscale*16,yyy-camera_yscale*32,"inventory_change_check : "+string(ui_inv.inventory_change_check),camera_xscale*30,-1,image_alpha,c_white,0,1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
}
else if global.dev_mode = 2
{
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*96,"win_width : "+string(window_get_width())+" / ins_num(code)"+string(instance_number(code)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*112,"win_height : "+string(window_get_height()),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*128,"global.all_map_num : "+string(global.all_map_num),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*144,"global.map_num : "+string(global.map_num),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*160,"global.server_open : "+string(global.server_open),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*176,"global.survived_days : "+string(global.survived_days),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*192,"global.n_room : "+string(global.n_room),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*208,"global.co_op_mode : "+string(global.co_op_mode),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*224,"global.stemina : "+string(global.stemina),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
if instance_number(code) > 0
{
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*240,"code.auto_stemina_heal : "+string(code.auto_stemina_heal),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
}

draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*272,"instance_number(code) : "+string(instance_number(code)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*288,"instance_number(player_co_op) : "+string(instance_number(player_co_op)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*304,"instance_number(obj_camera) : "+string(instance_number(obj_camera)),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*320,"global.n_room : "+string(global.n_room),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*336,"global.change_map_to : "+string(global.change_map_to),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)

draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*336+16*2,"global.goggles_col : "+string(global.goggles_col),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*336+16*3,"global.goggles_col_co_op : "+string(global.goggles_col_co_op),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)

draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*336+16*5,"global.wind_dir : "+string(global.wind_dir),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)

draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*336+16*7,"global.inhand_item_type : "+string(global.inhand_item_type)+"/ "+string(spr_only_items),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)
draw_text_k_scale(xx+camera_xscale*16,yy+camera_yscale*336+16*8,"global.inhand_item : "+string(global.inhand_item),camera_xscale*30,-1,image_alpha,c_white,0,-1,ko_80,camera_xscale/3*0.0125*30,camera_yscale/3*0.0125*30,0)


}
}


if (setting_blind > 0 || instance_number(BG_blind) > 0) && instance_number(option_line_bar) = 0
{
	if saved_sfx_volume = -1
	{
	saved_sfx_volume = global.sfx_volume
	}
	
	if setting_blind > 0
	{
	global.sfx_volume += ((1 - setting_blind) - global.sfx_volume)*0.08
	}
	else
	{
	global.sfx_volume += (-0.1 - global.sfx_volume)*0.08
	}
}
else
{
	if saved_sfx_volume != -1
	{
	global.sfx_volume = saved_sfx_volume
	saved_sfx_volume = -1
	}
}

draw_set_color(c_black)
draw_set_alpha(setting_blind)
if instance_number(BG_blind) > 0
{
draw_line_width(xx-32,yy,xxx,yy,room_width*10)
}
else
{
draw_line_width(xx-32,yy,xxx,yy,3000)
}
draw_set_alpha(1)
draw_set_color(c_white)




var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_width(view_camera[0])
var yyy = camera_get_view_height(view_camera[0])


if global.playing_scene > 0
{
scene_cancle_cooltime = 0
	if global.playing_scene_black_bg < 125
	{
	global.playing_scene_black_bg ++
	}
global.playing_scene_black_bg += (125 - global.playing_scene_black_bg)*0.07
}
else
{
scene_cancle_cooltime++

	if scene_cancle_cooltime > 2
	{
		if global.playing_scene_black_bg > 0
		{
		global.playing_scene_black_bg --
		}
	global.playing_scene_black_bg += (-1 - global.playing_scene_black_bg)*0.07
	}
}


if global.playing_scene_black_bg > 0
{
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(xx,yy,xx+xxx,yy+global.playing_scene_black_bg*obj_camera.v_y/720,0)
draw_rectangle(xx,yy+yyy,xx+xxx,yy+yyy-global.playing_scene_black_bg*obj_camera.v_y/720,0)
press_f_guide ++
	if press_f_guide > 220
	{
	press_f_guide_alpha += (1 - press_f_guide_alpha)*0.1
	}
	
	if press_f_guide_alpha > 0
	{	
	var text_scale = 25
	var shape_scale = 38

	var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
	var yy2 = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-30*camera_yscale

	if global.waiting_o_p_chat = 1 || global.choice_choosed_already = 0
	{
	var text = "Press F to next"
		if global.language = 1
		{
		text = "F키를 눌러 다음으로 넘어갑니다"
		}
		
		if keyboard_check_pressed(ord("F"))
		{
		press_f_guide = 0
		press_f_guide_alpha = 0
		}
	}
	else
	{
		if global.choice_choosed_already = 1
		{
		var text = "Waiting the other player..."
			if global.language = 1
			{
			text = "다른 플레이어 기다리는 중..."
			}
		}
	}
	
	draw_text_kl_scale(xx2-camera_xscale*20,yy2-40*camera_yscale,text,640*camera_yscale,99999,press_f_guide_alpha,c_white,0,1,ko_80,(text_scale/shape_scale)*camera_xscale*0.0125*20,(text_scale/shape_scale)*camera_yscale*0.0125*20,0)
	}
}







