/// @description Insert description here
// You can write your code in this editor
x = round(x)
y = round(y)

//해상도
var _width = display_get_width();
var _height = display_get_height();
//window_set_size(_width,_height);

//surface_resize(application_surface,_width*0.5,_height*0.5);
//sprite_delete(screenshot)




if !audio_is_playing(bgm_roads) && !audio_is_playing(bgm_warpath) && !audio_is_playing(bgm_monuments) && !audio_is_playing(bgm_boss)
{
automatic_bgm_replay_time ++
}

if automatic_bgm_replay_time > 1200
{
global.bgm_roads_ = audio_play_sound(bgm_roads,3,false)
automatic_bgm_replay_time = 0
}
audio_sound_gain(global.bgm_roads_,global.bgm_roads_volume*global.scene_volume*global.master_volume,0)


if global.fighting_now = 0 && global.in_monument_now = 0 && global.flower_boss_raid_start = 0
{
global.bgm_roads_volume += (1 - global.bgm_roads_volume)*0.001
}
else
{
global.bgm_roads_volume += (0 - global.bgm_roads_volume)*0.001
}


if global.fighting_now = 1 && !audio_is_playing(bgm_warpath)
{
global.bgm_warpath_ = audio_play_sound(bgm_warpath,3,false)
global.fighting_now = 0
}
audio_sound_gain(global.bgm_warpath_,global.bgm_warpath_volume*global.scene_volume*global.master_volume,0)


if global.in_monument_now = 1 && !audio_is_playing(bgm_monuments)
{
global.bgm_monuments_ = audio_play_sound(bgm_monuments,3,false)
}
audio_sound_gain(global.bgm_monuments_,global.bgm_monuments_volume*global.scene_volume*global.master_volume,0)



if global.fighting_now = 1 && global.flower_boss_raid_start = 0
{
global.bgm_warpath_volume += (1 - global.bgm_warpath_volume)*0.001
}
else
{
global.bgm_warpath_volume += (0 - global.bgm_warpath_volume)*0.001
}

if global.in_monument_now = 1 && global.fighting_now = 0 && global.flower_boss_raid_start = 0
{
global.bgm_monuments_ += (1 - global.bgm_monuments_)*0.001
}
else
{
global.bgm_monuments_ += (0 - global.bgm_monuments_)*0.001
}




if global.flower_boss_raid_start = 1 && !audio_is_playing(bgm_boss)
{
global.boss_bgm_ = audio_play_sound(bgm_boss,3,true)
}
audio_sound_gain(global.boss_bgm_,global.boss_bgm_volume*global.scene_volume*global.master_volume,0)

if global.flower_boss_raid_start = 1
{
global.boss_bgm_volume += (0.9 - global.boss_bgm_volume)*0.001
}
else
{
global.boss_bgm_volume += (0 - global.boss_bgm_volume)*0.001
}



if instance_number(option_line_bar) > 0 || global.inv_open > 0 || instance_number(player) = 0
{
global.scene_volume += (0.3 - global.scene_volume)*0.001
}
else
{
global.scene_volume += (1 - global.scene_volume)*0.001
}










if global.view_angle_ != 0
{
global.view_angle_ += (0 - global.view_angle_)*0.1

	if abs(global.view_angle_) < 0.001
	{
	global.view_angle_ = 0
	}
}

camera_set_view_angle(view_camera[0],global.view_angle_)


if instance_number(pl_rocket) > 0
{
	if pl_rocket.blind_ = 0
	{
	setting_blind += (0 - setting_blind)/20
	}
}
else
{
setting_blind += (0 - setting_blind)/20
}

bomb_blind += (0 - bomb_blind)/20
hurted_alpha += (0 - hurted_alpha)*0.1


if global.black_blind > 0
{
	if b_blind < 1.3
	{
	b_blind += 0.0125
	}
}
else
{
	if b_blind > 0
	{
	b_blind -= 0.0125
	}
}

