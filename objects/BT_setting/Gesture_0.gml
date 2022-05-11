/// @description Insert description here
// You can write your code in this editor
if can_press = 0
{
	var sf_ef = audio_play_sound(rd_1,1,false)
	audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.7,0)
	if instance_number(setting_first) > 0
	{
		if a != 10
		{
		b++
			if a = 0
			{
				if b > 4
				{
				b = 0
				}
			}
			else
			{
				if b > 2
				{
				b = 0
				}
			}
		}
	}

	if a = 10
	{
	can_press = 1
	alarm[1] = 120
	BT_setting.des = 1
	setting_first.des = 1
	enter_map_name.des = 1
	}
	
	if a = 11
	{
	room_goto(title_room)
	global.server_open = false
	global.co_op_mode = 0
	instance_destroy(BT_setting)
	}
	
	if a = 12
	{
	co_op_code.alarm[5] = 1
	}
}