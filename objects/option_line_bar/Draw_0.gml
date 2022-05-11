/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

draw_sprite_ext(sprite_index,0,xx+(obj_camera.v_x/1280)*340,yy,image_xscale,image_yscale,0,c_white,1)

var text_scale = 25



draw_text_kl_scale(xx+(obj_camera.v_x/1280)*170,yy+(obj_camera.v_y/720)*67,"Options",15,-1,text_alpha,c_white,0,0,ko_80,(text_scale/30)*camera_xsize*0.0125*30,(text_scale/30)*camera_ysize*0.0125*30,0)





