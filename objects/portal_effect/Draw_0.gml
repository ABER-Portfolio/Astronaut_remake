/// @description Insert description here
// You can write your code in this editor
if shape = 0
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
}

if shape = 1
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+180,c_white,image_alpha);
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,image_angle+180,c_white,alpha);
}

if shape = 2
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+random_angle,c_white,image_alpha);
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,image_angle+random_angle,c_white,alpha);
}


