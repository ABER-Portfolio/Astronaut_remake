/// @description Insert description here
// You can write your code in this editor

var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

//뷰안에 있는경우만 드로우
if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{

draw_sprite_ext(spr_bomb_timer,0,x,y,site_scale,site_scale,0,c_white,time*0.005)
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if time%5 = 1
{
draw_sprite_ext(sprite_index,8,x,y,image_xscale,image_yscale,0,c_white,time)
}


///////////////////////////////가우시안 그리기/////////////////////////////



}