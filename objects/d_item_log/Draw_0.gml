/// @description Insert description here
// You can write your code in this editor
if global.drawing_cancle_ui = 0
{
draw_sprite_ext(sprite_index,image_index,x,y+ty,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_color(c_black)
draw_set_alpha(image_alpha)

var camera_xscale = obj_camera.v_x/1280
//var c_xscale = camera_xscale*0.75

if sprite != none_sprite
{
draw_line_width(x-34*abs(image_xscale),y,x+26*abs(image_xscale),y,64*abs(image_yscale))
draw_line_width(x-36*abs(image_xscale),y,x+28*abs(image_xscale),y,62*abs(image_yscale))
}
else
{
var _ind_length = string_length(ind)*8
draw_line_width(x-(34+_ind_length)*abs(image_xscale),y,x+(26+_ind_length)*abs(image_xscale),y,64*abs(image_yscale))
draw_line_width(x-(36+_ind_length)*abs(image_xscale),y,x+(28+_ind_length)*abs(image_xscale),y,62*abs(image_yscale))
}
draw_set_alpha(1)
draw_set_color(c_white)

if sprite != none_sprite
{
draw_sprite_ext(sprite,ind,x,y,image_xscale*1.25,image_yscale*1.25,image_angle,c_white,image_alpha)
}
else
{
draw_text_kl_scale(x,y,string(ind),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*35*image_xscale*1.25,camera_xscale*1.5*0.0125*35*image_xscale*1.25,0)
}
}
//draw_text(x,y,obj_camera.v_x/1280)