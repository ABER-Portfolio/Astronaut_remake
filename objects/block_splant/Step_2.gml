/// @description Insert description here
// You can write your code in this editor

if inside_of_view = 1 && image_index < 9
{
	if co_op_code.is_server = true
	{
		if place_meeting(x,y,pl_inhand) && global.swing = 1 && point_distance(x,y,player.x,player.y) < 32
		{
			for(var i = 0; i < choose(0,0,0,0,1,1,1,2,2,2); i++)
			{
			var cre_item = instance_create(x,y,obj_item_placeable)
			cre_item.stucked_item_number = 1
			cre_item.hspeed = irandom_range(-20,20)*0.1
			cre_item.vspeed = -irandom_range(0,20)*0.1
			cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
			cre_item.image_yscale = 0.18
			if image_index = 0 || image_index = 1
			{
			cre_item.image_index = 24
			}
			if image_index = 2 || image_index = 3
			{
			cre_item.image_index = 25
			}
			if image_index = 4 || image_index = 5
			{
			cre_item.image_index = 26
			}
			if image_index = 6 || image_index = 7
			{
			cre_item.image_index = 27
			}
			if image_index = 8
			{
			cre_item.image_index = 28
			}
			cre_item.floor_y = y+irandom_range(-3,3)
			cre_item.depth = -(depth+1)
			cre_item.received_item = 0
			}
		instance_destroy()
		
		var sf_ef = audio_play_sound(choose(plant_sfx,plant_sfx1,plant_sfx2),1,false)
		audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	else
	{
		if place_meeting(x,y,pl_inhand_co_op) && global.swing_co_op = 1 && point_distance(x,y,player_co_op.x,player_co_op.y) < 32
		{
			for(var i = 0; i < choose(0,0,0,0,1,1,1,2,2,2); i++)
			{
			var cre_item = instance_create(x,y,obj_item_placeable)
			cre_item.stucked_item_number = 1
			cre_item.hspeed = irandom_range(-20,20)*0.1
			cre_item.vspeed = -irandom_range(0,20)*0.1
			cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
			cre_item.image_yscale = 0.18
			if image_index = 0 || image_index = 1
			{
			cre_item.image_index = 24
			}
			if image_index = 2 || image_index = 3
			{
			cre_item.image_index = 25
			}
			if image_index = 4 || image_index = 5
			{
			cre_item.image_index = 26
			}
			if image_index = 6 || image_index = 7
			{
			cre_item.image_index = 27
			}
			if image_index = 8
			{
			cre_item.image_index = 28
			}
			cre_item.floor_y = y+irandom_range(-3,3)
			cre_item.depth = -(depth+1)
			cre_item.received_item = 0
			}
		instance_destroy()
		
		var sf_ef = audio_play_sound(choose(plant_sfx,plant_sfx1,plant_sfx2),1,false)
		audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
}


if inside_of_view = 1 && image_index >= 9
{
	if co_op_code.is_server = true
	{
		if instance_number(player) > 0
		{
			if place_meeting(x,y,pl_inhand) && global.swing = 1 && point_distance(x,y,player.x,player.y) < 32
			{
			var b_txscale = txscale
			auto_picking = 1.2
			set_global_hp("Splant", txscale, 0.5)
			
			txscale -= global.pickaxe_power/1400
			tyscale -= global.pickaxe_power/1400
			
		
			if global.guide_massage = 0 && txscale = b_txscale
			{
			chat_up("Can not break it with this tool",1)
			};
		
			var sf_ef = audio_play_sound(choose(pickaxe_1,pickaxe_2,pickaxe_3),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.swing = 0
			global.swing_co_op = 0
			}
		}
	}
	else
	{
		if instance_number(player_co_op) > 0
		{
			if place_meeting(x,y,pl_inhand_co_op) && global.swing = 1 && point_distance(x,y,player_co_op.x,player_co_op.y) < 32
			{
			var b_txscale = txscale
			auto_picking = 1.2
			set_global_hp("Splant", txscale, 0.5)
			
			
			txscale -= global.pickaxe_power/1400
			tyscale -= global.pickaxe_power/1400
			
		
			if global.guide_massage = 0 && txscale = b_txscale
			{
			chat_up("Can not break it with this tool",1)
			};
		
			var sf_ef = audio_play_sound(choose(pickaxe_1,pickaxe_2,pickaxe_3),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.swing = 0
			global.swing_co_op = 0
			}
		}
	}
	
	if txscale < 0.11
	{
	txscale = 0
	tyscale = 0
	
	
	for(var i = 0; i < choose(1,1,1,2,2,2); i++)
	{
	var cre_item = instance_create(x,y,obj_item_potion)
	cre_item.stucked_item_number = 1
	cre_item.hspeed = irandom_range(-20,20)*0.1
	cre_item.vspeed = -irandom_range(0,20)*0.1
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	if image_index = 11 || image_index = 12
	{
	cre_item.image_index = 19
	}
	if image_index = 13 || image_index = 14
	{
	cre_item.image_index = 20
	}
	if image_index = 15 || image_index = 16
	{
	cre_item.image_index = 21
	}
	cre_item.floor_y = y+15
	cre_item.depth = -(depth+1)
	cre_item.received_item = 0
	}
	
	for(var i = 0; i < choose(0,0,0,1); i++)
	{
	var cre_item = instance_create(x,y,obj_item_placeable)
	cre_item.stucked_item_number = 1
	cre_item.hspeed = irandom_range(-20,20)*0.1
	cre_item.vspeed = -irandom_range(0,20)*0.1
	cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
	cre_item.image_yscale = 0.18
	if image_index = 11 || image_index = 12
	{
	cre_item.image_index = 42
	}
	if image_index = 13 || image_index = 14
	{
	cre_item.image_index = 43
	}
	if image_index = 15 || image_index = 16
	{
	cre_item.image_index = 44
	}
	cre_item.floor_y = y+15
	cre_item.depth = -(depth+1)
	cre_item.received_item = 0
	}
	
	
	
	instance_destroy()
	instance_activate_object(noclip_block)
	instance_destroy(noclip_block)
	}
	
	
	
	
	
	auto_picking += (-0.01 - auto_picking)*0.1
	xscale += (txscale - xscale)*0.1
	yscale = xscale
	
	if auto_picking > 0
	{
	draw_hp_bar += (3 - draw_hp_bar)*0.1
	}
	else
	{
	draw_hp_bar += (-0.01 - draw_hp_bar)*0.1
	}
	
	
	

	
	
	
	
	
	if (txscale != xscale || auto_picking > 0) && buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.BL_ORE_STATE);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, txscale);
	buffer_write(chat_buffer, buffer_string, tyscale);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, auto_picking);
	buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
	send_all(chat_buffer);
	}
}



if instance_exists(noclip_block) && image_index <= 8
{
instance_destroy(noclip_block)
noclip_block = noone
}