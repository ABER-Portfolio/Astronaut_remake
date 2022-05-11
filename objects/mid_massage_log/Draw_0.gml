/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var xxx = camera_get_view_width(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720

var text_scale = 0.4

draw_sprite_ext(sprite_index,image_index,xx+xxx*0.5,yy+(camera_yscale*180),300*camera_xscale,25*camera_yscale*text_height,0,c_white,image_alpha-0.4)
draw_text_kl_scale(xx+xxx*0.5-camera_xscale*278,yy+(camera_yscale*180)+5*camera_yscale,string(message),camera_xscale*800,-1,image_alpha,c_white,-1,-1,ko_80,camera_xscale*text_scale/1.3/1.5,camera_xscale*text_scale/1.3/1.5,0)

draw_sprite_ext(info_icon,0,xx+xxx*0.5-camera_xscale*250,yy+(camera_yscale*140),camera_xscale,camera_yscale,0,c_white,image_alpha-0.1)

if drawing_mode = 1
{
draw_sprite_ext(info_icon,1,xx+xxx*0.5-camera_xscale*180,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_sprite_ext(info_icon,2,xx+xxx*0.5-camera_xscale*120,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_sprite_ext(info_icon,3,xx+xxx*0.5-camera_xscale*60,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_sprite_ext(info_icon,4,xx+xxx*0.5,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha-0.1)
}

if drawing_mode = 2
{
draw_sprite_ext(info_icon,5,xx+xxx*0.5-camera_xscale*180,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_sprite_ext(info_icon,7,xx+xxx*0.5-camera_xscale*100,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
}

if drawing_mode = 3
{
draw_text_kl_scale(xx+xxx*0.5-camera_xscale*160,yy+(camera_yscale*220),"Iron hammer",camera_xscale*800,-1,image_alpha,c_white,-1,0,ko_80,camera_xscale*text_scale/1.3*0.4,camera_xscale*text_scale/1.3*0.4,0)
draw_sprite_ext(info_icon,9,xx+xxx*0.5-camera_xscale*160,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
}

if drawing_mode = 4
{
draw_sprite_ext(info_icon,5,xx+xxx*0.5-camera_xscale*180,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_sprite_ext(info_icon,7,xx+xxx*0.5-camera_xscale*100,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
}

if drawing_mode = 5
{
draw_sprite_ext(info_icon,6,xx+xxx*0.5-camera_xscale*180,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
}

if drawing_mode = 6
{
draw_text_kl_scale(xx+xxx*0.5-camera_xscale*10,yy+(camera_yscale*230),"Stone",camera_xscale*800,-1,image_alpha,c_white,-1,0,ko_80,camera_xscale*text_scale/1.3*0.4,camera_xscale*text_scale/1.3*0.4,0)
draw_sprite_ext(info_icon,11,xx+xxx*0.5-camera_xscale*10,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_text_kl_scale(xx+xxx*0.5+camera_xscale*100,yy+(camera_yscale*230),"Copper ore",camera_xscale*800,-1,image_alpha,c_white,-1,0,ko_80,camera_xscale*text_scale/1.3*0.4,camera_xscale*text_scale/1.3*0.4,0)
draw_sprite_ext(info_icon,12,xx+xxx*0.5+camera_xscale*100,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
draw_text_kl_scale(xx+xxx*0.5+camera_xscale*210,yy+(camera_yscale*230),"Coal ore",camera_xscale*800,-1,image_alpha,c_white,-1,0,ko_80,camera_xscale*text_scale/1.3*0.4,camera_xscale*text_scale/1.3*0.4,0)
draw_sprite_ext(info_icon,13,xx+xxx*0.5+camera_xscale*210,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
}

if drawing_mode = 7
{
draw_sprite_ext(info_icon,8,xx+xxx*0.5-camera_xscale*180,yy+(camera_yscale*200),camera_xscale,camera_yscale,0,c_white,image_alpha)
}

if drawing_mode = 8
{
draw_sprite_ext(info_icon,10,xx+xxx*0.5-camera_xscale*170,yy+(camera_yscale*200),camera_xscale*0.9,camera_yscale*0.9,0,c_white,image_alpha)
draw_text_kl_scale(xx+xxx*0.5-camera_xscale*170,yy+(camera_yscale*220),"Workbench",camera_xscale*800,-1,image_alpha,c_white,-1,0,ko_80,camera_xscale*text_scale/1.3*0.4,camera_xscale*text_scale/1.3*0.4,0)
}