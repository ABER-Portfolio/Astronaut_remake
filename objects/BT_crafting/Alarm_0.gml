/// @description 두드리기 이벤트
// You can write your code in this editor
if global.chat_activity = false
{
	if global.inv_open = 0 || global.inv_open = 1
	{
	var sf_ef = audio_play_sound(draging_item,1,false)
	audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.3,0)
	global.inv_open = 2
	}
}