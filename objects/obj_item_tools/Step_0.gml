/// @description Insert description here
// You can write your code in this editor
ty_depth(floor_y)

if y < floor_y
{
gravity = 0.12651236345713
}
else
{
	if vspeed > 0
	{
	vspeed = 0
	}
	
	hspeed = 0
	
	if(co_op_code.is_server == true)
	{
		if crashed = 0 && gravity > 0
		{
		var sound = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sound,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	
		crashed = 1
		}
	}
	else
	{
		if crashed = 0 && gravity > 0
		{
		var sound = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sound,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	
		crashed = 1
		}
	}
gravity = 0
}

if image_xscale > 0
{
image_angle = point_distance(y,0,floor_y,0)-45
}
else
{
image_angle = -point_distance(y,0,floor_y,0)+45
}








if(global.co_op_mode = 0)
{
	if point_distance(x,floor_y,player.x,player.y+10) < 16 && create_cool_time = 0 && global.knocked_out = 0
	{
	var __item_name__ = asset_get_index("item1000"+string(image_index+1))

		if got_item_c = 0 && got_item = 0
		{
		got_item = 1
		}
	}
}
else
{
	if point_distance(x,floor_y,player_co_op.x,player_co_op.y+10) < 16 && create_cool_time = 0 && global.knocked_out = 0
	{
	var __item_name__ = asset_get_index("item1000"+string(image_index+1))

		if got_item_c = 0 && got_item = 0
		{
		got_item_c = 1
		}
	}
	
	if point_distance(x,floor_y,player.x,player.y+10) < 16 && create_cool_time = 0 && global.knocked_out = 0
	{
	var __item_name__ = asset_get_index("item1000"+string(image_index+1))

		if got_item_c = 0 && got_item = 0
		{
		got_item = 1
		}
	}
}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	if(global.co_op_mode = 0)
	{
		if got_item = 1
		{
		image_angle += (point_direction(x,floor_y,player.x,player.y+10) - image_angle)*0.1
		x += (player.x - x)/3
		y += (player.y+10 - y)/2.5
		floor_y += (player.y+10 - floor_y)/3
		
		

			if point_distance(x,floor_y,player.x,player.y+10) < 3
			{
			got_items(stucked_item_number)
			instance_destroy()
			}
		}
	}
	else
	{
		if got_item = 1
		{
		image_angle += (point_direction(x,floor_y,player.x,player.y+10) - image_angle)*0.1
		x += (player.x - x)/3
		y += (player.y+10 - y)/2.5
		floor_y += (player.y+10 - floor_y)/3
		
		

			if point_distance(x,floor_y,player.x,player.y+10) < 3
			{
				if co_op_code.is_server = true
				{
				got_items(stucked_item_number)
				}
			instance_destroy()
			}
		}
		
		if got_item_c = 1
		{
		image_angle += (point_direction(x,floor_y,player_co_op.x,player_co_op.y+10) - image_angle)*0.1
		x += (player_co_op.x - x)/3
		y += (player_co_op.y+10 - y)/2.5
		floor_y += (player_co_op.y+10 - floor_y)/3
		
		

			if point_distance(x,floor_y,player_co_op.x,player_co_op.y+10) < 3
			{
				if co_op_code.is_server = false
				{
				got_items(stucked_item_number)
				}
			instance_destroy()
			}
		}
	}
