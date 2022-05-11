/// @description Insert description here
// You can write your code in this editor

var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

var img_xscale = image_xscale
var img_yscale = image_yscale

var o_x = x
var o_y = y

var img_angle = image_angle
var img_blend = image_blend
var img_alpha = image_alpha
var img_index = image_index

var img_yscale_64 = img_yscale*64
var img_yscale_96 = img_yscale*96

//뷰안에 있는경우만 드로우
if (o_x > xx-global.chunk_size*100&& o_x < xxx+global.chunk_size*100 && o_y > yy-global.chunk_size*100 && o_y < yyy+global.chunk_size*100)
{
draw_sprite_ext(tiles,img_index,floor(o_x),floor(o_y),img_xscale,img_yscale,img_angle,img_blend,img_alpha)
draw_set_alpha(1)



if instance_number(BG_blind) = 0
{
////////////////////./.

if not place_meeting(o_x,o_y+(img_yscale_64),fl_parents)
{
	
	if global.floor_height = 0
	{
	draw_sprite_ext(tiles,img_index+1,o_x,o_y+(img_yscale_64),img_xscale,img_yscale,img_angle,c_white,img_alpha)
	}

/////////////////////////////////////////////////////////////////////////////////////
if global.floor_connection = 0 || global.floor_height != -1
{
	if not place_meeting(o_x+(img_xscale*64),o_y,fl_parents)
	{
		if not place_meeting(o_x,o_y+(img_yscale_64),fl_parents)
		{
		draw_sprite_ext(tiles,2,o_x,o_y+(img_yscale_64),-img_xscale,img_yscale,img_angle,c_white,img_alpha)
		}
	}

	if not place_meeting(o_x-(img_xscale*64),o_y,fl_parents)
	{
		if not place_meeting(o_x,o_y+(img_yscale_64),fl_parents)
		{
		draw_sprite_ext(tiles,2,o_x,o_y+(img_yscale_64),img_xscale,img_yscale,img_angle,c_white,img_alpha)
		}
	}
}
/////////////////////////////////////////////////////////////////////////////////////
	if global.floor_sea = 0
	{
		if !place_meeting(o_x,o_y+(img_yscale_64),fl_parents)
		{
		draw_sprite_ext(spr_water_shake,0,o_x,o_y+(img_yscale_96),img_xscale,-water_shake,angle,$BDE59D2D,global.w_c_alpha[1]-0.5)
		draw_sprite_ext(spr_water_shake,0,o_x,o_y+(img_yscale_96),img_xscale,-water_shake,angle,$E34537B2,global.w_c_alpha[2]-0.5)
		draw_sprite_ext(spr_water_shake,0,o_x,o_y+(img_yscale_96),img_xscale,-water_shake,angle,$CF6F2255,global.w_c_alpha[3]-0.5)
		draw_sprite_ext(spr_water_shake,0,o_x,o_y+(img_yscale_96),img_xscale,-water_shake,angle,$D6FFCF80,global.w_c_alpha[4]-0.5)
		draw_sprite_ext(spr_water_shake,0,o_x,o_y+(img_yscale_96),img_xscale,-water_shake,angle,$D6FCCE80,global.w_c_alpha[5]-0.5)

		draw_sprite_ext(spr_water_line,0,o_x,o_y+(-water_shake*32)+img_yscale_96,img_xscale,img_yscale,angle,c_white,0.9)
		}
	}
}


if global.floor_connection = 0
{
	if not place_meeting(o_x,o_y+(img_yscale_64),fl_parents)
	{
	draw_sprite_ext(tiles,3+(img_index-global.floor_spr_num)*0.5,o_x,y,(img_xscale),img_yscale,img_angle+180,c_white,0.6)
	}
	
	if not place_meeting(o_x,o_y-(img_yscale_64),fl_parents)
	{
	draw_sprite_ext(tiles,3+(img_index-global.floor_spr_num)*0.5,o_x,y,(img_xscale),img_yscale,img_angle,c_white,0.6)
	}

	if not place_meeting(o_x+(img_xscale*64),o_y,fl_parents)
	{
	draw_sprite_ext(tiles,3+(img_index-global.floor_spr_num)*0.5,o_x,y,(img_xscale),img_yscale,img_angle-90,c_white,0.6)
	}

	if not place_meeting(o_x-(img_xscale*64),o_y,fl_parents)
	{
	draw_sprite_ext(tiles,3+(img_index-global.floor_spr_num)*0.5,o_x,y,(img_xscale),img_yscale,img_angle+90,c_white,0.6)
	}



//////////////////////////////////////////////////////////////////////////////

	if not place_meeting(o_x,o_y+(img_yscale_64),fl_parents)
	{
	draw_sprite_ext(tiles,1,o_x,o_y,(img_xscale),img_yscale,img_angle+180,c_white,1)
	}

	if not place_meeting(o_x,o_y-(img_yscale_64),fl_parents)
	{
	draw_sprite_ext(tiles,1,o_x,o_y,(img_xscale),img_yscale,img_angle,c_white,1)
	}

	if not place_meeting(o_x+(img_xscale*64),o_y,fl_parents)
	{
	draw_sprite_ext(tiles,1,o_x,o_y,(img_xscale),img_yscale,img_angle-90,c_white,1)
	}

	if not place_meeting(o_x-(img_xscale*64),o_y,fl_parents)
	{
	draw_sprite_ext(tiles,1,o_x,o_y,(img_xscale),img_yscale,img_angle+90,c_white,1)
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}






}