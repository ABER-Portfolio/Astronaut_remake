/// @description Insert description here
// You can write your code in this 
var xx = global._came_vx
var yy = global._came_vy

if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = (window_get_height()/(720*(global.mobile+1)))

var camera_xscale = (obj_camera.v_x/1280)*win_wid
var camera_yscale = (obj_camera.v_y/720)*win_hei


//검은 라인 그리기
draw_sprite_ext(spr_gage_bar,1,xx+camera_xscale*640,yy+ty,100,8.7*camera_yscale-scale*camera_yscale,0,c_white,0.4)