///set_potion_buff()
if global.inhand_item_type = spr_potion_only && global.knocked_out <= 0
{

if global.inhand_item = 0
{
global.hp += 2
global.potion_cool_time = 60
}

if global.inhand_item = 1
{
global.hp += 4
global.potion_cool_time = 40
}

if global.inhand_item = 2
{
global.hp += 1
global.potion_cool_time = 8
}

if global.inhand_item = 3
{
global.de_poisoning += 60
global.potion_cool_time = 60
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 4
{
global.poisoning = 0
global.potion_cool_time = 8
}

if global.inhand_item = 5
{
global.de_radiation += 60
global.potion_cool_time = 60
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 6
{
global.radiation = 0
global.potion_cool_time = 8
}

if global.inhand_item = 7
{
global.plus_damage += 60
global.potion_cool_time = 10
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 8
{
global.plus_swing_speed += 60
global.potion_cool_time = 10
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 9
{
global.keep_healing += 5
global.potion_cool_time = 30
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 10
{
obj_camera.setting_blind = 1;
global.night_vision += 120
global.potion_cool_time = 20
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 11
{
global.plus_speed += 60
global.potion_cool_time = 60
	if co_op_code.is_server = true
	{
	player.alarm[0] = 1
	}
	else
	{
	player_co_op.alarm[0] = 1
	}
}

if global.inhand_item = 12
{
global.o2 += 8
global.potion_cool_time = 8
}

if global.inhand_item = 13
{
global.ignore_oxygen += 120
global.potion_cool_time = 30
}

if global.inhand_item = 14
{
global.ignore_hp += 120
global.ignore_oxygen += 120
global.potion_cool_time = 170
}

if global.inhand_item = 15
{
global.stemina += 3
global.potion_cool_time = 10
}

if global.inhand_item = 16
{
global.poisoning += 20
global.stemina += 2
global.potion_cool_time = 10
}

if global.inhand_item = 17
{
	for(var i = 0; i < 9999; i++)
	{
	instance_activate_all()
	var room_size_32 = room_width/32
	randomize()
	var _random_x = irandom_range(0,room_size_32) * 32
	var room_size_32 = room_width/32
	randomize()
	var _random_y = irandom_range(0,room_size_32) * 32
		
		if position_meeting(_random_x,_random_y,fl_parents) && !place_meeting(_random_x,_random_y,all_blocks_parents)
		{
			if co_op_code.is_server = true
			{
			player.x = _random_x;
			player.y = _random_y;
			global.saving_data = 0;
			global.potion_cool_time = 10;
			obj_camera.setting_blind = 1;
			break;
			}
			else
			{
			player_co_op.x = _random_x;
			player_co_op.y = _random_y;
			global.saving_data = 0;
			global.potion_cool_time = 10;
			obj_camera.setting_blind = 1;
			break;
			};
		};
	};
};



if global.inhand_item = 18
{
global.shining_self = 180
global.potion_cool_time = 40;
}

if global.inhand_item = 19
{
global.hp += 1
global.stemina ++
}


inventory_item_sub(asset_get_index("item2000"+string(global.inhand_item+1)),1,0)

var sound_effect_ = audio_play_sound(potion_drink,1,false)
audio_sound_gain(sound_effect_,0.67*global.master_volume*global.sfx_volume*global.scene_volume,0)


}