/// @description Insert description here
// You can write your code in this editor
if global.change_map_to < 0
{
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


//뷰안에 있는경우만 드로우
	if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
	{
	inside_of_view = 1
	}
}


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
			set_global_hp("Polluted crystal", txscale*0.5, 0.5)
			if pl_inhand.sprite_index = spr_pickaxe && pl_inhand.image_index = 9
			{
			txscale -= global.pickaxe_power/3000
			tyscale -= global.pickaxe_power/3000
			}
		
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
			set_global_hp("Polluted crystal", txscale*0.5, 0.5)
			
			if pl_inhand_co_op.sprite_index = spr_pickaxe && pl_inhand_co_op.image_index = 9
			{
			txscale -= global.pickaxe_power/3000
			tyscale -= global.pickaxe_power/3000
			}
		
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
	instance_destroy()
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
	
	
	
	move_snap(32,32);
	image_alpha += (1.1 - image_alpha)/15


	depth = -(y+18)

	
	
	
	
	
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
