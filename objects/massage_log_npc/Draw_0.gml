/// @description Insert description here
// You can write your code in this editor
var camera_xscale = obj_camera.v_x/1280

if max_chat_page >= chat_page
{
draw_sprite_ext(sprite_index,image_index,x,y+ty,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_color(c_black)
draw_set_alpha(image_alpha)

var _ind_length = string_length(text[chat_page])*8
draw_line_width(x-(34+_ind_length)*abs(image_xscale),y,x+(26+_ind_length)*abs(image_xscale),y,64*abs(image_yscale))
draw_line_width(x-(36+_ind_length)*abs(image_xscale),y,x+(28+_ind_length)*abs(image_xscale),y,62*abs(image_yscale))


draw_text_kl_scale(x,y,string(text[chat_page]),camera_xscale*1.5*70,-1,1,c_white,0,0,ko_80,camera_xscale*1.5*0.0125*35*image_xscale*1.25,camera_xscale*1.5*0.0125*35*image_xscale*1.25,0)
}
//draw_sprite_ext(info_icon,0,xx+xxx*0.5-camera_xscale*250,yy+(camera_yscale*140),camera_xscale,camera_yscale,0,c_white,image_alpha-0.1)
