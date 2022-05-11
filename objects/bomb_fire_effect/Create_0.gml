/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

view_shake(10,2,5)
if instance_number(obj_camera) > 0
{
obj_camera.bomb_blind = 1.2
}

		if instance_number(BG_blind) = 0
		{
			if co_op_code.is_server = true
			{
				if instance_number(player) > 0
				{
				var sound_break_effect = audio_play_sound(choose(bomb_1,bomb_2,bomb_3),1,false)
				audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume*3,0)
				}
			}
			else
			{
				if instance_number(player_co_op) > 0
				{
				var sound_break_effect = audio_play_sound(choose(bomb_1,bomb_2,bomb_3),1,false)
				audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume*3,0)
				}
			}
		}
		

alarm[0] = 2		
alarm[1] = 4
alarm[2] = 1