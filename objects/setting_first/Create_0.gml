/// @description Insert description here
// You can write your code in this editor
instance_destroy(BT_setting)
var win_hei = (window_get_height()/(720*(global.mobile+1)))

var camera_yscale = (obj_camera.v_y/720)*win_hei

instance_create(0,180*camera_yscale,enter_map_name)

var a = instance_create(0,300*camera_yscale,BT_setting)
a.a = 0

var a = instance_create(0,420*camera_yscale,BT_setting)
a.a = 1

var a = instance_create(0,510*camera_yscale,BT_setting)
a.a = 10

var a = instance_create(0,580*camera_yscale,BT_setting)
a.a = 11


des = 0
scale = 0

ty = 370*camera_yscale
t_ty = 370*camera_yscale
