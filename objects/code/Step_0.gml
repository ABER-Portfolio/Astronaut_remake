depth = -room_width*2.6

var time_shaped = floor(global.time/3333)
var min_cal = floor((time_shaped - floor(time_shaped))*60)
global.realtime_h = time_shaped
global.realtime_m = min_cal

if global.co_op_mode = 0 && instance_number(player) > 0
{
global.choice_choosed_already_co_op = 1
global.waiting_o_p_chat = 1
}


if instance_number(player) > 0 && global.playing_scene = 0 && global.black_blind = 0
{
	var target = global.safe_zone_origin
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target = global.safe_zone_co_op
	}

	if target = 0 && safezone_warning_message = 0
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "Out of the safe zone"
		if global.language = 1
		{
		_text_bar.text = "안전 지대를 벗어 났습니다"
		}
	safezone_warning_message = 1
	}

	if target = 1
	{
	safezone_warning_message = 0
	}


	var target = global.in_monument_now
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target = global.in_monument_now_co_op
	}


	if target = 1 && monument_warning_message = 0
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "Approached the danger zone"
		if global.language = 1
		{
		_text_bar.text = "위험 지역에 접근 했습니다"
		}
	monument_warning_message = 1
	}

	if target = 0
	{
	monument_warning_message = 0
	}
}





global.sprinkler_water_speed += 1
if global.sprinkler_water_speed > 1600
{
global.sprinkler_water_speed = 0
}


if co_op_code.is_server = false && global.enable_co_op_save = 0 && fps_real < 60
{
global.saving_data = 0
}





if global.n_room = 3
{
global.biome_real = "normal"
	if global.knocked_out = 0 && global.do_not_move = 0 && (global.o2 < global.max_o2)
	{
	global.o2 += 1
	add_o_exp(0.6)

	var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
		var draw_damaged_value = instance_create(target_.x,target_.y,draw_damage)
		draw_damaged_value.draw_healing = 2
		draw_damaged_value.depth = target_.depth-1
		draw_damaged_value.damage = 10
	}
}




if instance_number(player) > 0 && global.water_wave_enable = 0
{
	for(var i = 0; i < (room_width/32); i++)
	{
	instance_create(-128+192*i,0,obj_water_wave)
	}
global.water_wave_enable = 1
}


global.check_water_wave ++

if global.check_water_wave > 192
{
instance_create(-128,0,obj_water_wave)
global.check_water_wave = 0
}



if global.revived_now > 0
{
global.revived_now -= 0.05
}

if global.revived_now < 0
{
global.revived_now = 0
}






light_scaling_time++

if light_scaling_time > 80
{
light_scaling_++
light_scaling_time = 0
}

if light_scaling_ > 1
{
light_scaling_ = 0
}

if light_scaling_ = 0
{
global.light_scaling += 0.001
}
else
{
global.light_scaling -= 0.001
}





light_bright_time++

if light_bright_time > 80
{
light_bright_++
light_bright_time = 0
}

if light_bright_ > 1
{
light_bright_ = 0
}

if light_bright_ = 0
{
global.light_bright -= 0.0016
}
else
{
global.light_bright += 0.0016
}





if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	x = player_co_op.x
	y = player_co_op.y
	}
}


if global.rainy = 0
{
global.t_wind_dir = 0
}

global.wind_dir += (global.t_wind_dir - global.wind_dir)*0.01;


if global.stemina_min != 0
{
global.stemina += global.stemina_min
global.stemina_leveling -= global.stemina_min
global.stemina_min = 0
}


if global.nickname = ""
{
global.nickname = "Unknown"
}

if global.n_room = 1 && co_op_code.is_server = true
{
global.respawn_x = global.room_size*0.5
global.respawn_y = global.room_size*0.5
	if global.last_x = -1
	{
	global.last_x = global.respawn_x
	global.last_y = global.respawn_y
	}
}




if global.rainy = 1
{
	if global.n_room > 1
	{
	rain_blind += (0 - rain_blind)*0.0042
	raining_sound_ef += ((1 - global.cave_floor*0.73) - raining_sound_ef)*0.02
		if audio_is_playing(rain_sound_effect)
		{
		audio_sound_gain(_rain_sf,raining_sound_ef*global.master_volume*global.sfx_volume*rain_blind,0)
		}
	}
	
	if (global.biome_real = "ice" || global.biome_real = "bloody_ice" || global.biome_real = "polluted_ice")
	{
	rain_blind += (0.5 - rain_blind)*0.0042
	raining_sound_ef += (0 - raining_sound_ef)*0.02
		if audio_is_playing(rain_sound_effect)
		{
		audio_sound_gain(_rain_sf,raining_sound_ef*global.master_volume*global.sfx_volume*rain_blind,0)
		}
	}
	else
	{
	rain_blind += (1 - rain_blind)*0.0042
	raining_sound_ef += (1 - raining_sound_ef)*0.02
		if !audio_is_playing(rain_sound_effect)
		{
		_rain_sf = audio_play_sound(rain_sound_effect,0,false)
		audio_sound_gain(_rain_sf,raining_sound_ef*global.master_volume*global.sfx_volume*rain_blind,0)
		}
		else
		{
		audio_sound_gain(_rain_sf,raining_sound_ef*global.master_volume*global.sfx_volume*rain_blind,0)
		}
	}
}
else
{
rain_blind += (0 - rain_blind)*0.0042
}






