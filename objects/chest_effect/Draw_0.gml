/// @description Insert description here
// You can write your code in this editor
if global.shadow_setting = 0
{
draw_sprite_ext(sprite_index,0,x,floor_y,image_xscale,image_yscale,0,c_white,image_alpha-0.75-point_distance(y,0,floor_y,0)/64);
}

draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)