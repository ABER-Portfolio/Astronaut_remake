/// @description Insert description here
// You can write your code in this editor
draw_self()
if watered_alpha > 0
{
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,watered_alpha*0.5)
}
if watered_alpha_crimson > 0
{
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,watered_alpha_crimson*0.5)
}
if watered_alpha_polluted > 0
{
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle,c_white,watered_alpha_polluted*0.5)
}

//draw_text(x,y,string(watered_alpha)+" / "+string(watered_alpha_crimson)+" / "+string(watered_alpha_polluted))