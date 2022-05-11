/// @description Insert description here
// You can write your code in this editor



if inside_of_view = 1
{
	if co_op_code.is_server = true
	{
		if instance_number(player) > 0
		{
			if place_meeting(x,y,pl_inhand) && global.swing = 1 && point_distance(x,y,player.x,player.y) < 32
			{
			var b_txscale = txscale
			auto_picking = 1.2
			set_global_hp("Electric rod", txscale, 0.5)
			txscale -= global.pickaxe_power/800
			tyscale -= global.pickaxe_power/800
			
			if image_index = 0 || image_index = 1
			{
				if global.de_poisoning <= 0 && global.ignore_break_debuff <= 0
				{
				global.poisoning ++
				}
			}
			
			if image_index = 2 || image_index = 3
			{
				if global.de_radiation <= 0 && global.ignore_break_debuff <= 0
				{
				global.radiation ++
				}
			}
			
			
		
			if global.guide_massage = 0 && txscale = b_txscale
			{
			var _text_bar = instance_create(x,y,draw_debug_text)
			_text_bar.text = "Can not break it with this tool"
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
			set_global_hp("Electric rod", txscale, 0.5)
			txscale -= global.pickaxe_power/800
			tyscale -= global.pickaxe_power/800
			
			if image_index = 0 || image_index = 1
			{
				if global.de_poisoning <= 0 && global.ignore_break_debuff <= 0
				{
				global.poisoning ++
				}
			}
			
			if image_index = 2 || image_index = 3
			{
				if global.de_radiation <= 0 && global.ignore_break_debuff <= 0
				{
				global.radiation ++
				}
			}
			
			
		
			if global.guide_massage = 0 && txscale = b_txscale
			{
			var _text_bar = instance_create(x,y,draw_debug_text)
			_text_bar.text = "Can not break it with this tool"
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
	instance_destroy()
	instance_activate_object(noclip_block)
	instance_destroy(noclip_block)
		if co_op_code.is_server = true
		{
		barrel_item_drop()
		}
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
	buffer_write(chat_buffer, buffer_u8, DATA.A_BL_STATE);
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
