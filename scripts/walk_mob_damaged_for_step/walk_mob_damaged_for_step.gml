if !place_meeting(x,y,pl_inhand)
{
	if dilay = 0
	{
	floor_y = y
		if (!position_meeting(x+image_xscale*32,y+image_yscale*48,fl_parents)) || (!position_meeting(x-image_xscale*4,y+image_yscale*48,fl_parents)) || (!position_meeting(x,y,fl_parents)) || (!position_meeting(x,y+image_yscale*32,fl_parents))
		{
		speed = -(speed - speed*0.5)
		}
	}
}


if dilay = 2 && y > floor_y-1
{
gravity = 0
vspeed = 0
dilay = 0
}


if place_meeting(x,y,pl_inhand) && dilay = 0 && global.swing = 1
{
alarm[1] = 1
}



if hp <= 0
{
var die = audio_play_sound(died,0,false)
audio_sound_gain(die,7*global.master_volume*global.sfx_volume*global.scene_volume,1)
instance_destroy()
}