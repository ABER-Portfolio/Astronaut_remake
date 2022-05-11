/// @description Insert description here
// You can write your code in this editor
if box_num = 1 && global.knocked_out = 0 && global.do_not_move = 0 && instance_number(pl_inhand) > 0 && global.inv_open = 0
{
	if pl_inhand.cool_time = 0
	{
	global.tool_inv_box_choose --
	var sf_ef = audio_play_sound(button,1,false)
	audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
		if global.tool_inv_box_choose <= 0
		{
		global.tool_inv_box_choose = 9
		}
	}
}