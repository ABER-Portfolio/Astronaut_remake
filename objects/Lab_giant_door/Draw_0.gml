/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(sprite_index,1,x,y+door_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if global.dev_mode > 1
{
draw_text(x,y,opened)
}