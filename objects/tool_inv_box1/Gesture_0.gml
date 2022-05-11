/// @description Insert description here
// You can write your code in this editor
if global.chat_activity = false
{
	if global.knocked_out = 0 && global.do_not_move = 0
	{
	global.tool_inv_box_choose = box_num
	var sf_ef = audio_play_sound(button,1,false)
	audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}