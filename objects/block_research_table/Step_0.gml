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
			auto_picking = 1.2
			set_global_hp("Electric rod", (0.5*2.6)-0.3, 1)
		
			if global.guide_massage = 0 && global.pickaxe_power <= 0
			{
			var _text_bar = instance_create(x,y,draw_debug_text)
			_text_bar.text = "Can not break it with this tool"
			};
		
			var sf_ef = audio_play_sound(choose(pickaxe_1,pickaxe_2,pickaxe_3),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.swing = 0
			global.swing_co_op = 0
			
				if global.inhand_item_type = spr_pickaxe && global.inhand_item = 15
				{
				var cre_item = instance_create(x,y,obj_item_placeable)
				cre_item.received_item = 0
				cre_item.stucked_item_number = 1
				cre_item.vspeed = -1
				cre_item.floor_y = y+irandom_range(0,3);
				cre_item.hspeed = irandom_range(-10,10)/10
				cre_item.depth = -(cre_item.floor_y)
				cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
				cre_item.image_yscale = 0.18
				cre_item.a = irandom_range(9,15)
				cre_item.image_index = 56
				instance_destroy()
				instance_activate_object(noclip_block)
				instance_destroy(noclip_block)
				}
			}
		}
	}
	else
	{
		if instance_number(player_co_op) > 0
		{
			if place_meeting(x,y,pl_inhand_co_op) && global.swing = 1 && point_distance(x,y,player_co_op.x,player_co_op.y) < 32
			{
			auto_picking = 1.2
			set_global_hp("Electric rod", (0.5*2.6)-0.3, 1)
			
		
			if global.guide_massage = 0 && global.pickaxe_power <= 0
			{
			var _text_bar = instance_create(x,y,draw_debug_text)
			_text_bar.text = "Can not break it with this tool"
			}
		
			var sf_ef = audio_play_sound(choose(pickaxe_1,pickaxe_2,pickaxe_3),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
			global.swing = 0
			global.swing_co_op = 0
			
				if global.pickaxe_power > 0
				{
				var cre_item = instance_create(x,y,obj_item_placeable)
				cre_item.received_item = 0
				cre_item.stucked_item_number = 1
				cre_item.vspeed = -1
				cre_item.floor_y = y+irandom_range(0,3);
				cre_item.hspeed = irandom_range(-10,10)/10
				cre_item.depth = -(cre_item.floor_y)
				cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
				cre_item.image_yscale = 0.18
				cre_item.a = irandom_range(9,15)
				cre_item.image_index = 56
				instance_destroy()
				instance_activate_object(noclip_block)
				instance_destroy(noclip_block)
				}
			}
		}
	}
	
	
	
	auto_picking += (-0.01 - auto_picking)*0.1
	
	if auto_picking > 0
	{
	draw_hp_bar += (3 - draw_hp_bar)*0.1
	}
	else
	{
	draw_hp_bar += (-0.01 - draw_hp_bar)*0.1
	}
	
	
	
	move_snap(32,32);


	depth = -(y+17)

	if instance_exists(noclip_block)
	{
	noclip_block.image_xscale = 0.66/1.9
	noclip_block.image_yscale = 0.125
	noclip_block.x = x
	noclip_block.y = y+4
	}
	
	
	
	
	
	if buffer_exists(chat_buffer)
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
