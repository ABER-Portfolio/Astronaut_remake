/// @description Insert description here
// You can write your code in this editor

image_speed = 0
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
room_width = 1280*camera_xscale
room_height = 720*camera_yscale

x = room_width*0.5
y = room_height*0.5

image_xscale = 0.75*camera_xscale
image_yscale = 0.75*camera_yscale
image_alpha = 0

alarm[1] = 90


var select = 3
global.select = select
can_press = select
max_can_press = 0

if instance_number(BG_blind) > 0
{
global.opening_menu = 0
instance_destroy(BG_blind)
step = 2
alarm[2] = 2
}






pressed_m_x = 0

skiping_num = 0

skiping_dir = 0