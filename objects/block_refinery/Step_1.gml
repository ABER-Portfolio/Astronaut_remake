/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);



if furnacing_time <= 0
{
image_index = 0
furnacing_time = 0
image_xscale = 0.75
image_yscale = 0.75
	if light != 0
	{
	instance_destroy(light)
	}
	
	if sound_effect_ != noone
	{
	audio_stop_sound(sound_effect_)
	sound_effect_ = noone
	}
}
else
{
var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}

if furnacing_time > 0
{
	var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
	if sound_effect_ = noone
	{
	sound_effect_ = audio_play_sound(furnace_burning,1,true)
	}
	else
	{
	audio_sound_gain(sound_effect_,(1 - point_distance(x,y,target_.x,target_.y)/48)*global.master_volume*global.sfx_volume*global.scene_volume*0.8,0)
	}
}



	if image_index = 0
	{
	image_index = 1
		if light = 0
		{
		light = instance_create(x,y,objLight_for_obj)
		}
	light.x = x
	light.y = y
	light.lightcol = $FFE4F8FE
	light.alpha = 0.6*image_xscale
	light.lightxs = 128*image_xscale
	light.lightys = 128*image_xscale
	}
light.alpha = 0.45*image_xscale
light.lightxs = 164*image_xscale
light.lightys = 164*image_xscale

scale_plus_time++


if scale_plus_time > 80
{
scale_plus ++
scale_plus_time = 0
}

if scale_plus > 1
{
scale_plus = 0
}

	if scale_plus = 1
	{
	image_xscale += 0.001
	image_yscale += 0.001
	}
	else
	{
	image_xscale -= 0.001
	image_yscale -= 0.001
	}
}

if furnacing_ore != noone && furnacing_time <= 0
{
	if d_ore_bar_ready = 0
	{
		if furnacing_ore != -1
		{
		var _item_ = instance_create(-100,-100,furnacing_ore)
		d_ore_bar_ready = instance_create(x,y-16,d_item_log)
		d_ore_bar_ready.sprite = _item_.sprite_index
		d_ore_bar_ready.ind = _item_.image_index
		d_ore_bar_ready.depth = depth-1
		d_ore_bar_ready.depth_target = noone
		instance_destroy(_item_)
		}
		else
		{
		furnacing_ore = noone
		}
	}
}

if d_ore_bar_ready != 0 && furnacing_ore = noone && furnacing_time <= 0
{
d_ore_bar_ready.des = 1
d_ore_bar_ready = 0
}



#region//플레이어 근처가 아닌경우 노클립 블럭 비활성화
if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
		if point_distance(x,y,player.x,player.y) > 64
		{
		instance_deactivate_object(noclip_block)
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
		if point_distance(x,y,player_co_op.x,player_co_op.y) > 64
		{
		instance_deactivate_object(noclip_block)
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}

#endregion

