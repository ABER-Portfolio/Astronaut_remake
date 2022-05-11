/// @description Insert description here
// You can write your code in this editor
if (can_skip = 2 && global.waiting_o_p_chat = 1) || (can_skip = 2 && can_skip_solo = 1)
{
global.waiting_o_p_chat = 0
chat_page ++
can_skip = 0

image_speed = 0
image_index = 0
image_xscale = 0
image_yscale = 0
image_alpha = 0
step_for_scale_shake = 0

y_plus_time = 0
y_plus = 0
ty = 0

var aud = audio_play_sound(button,0,false)

var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}

if point_distance(x,y,target.x,target.y)/64 < 0.9
{
audio_sound_gain(aud,0.5*global.master_volume*global.sfx_volume*global.scene_volume*(1 - point_distance(x,y,target.x,target.y)/64),0)
}
else
{
audio_sound_gain(aud,0.1*global.master_volume*global.sfx_volume*global.scene_volume,0)
}


	if chat_page > max_chat_page && end_page = 0
	{
	des = 1
	global.playing_scene = 0
	global.do_not_move2 = 0
	}
	
	if des = 0
	{
	alarm[1] = 20
	}
}