/// @description Insert description here
// You can write your code in this editor
des = 1
global.do_not_move2 = 0
global.scene_sync_co_op = 0
global.playing_scene = 0

var target = player
if co_op_code.is_server = false
{
target = player_co_op
}

target.cannot_move = 0