/// @description 창 닫기

//var aud = audio_play_sound(button,0,false)
//audio_sound_gain(aud,0.5*global.master_volume*global.sfx_volume,0)
global.inv_open = 0
var sf_ef = audio_play_sound(draged_item,1,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.3,0)
	
	if bli != 0
	{
	instance_destroy(bli)
	}

