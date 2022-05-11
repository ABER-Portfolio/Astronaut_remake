/// @description Insert description here
// You can write your code in this editor


var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

//뷰안에 있는경우만 드로우
if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{
////그림자
draw_sprite_ext(shadow___,4,x,floor_y+20*image_yscale,image_xscale*1.3,image_yscale*1.3,0,c_white,image_alpha/1.5-point_distance(y,0,floor_y,0)/32)

draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}