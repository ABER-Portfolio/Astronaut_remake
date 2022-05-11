/// @description create_buff_ui


/////////////////////////////////////게임 최적화를 위해 특정값을 전역변수에 저장////////////////////////////////////////////////////////////
global._came_vx = camera_get_view_x(view_camera[0])
global._came_vx_p_w = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])

global._came_vy = camera_get_view_y(view_camera[0])
global._came_vy_p_h = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])








///////////////////////////////////////////////////////////////////////////////////
if global.knocked_out = 0 && global.do_not_move = 0 && instance_number(player) > 0 && instance_number(BG_blind) = 0 && instance_number(pl_rocket) = 0
{


if global.potion_cool_time < 0
{
global.potion_cool_time = 0
}

if global.poisoning > 0
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
target_.image_blend = c_green

var random_cre_ef = percentage_k(10)
	if random_cre_ef = 1
	{
	var ef_fire = instance_create(target_.x+irandom_range(-4,4),target_.y+irandom_range(-4,8),fire_noburn)
	ef_fire.sprite_index = spr_poison_effect1
	var scale = irandom_range(150,100)/800
	ef_fire.image_xscale = scale
	ef_fire.image_yscale = scale
	ef_fire.vspeed = -(irandom_range(400,800)/500)
	ef_fire.hspeed = irandom_range(-360,360)/500
	ef_fire.scale_min = irandom_range(10,50)/9000
	ef_fire.floor_y = target_.y+12+irandom_range(-2,2)
	ef_fire.depth = target_.depth-1
	}
}
else
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
target_.image_blend = c_white
}

if global.plus_speed <= 0
{
global.plus_speed_mount = 1
}
else
{
global.plus_speed_mount = 0.9
}


if global.plus_speed > 0
{
	if global.slow_movement > 0
	{
	var target_ = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
	target_.image_blend = c_green
	
	global.plus_speed_percentage = 1
	}
	else
	{
	var target_ = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
	target_.image_blend = c_white
	global.plus_speed_percentage = 1.2
	}
}
else
{
	if global.slow_movement > 0
	{
	var target_ = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
	target_.image_blend = c_green
		
	global.plus_speed_percentage = 0.8
	}
	else
	{
	var target_ = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
	target_.image_blend = c_white
	global.plus_speed_percentage = 1
	}
}


if global.plus_speed > 0
{
global.plus_speed_percentage = 1.2
}
else
{
global.plus_speed_percentage = 1
}


if global.plus_damage <= 0
{
global.plus_damage_mount = 1*global.accessory_damage_plus
}
else
{
global.plus_damage_mount = 1.1*global.accessory_damage_plus
}





///o2 buff
if global.o2 <= 3.5
{
	if created_o2_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 0
	created_o2_ui_buff = 1
	}
}

if global.co_op_mode = 1 && co_op_code.is_server = false
{
	if global.safe_zone_co_op > 0
	{
		if created_safe_zone = 0
		{
		var bf = instance_create(0,0,ui_buff)
		bf.image_index = 16
		created_safe_zone = 1
		}
	}
}

if co_op_code.is_server = true || (global.co_op_mode = 0 && co_op_code.is_server = false)
{
	if global.safe_zone_origin > 0
	{
		if created_safe_zone = 0
		{
		var bf = instance_create(0,0,ui_buff)
		bf.image_index = 16
		created_safe_zone = 1
		}
	}
}


///poisoning buff
if global.poisoning > 0
{
	if created_po_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 1
	created_po_ui_buff = 1
	}
}


///burning buff
if global.burning > 0
{
	if created_bu_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 2
	created_bu_ui_buff = 1
	}
}


///radiation buff
if global.radiation > 0
{
	if created_ra_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 3
	created_ra_ui_buff = 1
	}
	
	if not audio_is_playing(radiation_sound_effect)
	{
	radi_au = audio_play_sound(radiation_sound_effect,2,false)
	}
	
	//사운드 이팩트
	if global.knocked_out = 0 && global.do_not_move = 0
	{
		if global.radiation < 10
		{
		audio_sound_gain(radi_au,(global.radiation*0.04)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
		else
		{
		audio_sound_gain(radi_au,0.4*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	else
	{
	audio_stop_sound(radi_au)
	}
}



///temperature buff
var distance_temp = point_distance(global.temperature,0,26,0)

if distance_temp > 3.5
{
	if created_te_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 4
	created_te_ui_buff = 1
	}
}




///de_poisoning buff
if global.de_poisoning > 0
{
	if created_de_po_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 6
	created_de_po_ui_buff = 1
	}
}


///de_fire buff
if global.de_fire > 0
{
	if created_de_bu_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 7
	created_de_bu_ui_buff = 1
	}
}


///de_radiation buff
if global.de_radiation > 0
{
	if created_de_ra_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 8
	created_de_ra_ui_buff = 1
	}
}


///de_cold buff
if global.de_cold > 0
{
	if created_de_co_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 9
	created_de_co_ui_buff = 1
	}
}


///night_vision buff
if global.night_vision > 0
{
	if created_nv_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 10
	created_nv_ui_buff = 1
	}
}


///ignore_oxygen buff
if global.ignore_oxygen > 0
{
	if created_de_o2_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 11
	created_de_o2_ui_buff = 1
	}
}


///night_vision buff
if global.keep_healing > 0
{
	if created_hp_healing_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 12
	created_hp_healing_ui_buff = 1
	}
}


///ignore_hp buff
if global.ignore_hp > 0
{
	if created_de_hp_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 13
	created_de_hp_ui_buff = 1
	}
}


///night_vision buff
if global.plus_speed > 0
{
	if created_movement_speed_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 14
	created_movement_speed_ui_buff = 1
	}
}


///night_vision buff
if global.plus_swing_speed > 0
{
	if created_swing_speed_ui_buff = 0
	{
	var bf = instance_create(0,0,ui_buff)
	bf.image_index = 15
	created_swing_speed_ui_buff = 1
	}
}


///////////////////////////////////////////////////////////////////////////////
}
else
{
	if instance_number(ui_buff) > 0
	{
	created_o2_ui_buff = 0
	created_po_ui_buff = 0
	created_bu_ui_buff = 0
	created_ra_ui_buff = 0
	
	created_de_po_ui_buff = 0
	created_de_bu_ui_buff = 0
	created_de_ra_ui_buff = 0
	created_de_co_ui_buff = 0
	created_nv_ui_buff = 0
	created_de_o2_ui_buff = 0
	created_de_hp_ui_buff = 0
	ui_buff.des = 1
	}
}