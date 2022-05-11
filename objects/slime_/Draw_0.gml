/// @description Insert description here
// You can write your code in this editor
if global.shadow_setting = 0
{
draw_sprite_ext(sp_slime_shadow,0,floor(x),floor(floor_y+image_yscale*9),image_xscale,image_yscale*0.96,0,c_black,(image_alpha/2.75)-((point_distance(x,y,x,floor_y))*0.02))
}

draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if alpha_slime = -1
{
draw_sprite_ext(sprite_index,image_index+4,floor(x),floor(y),image_xscale,image_yscale,0,c_white,1)
}
else
{
draw_sprite_ext(sprite_index,image_index+4,floor(x),floor(y),image_xscale,image_yscale,0,c_white,1)
}






if global.drawing_cancle_ui = 0
{
if draw_hp = 1
{
alpha += (1.01 - alpha)/7
draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,alpha)

draw_sprite_ext(sprite156,1,x-4.5,y+13,hp_t/max_hp,1,0,c_white,alpha)

draw_sprite_ext(sprite156,2,x-4.5,y+13,hp/max_hp,1,0,c_white,alpha)
}
else
{
alpha += (-0.01 - alpha)/7
}
}