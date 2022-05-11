/// @description Insert description here
// You can write your code in this editor
if global.mobile = 0
{
var win_wid_ = (window_get_width()/1280)
}
else
{
var win_wid_ = (window_get_width()/2960)
}

var win_wid = 2 - win_wid_
var win_hei = 2 - window_get_height()/(720*(global.mobile+1))

draw_sprite_ext(sprite_index,2,floor(x),floor(y),image_xscale*win_wid,image_yscale*win_hei,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,3,floor(x),floor(y),image_xscale*win_wid,image_yscale*win_hei,image_angle,c_white,p_alpha)
draw_sprite_ext(sprite_index,4,floor(x),floor(y),image_xscale*win_wid,image_yscale*win_hei,image_angle,c_white,p_alpha)
if press = 0
{
own_menu_name = "Delete maps"
draw_sprite_ext(sprite_index,3,floor(x),floor(y),image_xscale*win_wid,image_yscale*win_hei,image_angle,c_white,w_alpha)
draw_sprite_ext(sprite_index,4,floor(x),floor(y),image_xscale*win_wid,image_yscale*win_hei,image_angle,c_white,w_alpha)
}
else
{
own_menu_name = "Cancel"
draw_sprite_ext(sprite_index,2,floor(x),floor(y),image_xscale*win_wid,image_yscale*win_hei,image_angle,c_white,w_alpha)
}

if press = 0
{
draw_text_kl_scale(x,y-128,string(own_menu_name),image_xscale*30,-1,w_alpha,c_white,0,0,ko_80,image_xscale*win_wid*0.2*0.0125*30,image_yscale*win_hei*0.2*0.0125*30,0)
}
else
{
draw_text_kl_scale(x,y-128,string(own_menu_name),image_xscale*30,-1,1-w_alpha,c_white,0,0,ko_80,image_xscale*win_wid*0.2*0.0125*30,image_yscale*win_hei*0.2*0.0125*30,0)
}