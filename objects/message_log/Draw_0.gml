/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720

var text_scale = 0.21

if instance_number(destroy_map) > 0
{
draw_sprite_ext(sprite_index,image_index,xx,yy-(ty/1.5*camera_yscale*30),-text_length*11*camera_xscale/1.5,30*camera_yscale/1.5,0,c_white,alpha)
draw_text_kl_scale(xx+8*camera_xscale,yy-(ty/1.5*camera_yscale*30)+5*camera_yscale,string(message),camera_xscale*30*text_scale,-1,alpha+0.52,c_white,-1,-1,ko_80,camera_xscale*text_scale/1.3/1.5,camera_xscale*text_scale/1.3/1.5,0)
}
else
{
draw_sprite_ext(sprite_index,image_index,xx,yy-(ty*camera_yscale*30),-text_length*11*camera_xscale,30*camera_yscale,0,c_white,alpha)
draw_text_kl_scale(xx+8*camera_xscale,yy-(ty*camera_yscale*30)+5*camera_yscale,string(message),camera_xscale*30*text_scale,-1,alpha+0.52,c_white,-1,-1,ko_80,camera_xscale*text_scale/1.3,camera_xscale*text_scale/1.3,0)
}