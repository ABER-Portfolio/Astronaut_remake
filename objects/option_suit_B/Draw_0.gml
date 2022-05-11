/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(sprite_index,3,x+(global.suit_blue/255*90),y,image_xscale*1.5,image_yscale*1.5,image_angle,c_white,image_alpha)


var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38


draw_text_kl_scale(x+(obj_camera.v_x/1280)*100,y,floor(global.suit_blue),50,-1,1,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*13,(text_scale/shape_scale)*camera_ysize*0.0125*13,0)
//draw_text(30,30,string(x)+","+string(y))