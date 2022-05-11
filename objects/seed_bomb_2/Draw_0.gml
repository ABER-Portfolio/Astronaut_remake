/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,2,x,floor_y+6,image_xscale*(1+abs(y-floor_y+8)/96),image_yscale*(1+abs(y-floor_y+8)/96),0,c_white,0.3*(1+abs(y-floor_y+8)/256))
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1 - abs(y-floor_y+8)/256)


if w_alpha = 0
{
draw_sprite_ext(sprite_index,3,x,y,image_xscale,image_yscale,image_angle,c_white,1)
}