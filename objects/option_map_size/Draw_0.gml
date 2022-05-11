/// @description Insert description here
// You can write your code in this editor


var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


var text_scale = 25
var shape_scale = 38


draw_sprite_ext(sprite_index,pressed,x,y,image_xscale,image_yscale,0,c_white,1)

if pressed = 0
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*300,y,"Medium",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}

if pressed = 1
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*300,y,"Large",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}

if pressed = 2
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*300,y,"Larger",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}

if pressed = 3
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*300,y,"Largest",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}

if pressed = 4
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*300,y,"Small",50,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}




if global.language = 0
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*313,y-(obj_camera.v_y/720)*34,"Map size",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}
if global.language = 1
{
draw_text_kl_scale(x-(obj_camera.v_x/1280)*313,y-(obj_camera.v_y/720)*34,"맵 크기",50,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)
}


//draw_sprite_ext(pl_move,0,xx+(obj_camera.v_x/1280)*1100,yy+((obj_camera.v_y/720)*1.02)*first_text_space+(setting_num*text_space),camera_xsize*2.5,camera_ysize*2.5,0,global.img_bl_col,1)