/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


var o_x = x
var o_y = y


//뷰안에 있는경우만 드로우
if (o_x > xx-global.chunk_size*100&& o_x < xxx+global.chunk_size*100 && o_y > yy-global.chunk_size*100 && o_y < yyy+global.chunk_size*100)
{
inview = true
}
else
{
inview = false
}

if inview = true
{
if instance_number(BG_blind) = 0
{
	var _left_m = position_meeting(x-32,y,paint_block)
	var _right_m = position_meeting(x+32,y,paint_block)
	
	var _top_m = position_meeting(x,y-32,paint_block)
	var _bottom_m = position_meeting(x,y+32,paint_block)
	
	var _left_top_m = position_meeting(x-32,y-32,paint_block)
	var _left_bottom_m = position_meeting(x-32,y+32,paint_block)
	
	var _right_top_m = position_meeting(x+32,y-32,paint_block)
	var _right_bottom_m = position_meeting(x+32,y+32,paint_block)
	
	if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && _right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && _left_bottom_m && _right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && !_left_bottom_m && _right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && _right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && !_right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && _right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && !_left_bottom_m && _right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && _left_bottom_m && !_right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && _right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+3,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && !_left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+3,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && _left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+3,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && !_right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+3,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+4,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if !_left_m && !_right_m && !_top_m && !_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+5,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if !_left_m && _right_m && !_top_m && !_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+6,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if !_left_m && !_right_m && _top_m && !_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+6,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && !_top_m && !_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+6,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if !_left_m && !_right_m && !_top_m && _bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+6,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if !_left_m && _right_m && _top_m && !_bottom_m && _right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+7,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && !_right_m && _top_m && !_bottom_m && _left_top_m
	{
	draw_sprite_ext(sprite_index,image_index+7,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && !_top_m && _bottom_m && _left_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+7,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if !_left_m && _right_m && !_top_m && _bottom_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+7,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if !_left_m && !_right_m && _top_m && _bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+8,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && !_top_m && !_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+8,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && _right_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+9,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && _left_top_m && _right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+9,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+9,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && _left_bottom_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+9,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && _right_bottom_m && !_right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+10,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && !_left_top_m && _right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+10,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && !_left_bottom_m && _left_top_m
	{
	draw_sprite_ext(sprite_index,image_index+10,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && !_right_bottom_m && _left_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+10,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && !_right_bottom_m && _right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+11,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && _left_top_m && !_right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+11,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && _left_bottom_m && !_left_top_m
	{
	draw_sprite_ext(sprite_index,image_index+11,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && _right_bottom_m && !_left_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+11,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && !_right_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+12,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && !_left_top_m && !_right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+12,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+12,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && !_left_bottom_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+12,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if !_left_m && _right_m && _top_m && !_bottom_m && !_right_top_m
	{
	draw_sprite_ext(sprite_index,image_index+13,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && !_right_m && _top_m && !_bottom_m && !_left_top_m
	{
	draw_sprite_ext(sprite_index,image_index+13,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
	else if _left_m && !_right_m && !_top_m && _bottom_m && !_left_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+13,x,y,image_xscale,image_yscale,180,c_white,image_alpha)
	}
	else if !_left_m && _right_m && !_top_m && _bottom_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+13,x,y,image_xscale,image_yscale,270,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_bottom_m && !_right_top_m && _left_top_m && _right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+14,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_bottom_m && _right_top_m && !_left_top_m && !_right_bottom_m
	{
	draw_sprite_ext(sprite_index,image_index+14,x,y,image_xscale,image_yscale,90,c_white,image_alpha)
	}
}
}