/// @description Insert description here
// You can write your code in this editor
if global.playing_scene = 0 && global.black_blind = 0 && obj_camera.scene_cancle_cooltime > 2
{
global.got_message = 0
global.open_quest_line++


var _text_bar = instance_create(x,y,draw_debug_text)
_text_bar.text = "Unfinished function"
	if global.language = 1
	{
	_text_bar.text = "미완성 기능"
	}

	if global.open_quest_line > 1
	{
	global.open_quest_line = 0
	}
}