if instance_number(co_op_code) > 0 && instance_number(player) > 0
{
	if global.killed_scientist = 2
	{
	chat_up("Beware! other astronauts are coming",0);
	global.killed_scientist = 3
	monster_creator.alarm[0] = 1200
	}
}




//////////////////////////////////////////자동세이브/////////////////////////////////////////////////////////
if global.co_op_mode = 0
{
	if global.a_save != 0 && instance_number(player) > 0 && instance_number(option_line_bar) = 0
	{
		auto_save_time ++
		if auto_save_time > global.a_save*3600//*60
		{
		alarm[8] = 1
		auto_save_time = 0
		}
	}
	else
	{
	auto_save_time = -1
	}
}
else
{
	if global.a_save != 0 && instance_number(player) > 0 && instance_number(option_line_bar) = 0 && co_op_code.is_server = true
	{
		auto_save_time ++
		if auto_save_time > global.a_save*3600*60
		{
		alarm[8] = 1
		auto_save_time = 0
		}
	}
	else
	{
	auto_save_time = -1
	}
}


/////////////////////////////////////////////모래바람 효과///////////////////////////////////////////////////
if global.biome_real = "normal"
{
t_dust_effect_alpha1 = -1
t_dust_effect_alpha2 = -1
}
dust_effect_alpha1 += (t_dust_effect_alpha1 - dust_effect_alpha1)*0.05
dust_effect_alpha2 += (t_dust_effect_alpha2 - dust_effect_alpha2)*0.01




/////////////////////////////////////////불에탐//////////////////////////////////////////
if global.burning > 0
{
	if co_op_code.is_server = true
	{
	var ef_fire = instance_create(player.x+irandom_range(-4,4),player.y+irandom_range(-4,8),fire_noburn)
	var scale = irandom_range(150,100)/800
	ef_fire.image_xscale = scale
	ef_fire.image_yscale = scale
	ef_fire.vspeed = -(irandom_range(400,800)/500)
	ef_fire.hspeed = irandom_range(-360,360)/500
	ef_fire.scale_min = irandom_range(10,50)/9000
	ef_fire.floor_y = player.y+12+irandom_range(-2,2)
	ef_fire.depth = player.depth-1
	}
	else
	{
	var ef_fire = instance_create(player_co_op.x+irandom_range(-4,4),player_co_op.y+irandom_range(-4,8),fire_noburn)
	var scale = irandom_range(150,100)/800
	ef_fire.image_xscale = scale
	ef_fire.image_yscale = scale
	ef_fire.vspeed = -(irandom_range(400,800)/500)
	ef_fire.hspeed = irandom_range(-360,360)/500
	ef_fire.scale_min = irandom_range(10,50)/9000
	ef_fire.floor_y = player_co_op.y+12+irandom_range(-2,2)
	ef_fire.depth = player_co_op.depth-1
	}
}

////////////////////////////////////////////데미지 닮//////////////////////////////////////////
if before_hp > global.hp
{
var t_obj = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	var t_obj = player_co_op
	}


var draw_damaged_value = instance_create(t_obj.x,t_obj.y,draw_damage)
draw_damaged_value.draw_healing = 0
draw_damaged_value.depth = depth-1
draw_damaged_value.damage = before_hp - global.hp
	
	
before_hp = global.hp
global.fighting_now = 1

var injured_audio = audio_play_sound(choose(injured_player1,injured_player2,injured_player3),1,false)
audio_sound_gain(injured_audio,20*global.master_volume*global.sfx_volume*global.scene_volume,1)
if global.gender != 0
{
audio_sound_pitch(injured_audio,global.gender*1.3)
}
injured_effect = 0
alarm[10] = 1
}