if event_occurrence = 1
{
global.event_occurrence += 0.005
	if global.event_occurrence > 1.2
	{
	event_occurrence = 0
	}
	
	if global.event_occurrence%2
	{
		if instance_number(BG_blind) = 0
		{
		x += irandom_range(-7,7)*global.event_occurrence
		y += irandom_range(-7,7)*global.event_occurrence
		}
	}
}
else
{
	if global.event_occurrence > 0
	{
	global.event_occurrence -= 0.005
	}
}



	if (instance_number(BT_title) > 0 || instance_number(select_map_button) > 0) && (instance_number(player) = 0 || instance_number(option_line_bar) = 0)
	{
	camera_set_view_size(view_camera[0],floor(v_x),floor(v_y));
	};

	if (instance_number(player) > 0 || instance_number(option_line_bar) > 0 || instance_number(setting_first) > 0)
	{
		if global.b_window = 1280 && global.window_ = 1280
		{
		camera_set_view_size(view_camera[0],floor(v_x)+global.shake_x,floor(v_y)+global.shake_y);
		}
		
		if global.b_window = 1920 && global.window_ = 1920
		{
		camera_set_view_size(view_camera[0],floor(v_x)*1.5+global.shake_x,floor(v_y)*1.5+global.shake_y);
		}
	};









if instance_number(player) = 0 && global.dev_mode != 1
{
v_x = 1280;
v_y = 720;
};


depth = -(room_width*10)

if global.mobile = 0
{
	if global.dev_mode > 0
	{

	show_debug_overlay(true);
		if fps_real > max_fps
		{
		max_fps = fps_real;
		};
	};
	else
	{
	show_debug_overlay(false);
	};
};

/////////////////////////////////////////////////////////////////////////////////////////////////
var yyyyy = global._came_vy_p_h;
var camera_yscale = v_y/720;

//몹, 광석 등이 체력을 닳았을때 체력바 색이 바뀌는 이팩트
global.if_global_hp_minus += (global.global_hp - global.if_global_hp_minus)*0.1;

//몹, 광석등등 체력표시

global.draw_global_hp += (global.t_draw_global_hp - global.draw_global_hp)/15;
global.global_hp += (global.t_global_hp - global.global_hp)/7;

if global.t_global_hp < 0
{
global.t_global_hp = 0;
};



if global.draw_global_hp <= 0
{
set_y = 0;
y4 = yyyyy+(camera_yscale)*64;
};
else
{
	if point_distance(ty4,0,y4,0) < 0.5
	{
	set_y = 1;
	ty4 = yyyyy-(camera_yscale)*32;
	y4 = ty4;
	};
	else
	{
		if set_y = 0
		{
		ty4 = yyyyy-(camera_yscale)*32;
		y4 += (ty4 - y4)/15;
		};
	};
};



////////////////////////////////////////////////////////////////////////////




time_left += (t_time_left - time_left)*0.1
draw_time_left_alpha += (draw_time_left_talpha - draw_time_left_alpha)*0.02



if global.knocked_out <= 0
{
draw_time_left_talpha = -0.01
}


if co_op_code.is_server = true
{
if instance_number(player) > 0
{
	if global.auto_scroll_x = noone
	{
	var _target_x = player.x
	}
	else
	{
	var _target_x = global.auto_scroll_x
	}
	
	if global.auto_scroll_y = noone
	{
	var _target_y = player.y
	}
	else
	{
	var _target_y = global.auto_scroll_y
	}
}

	if instance_number(pl_rocket) > 0
	{
		if pl_rocket.player_drop_anime = 0
		{
		_target_x = pl_rocket.x+10
		_target_y = pl_rocket.y
		}
		else
		{
		_target_x = room_width/2+96
		_target_y = room_width/2
		}
	}
	
	if global.camera_fix = 1
	{
	_target_x = x
	_target_y = y
	}
	
	if instance_number(player) > 0
	{
	x += (_target_x - x)*0.1
	y += (_target_y - y)*0.1
	
	
		if point_distance(x,y,_target_x,_target_y) > 64
		{
		x += (_target_x - x)*0.1
		y += (_target_y - y)*0.1
		}
	}
}
else
{
if instance_number(player_co_op) > 0
{
	if global.auto_scroll_x = noone
	{
	var _target_x = player_co_op.x
	}
	else
	{
	var _target_x = global.auto_scroll_x
	}
	
	if global.auto_scroll_y = noone
	{
	var _target_y = player_co_op.y
	}
	else
	{
	var _target_y = global.auto_scroll_y
	}
}

	if instance_number(pl_rocket) > 0
	{
		if pl_rocket.player_drop_anime = 0
		{
		_target_x = pl_rocket.x+10
		_target_y = pl_rocket.y
		}
		else
		{
		_target_x = room_width/2+96
		_target_y = room_width/2
		}
	}
	
	if instance_number(player) > 0
	{
	x += (_target_x - x)*0.1
	y += (_target_y - y)*0.1
	
	
		if point_distance(x,y,_target_x,_target_y) > 64
		{
		x += (_target_x - x)*0.1
		y += (_target_y - y)*0.1
		}
	}
}



image_angle += (t_angle - image_angle)*0.04

