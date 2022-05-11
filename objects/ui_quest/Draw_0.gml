/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0 && global.drawing_cancle_ui = 0 && global.inv_open = 0 && global.black_blind = 0 && global.playing_scene = 0 && obj_camera.scene_cancle_cooltime > 4
{
var xx__ = camera_get_view_x(view_camera[0])
var yy__ = camera_get_view_y(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])
var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720

var _draw_x = xx__+_xxx-camera_xscale*40
if global.draw_minimap = 0
{
var _draw_y = yy__+camera_xscale*(45+170+96)
}
else
{
var _draw_y = yy__+camera_xscale*(22+27+96)
}

draw_sprite_ext(sprite_index,0,_draw_x,_draw_y,camera_xscale,camera_yscale,0,c_white,1)
draw_sprite_ext(sprite_index,messgae_alarm_index,_draw_x,_draw_y,effect_scale*camera_xscale,effect_scale*camera_yscale,0,c_white,1)
}