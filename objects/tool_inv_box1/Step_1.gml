/// @description 키보드로 인벤토리 스왑핑

if global.chat_activity = false
{
	if global.knocked_out = 0 && global.do_not_move = 0 && instance_number(pl_inhand) > 0
	{
		if pl_inhand.cool_time = 0
		{
			for(var i = 1; i < 10; i++)
			{
				if keyboard_check_pressed(ord(string(i)))
				{
				global.tool_inv_box_choose = i
					if global.tool_inv_box_choose = box_num
					{
					var sf_ef = audio_play_sound(button,1,false)
					audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
					}
				}
			}
		}
	}
}