/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(pl_shadow,image_index,floor(x),floor(y),image_xscale,image_yscale,0,c_white,0.3)
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if (image_index >= 3 && image_index <= 5) || (image_index >= 9 && image_index <= 11)
{
draw_sprite_ext(spr_pickaxe,melee_kind,floor(x)-((image_xscale)/abs(image_xscale))*5,floor(y)+7,-(image_xscale/abs(image_xscale))*0.3,0.3,weapon_angle,image_blend,image_alpha)
}
else
{
draw_sprite_ext(spr_pickaxe,melee_kind,floor(x)-((image_xscale)/abs(image_xscale))*5,floor(y)+9,-(image_xscale/abs(image_xscale))*0.3,0.3,weapon_angle,image_blend,image_alpha)
}



w_alpha += (-0.01 - w_alpha)*0.1
if w_alpha > 0
{
draw_sprite_ext(pl_move_white_,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,w_alpha)
}


//draw_sprite_ext(_2x2_red,image_index,floor(x),floor(y)-5,0.5,0.5,image_angle,image_blend,image_alpha)
//draw_sprite_ext(_2x2_red,image_index,floor(x),floor(y)+12,0.5,0.5,image_angle,image_blend,image_alpha)
//draw_sprite_ext(_2x2_red,image_index,floor(x)-5,floor(y),0.5,0.5,image_angle,image_blend,image_alpha)
//draw_sprite_ext(_2x2_red,image_index,floor(x)+5,floor(y),0.5,0.5,image_angle,image_blend,image_alpha)
//draw_text(x,y,speed)

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