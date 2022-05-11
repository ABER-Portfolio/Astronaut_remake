/// @description Insert description here
// You can write your code in this editor
global.server_open = true
instance_create(0,0,BG_blind)
BG_title.alarm[3] = 2
is_server = true;
instance_destroy(BT_title)