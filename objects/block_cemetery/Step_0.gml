/// @description Insert description here
// You can write your code in this editor
depth = -(floor_y+image_yscale*18)
hspeed += (0 - hspeed)*0.01
shake_block()

	if y < floor_y
	{
	image_angle += angle*12.5
	gravity = 0.134
	}
	else
	{
		if double != -1
		{
		gravity = 0
		vspeed = 0
		image_angle = 0
			if double = 0
			{
			move_snap(32, 32);
			double ++
			hspeed = 0
				if co_op_code.is_server = true
				{
					if instance_number(player) > 0
					{
					var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
					audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
					}
				}
				else
				{
					if instance_number(player_co_op) > 0
					{
					var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
					audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
					}
				}
				
				if place_meeting(x,floor_y,block_parents) || place_meeting(x,floor_y,block_ore) || place_meeting(x,floor_y,block_cemetery) || (!position_meeting(x,floor_y,fl_parents))
				{
				instance_destroy()
				}
			}
		}
	}