if instance_number(player) > 0
{

	///////////////////////////////////////////////자동 스테미나 힐///////////////////////////////////////////
	auto_stemina_heal += 5


	if global.stemina < 0
	{
	global.stemina = 0
	before_stemina = 0
	}
	
	if global.stemina < 0
	{
	global.stemina = 0 //기존 5
	}
	
	if global.stemina > global.max_stemina
	{
	global.stemina = global.max_stemina
	}

	if global.max_stemina <= 1
	{
	global.max_stemina = 5
	}
	
	if auto_stemina_heal < 0
	{
	auto_stemina_heal = 0
	}

	if before_stemina > global.stemina
	{
	auto_stemina_heal = 0
	before_stemina = global.stemina
		if instance_number(draw_hp_o2) > 0
		{
		draw_hp_o2.t_stemina_change_alpha = 100
		}
	}
}
////////////////////////////////////////////사망///////////////////////////////////////////////
if global.hp <= 1 && global.ignore_hp <= 0
{
	if double_knocked_out_cancle = 0
	{
	var target_ = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
	
		if global.o2 <= 1
		{
		chat_up(string(global.nickname)+" has choked",1)
		}
		else
		{
		chat_up(string(global.nickname)+" has fainted",1)
		}
		
	BT_inventory.alarm[1] = 1
	var die = audio_play_sound(died,0,false)
	audio_sound_gain(die,13*global.master_volume*global.sfx_volume*global.scene_volume,1)
	double_knocked_out_cancle = 1
		
		if global.co_op_mode = 1
		{
			if global.language = 0
			{
			var _text_bar = instance_create(x,y,draw_debug_text)
			_text_bar.text = "You have fainted. Ask another player for help"
			}
				
			if global.language = 1
			{
			var _text_bar = instance_create(x,y,draw_debug_text)
			_text_bar.text = "당신은 기절 했습니다. 다른 플레이어에게 도움을 요청 하세요"
			}
		}
	}
	
	if global.co_op_mode = 1
	{
		if revived_by_astronaut = 0 && global.knocked_out_origin > 0 && global.knocked_out_co_op > 0
		{
			if instance_number(obj_camera) > 0
			{
			obj_camera.alarm[1] = 1
			obj_camera.alarm[0] = 210
			}
		alarm[9] = 430
		revived_by_astronaut = 1
		}
	}
	else
	{
		if revived_by_astronaut = 0
		{
			if instance_number(obj_camera) > 0
			{
			obj_camera.alarm[1] = 1
			obj_camera.alarm[0] = 210
			}
		alarm[9] = 430
		revived_by_astronaut = 1
		}
	}
////////////////////////////////////////////////////
global.hp = 1
global.o2 = 1
global.knocked_out += (1 - global.knocked_out)*0.01
auto_heal = -9999
}

///////////////////////////////////////////////////////////////////////////////////////////////
if instance_number(player) > 0
{
	if global.o2 <= 1
	{
	global.o2 = 1
	}

	if global.hp > global.max_hp
	{
	global.hp = global.max_hp
	}

	if global.o2 > global.max_o2
	{
	global.o2 = global.max_o2
	}


	global.r_exp += (global.tr_exp - global.r_exp)/5
	if global.tr_exp > global.max_r_exp
	{
	global.tr_exp -= global.max_r_exp
	global.max_r_exp += 48
	global.r_exp_white = 2
	global.r_lv ++
	}

	global.o_exp += (global.to_exp - global.o_exp)/5
	if global.to_exp > global.max_o_exp
	{
	global.to_exp -= global.max_o_exp
	global.max_o_exp += 128
	global.o_exp_white = 2
	global.o_lv ++
	global.max_o2 ++
		if instance_number(player) > 0
		{
		var draw_damaged_value = instance_create(player.x,player.y,draw_damage)
		draw_damaged_value.draw_healing = 2
		draw_damaged_value.depth = player.depth-1
		draw_damaged_value.damage = 10
		}
	}
}



/////////////////////////////////////////////////////////////////

#region //물 색 변경
if instance_number(BG_blind) = 0
{
	if global.biome = 0
	{
		for(var i = 1; i < 6; i++)
		{
			if i = 1
			{
			global.w_c_alpha[i] += (1.1 - global.w_c_alpha[i])/15
			}
			else
			{
			global.w_c_alpha[i] += (-0.1 - global.w_c_alpha[i])*0.05
			}
		}
	}
	if global.biome = 1
	{
		for(var i = 1; i < 6; i++)
		{
			if i = 2
			{
			global.w_c_alpha[i] += (1.1 - global.w_c_alpha[i])/15
			}
			else
			{
			global.w_c_alpha[i] += (-0.1 - global.w_c_alpha[i])*0.05
			}
		}
	}
	if global.biome = 2
	{
		for(var i = 1; i < 6; i++)
		{
			if i = 3
			{
			global.w_c_alpha[i] += (1.1 - global.w_c_alpha[i])/15
			}
			else
			{
			global.w_c_alpha[i] += (-0.1 - global.w_c_alpha[i])*0.05
			}
		}
	}

	if global.biome = 3
	{
		for(var i = 1; i < 6; i++)
		{
			if i = 4
			{
			global.w_c_alpha[i] += (1.1 - global.w_c_alpha[i])/15
			}
			else
			{
			global.w_c_alpha[i] += (-0.1 - global.w_c_alpha[i])*0.05
			}
		}
	}

	if global.biome = 4
	{
		for(var i = 1; i < 6; i++)
		{
			if i = 5
			{
			global.w_c_alpha[i] += (1.1 - global.w_c_alpha[i])/15
			}
			else
			{
			global.w_c_alpha[i] += (-0.1 - global.w_c_alpha[i])*0.05
			}
		}
	}
	
	if global.biome = 5
	{
		for(var i = 1; i < 6; i++)
		{
			if i = 6
			{
			global.w_c_alpha[i] += (1.1 - global.w_c_alpha[i])/15
			}
			else
			{
			global.w_c_alpha[i] += (-0.1 - global.w_c_alpha[i])*0.05
			}
		}
	}
}

#endregion















