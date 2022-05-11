/// @description Insert description here
// You can write your code in this editor
instance_create(x,y,BG_blind)
obj_camera.setting_blind = 1.2
room_goto(ingame)
global.n_room = 1
instance_destroy(BT_setting)
instance_destroy(BG_title)