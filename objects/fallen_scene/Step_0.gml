/// @description Insert description here
// You can write your code in this editor
var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}



if instance_number(target_) > 0
{
image_xscale = 0.4*(abs(target_.image_xscale)/(target_.image_xscale))
floor_y = target_.y


	if y > target_.y
	{
	gravity = 0
	y = target_.y
	sprite_index = pl_knocked_out
	
		if scene_kind = 1
		{
		a ++
		image_alpha = 1
			if a > 80
			{
			target_.cannot_move = 0
			target_.image_alpha = 1
			global.playing_scene = 0
			instance_destroy()
			}
		}
	
		if sound_effect = 0
		{
		sound_effect = 1
		var sound_effect_ = audio_play_sound(down_attack_sfx,1,false)
		audio_sound_gain(sound_effect_,0.4*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	else
	{
	gravity = 0.1
	sprite_index = pl_hurt
	sound_effect = 0
		if scene_kind = 1
		{
		image_alpha = 1
		}
	}
}