/// @description Insert description here
// You can write your code in this editor
if global.co_op_mode = 1
{
	if global.knocked_out > 0 && global.knocked_out_co_op > 0 && global.knocked_out_origin > 0
	{
		if obj_camera.draw_time_left_alpha >= 1
		{
		instance_destroy()
		}
	}
}
else
{
	if global.knocked_out > 0
	{
		if obj_camera.draw_time_left_alpha >= 1
		{
		instance_destroy()
		}
	}
}



if breathing = 0 && image_index >= 10
{
image_speed = 0
image_index = 10
breathing = 1

	for(var i = -1; i < 1; i++)
	{
	var movement_ef = instance_create(x,y+23,dust);
	movement_ef.ahspeed = irandom_range(-100,100)/100
	movement_ef.avspeed = i*2
	movement_ef.depth = depth-1
	movement_ef.received = 0
	}
}

if dilay = 0
{
	if place_meeting(x,y,bomb_site)
	{
	m_damaged(other,4,25,c_gray,self,3,2)
	}
}




if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)
instance_destroy()

var dead_ef = instance_create(x,y,dead_head)
dead_ef.sprite_index = dead_worm_ef
dead_ef.image_index = 6
}