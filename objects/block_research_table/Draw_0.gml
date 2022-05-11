/// @description Insert description here
// You can write your code in this editor

var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

//뷰안에 있는경우만 드로우
if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{

//draw_sprite_ext(sprite_index,0,x,(y-image_yscale*6),image_xscale*1.05,image_yscale*1.43,0,c_white,image_alpha-0.55)
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if global.knocked_out = 0 && global.do_not_move = 0
{
	if auto_target > 0
	{
	draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle,c_white,auto_target)
	}
}


///////////////////////////////가우시안 그리기/////////////////////////////




if global.now_breaking_ore_id = id && draw_hp_bar > 0
{
draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,1,x-4.5,y+13,global.if_global_hp_minus/global.global_maxhp,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,2,x-4.5,y+13,global.global_hp/global.global_maxhp,1,0,c_white,draw_hp_bar)
}

//draw_text(x,y,point_distance(x,y,player.x,player.y))

}

//draw_text(x,y,string(furnacing_time)+" "+string(furnacing_ore))