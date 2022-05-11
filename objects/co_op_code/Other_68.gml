if global.co_op_mode > 0
{
var type = async_load[? "type"];

if (type == network_type_connect) {
	var socket = async_load[? "socket"];
	var cli_max = ds_list_size(clients);

	index = 0;
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.CHECK_VERSION);
	buffer_write(chat_buffer, buffer_string, is_server);
	buffer_write(chat_buffer, buffer_string, global.game_version);
	send_all(chat_buffer);
	
	
	buffer_seek(info_buffer, buffer_seek_start, 0);
	buffer_write(info_buffer, buffer_u8, DATA.INIT_DATA);
	buffer_write(info_buffer, buffer_u8, cli_max);
	buffer_write(info_buffer, buffer_u8, socket);
	
	
	if is_server = false
	{
	global.cre_cli_map = 1
	}
	
	for(var i = 0; i < cli_max; i++) {
		with(obj_client_info) {
			if (other.index == playerID) {
				buffer_write(other.info_buffer, buffer_string, name);
				buffer_write(other.info_buffer, buffer_u8, soc);
			}
		}
		index++;
	}
	
	network_send_packet(socket, info_buffer, buffer_get_size(info_buffer));

	ds_list_add(clients, socket);
}

else if (type == network_type_disconnect) {
	var socket = async_load[? "socket"];//"id"쓰지 말것 무조건 0이 나온다.

	buffer_seek(dis_buffer, buffer_seek_start, 0);
	buffer_write(dis_buffer, buffer_u8, DATA.REMOVE_CLI);
	buffer_write(dis_buffer, buffer_u8, socket);
	buffer_write(dis_buffer, buffer_string, global.nickname);
	

	
	with(obj_client_info) {
		if (soc == socket) {
			instance_destroy();
		}
	}
	
	if global.language = 0
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "The server has been disconnected!"
	}
	if global.language = 1
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "서버 연결이 종료되었습니다!"
	}
	
	global.saving_data = 1
	code.alarm[8] = 1
	alarm[6] = 600
	
	var pos = ds_list_find_index(clients, socket);
	ds_list_delete(clients, pos);
	
	send_all(dis_buffer);
}

else if (type == network_type_data) {
	var buffer = async_load[? "buffer"];
	
	buffer_seek(buffer, buffer_seek_start, 0);
	
	var data = buffer_read(buffer, buffer_u8);
	
	switch(data) {
		case DATA.ADD_CLI:
			
			if is_server = false
			{
			global.cre_cli_map = 1
			}
		
			var some_ID = buffer_read(buffer, buffer_u8);
			var Nick_name_ = buffer_read(buffer, buffer_string);
			global.co_op_nickname = Nick_name_;
			
			if global.language = 0
			{
			chat_up(string(Nick_name_)+" joined to the server!",0);
			}
			if global.language = 1
			{
			chat_up(string(Nick_name_)+" 이/가 서버에 참가했습니다!!",0);
			}
			
		
			
			
			if(my_ID != some_ID) {
				var obj = instance_create_depth(0, 0, -100, obj_nope);
				with(obj) {
					name = "";
					playerID = some_ID;
					soc = 0;
					instance_change(obj_client_info, true);
				}
				obj_chatbar.cli_num++;
				
				global.saving_data = -1


				
			}
			
		buffer_seek(chat_buffer,buffer_seek_start,0);
		buffer_write(chat_buffer,buffer_u8,DATA.CONNECTED_CHECK);
		send_all(chat_buffer);
		break;
		
		
		case DATA.CONNECTED_CHECK:
		if is_server = true
		{
		alarm[11] = 180
		}
		break;
		
		case DATA.SEND_END:
		alarm[0] = 2
		global.saving_data = 0
		if is_server = true
		{
		buffer_seek(chat_buffer,buffer_seek_start,0);
		buffer_write(chat_buffer,buffer_u8,DATA.SEND_END);
		send_all(chat_buffer);
		}
		break;
		
		case DATA.SEND_MAP:
	
		if is_server = true
		{
		obj_camera.v_x = global.room_size
		obj_camera.v_y = global.room_size
		obj_camera.tv_x = global.room_size
		obj_camera.tv_y = global.room_size
		
		buffer_seek(global.load_map_buffer, buffer_seek_start, 0);
		buffer_write(global.load_map_buffer, buffer_u8, DATA.LOAD_MAP);

		buffer_write(global.load_map_buffer, buffer_string, instance_number(fl_parents));
				
		buffer_write(global.load_map_buffer, buffer_string, instance_number(block_ore));
				
		buffer_write(global.load_map_buffer, buffer_string, instance_number(wall_block_parents));
				
		buffer_write(global.load_map_buffer, buffer_string, instance_number(to_save_all_block_parents)-instance_number(block_furnace_kind)-instance_number(block_chest_kind));
				
		buffer_write(global.load_map_buffer, buffer_string, instance_number(block_furnace_kind));
				
		buffer_write(global.load_map_buffer, buffer_string, instance_number(block_chest_kind));
				
				
		buffer_write(global.load_map_buffer, buffer_string, room_width);
		buffer_write(global.load_map_buffer, buffer_string, room_height);

		instance_activate_object(all)
			with(fl_parents)
			{
			buffer_write(global.load_map_buffer, buffer_string, object_get_name(self.object_index));
	
			buffer_write(global.load_map_buffer, buffer_string, self.x);

			buffer_write(global.load_map_buffer, buffer_string, self.y);
					
			buffer_write(global.load_map_buffer, buffer_string, self.draw_tiles_on_the_floor);
			};
					
					
		instance_activate_object(all)
			with(block_ore)
			{
			buffer_write(global.load_map_buffer, buffer_string, self.sprite_index);
					
			buffer_write(global.load_map_buffer, buffer_string, self.image_index);
	
			buffer_write(global.load_map_buffer, buffer_string, self.x);

			buffer_write(global.load_map_buffer, buffer_string, self.y);
					
			buffer_write(global.load_map_buffer, buffer_string, self.block_num);

			buffer_write(global.load_map_buffer, buffer_string, self.item_num);
					
			buffer_write(global.load_map_buffer, buffer_string, self.stone_color);

			buffer_write(global.load_map_buffer, buffer_string, self.xscale);
					
			buffer_write(global.load_map_buffer, buffer_string, self.yscale);
			};

					
			instance_activate_object(all)
			with(to_save_all_block_parents)
			{
				if object_get_parent(self.object_index) != block_furnace_kind && object_get_parent(self.object_index) != block_chest_kind 
				{
				buffer_write(global.load_map_buffer, buffer_string, object_get_name(self.object_index));
					
				buffer_write(global.load_map_buffer, buffer_string, self.image_index);
	
				buffer_write(global.load_map_buffer, buffer_string, self.x);

				buffer_write(global.load_map_buffer, buffer_string, self.y);
				}
			}
					
					
					
					
		instance_activate_object(all)
			with(block_furnace_kind)
			{
			buffer_write(global.load_map_buffer, buffer_string, object_get_name(self.object_index));
	
			buffer_write(global.load_map_buffer, buffer_string, self.x);

			buffer_write(global.load_map_buffer, buffer_string, self.y);
					
			buffer_write(global.load_map_buffer, buffer_string, self.furnacing_ore);
					
			buffer_write(global.load_map_buffer, buffer_string, self.furnacing_time);
			}
					
					
					
					
		instance_activate_object(all)
			with(block_chest_kind)
			{
			buffer_write(global.load_map_buffer, buffer_string, self.image_index);
	
			buffer_write(global.load_map_buffer, buffer_string, self.x);

			buffer_write(global.load_map_buffer, buffer_string, self.y);
				for(var i = 0; i < 14; i++)
				{
				buffer_write(global.load_map_buffer, buffer_string, self.chest_item[i]);
				buffer_write(global.load_map_buffer, buffer_string, self.chest_item_num[i]);
				}
			}
				
		send_all(global.load_map_buffer);
		}
		break;
		
		
		
		
		
		case DATA.INIT_DATA:
			my_ID = buffer_read(buffer, buffer_u8);
			var socket = buffer_read(buffer, buffer_u8);
			obj_chatbar.cli_num = my_ID;
			obj_client_info.playerID = my_ID;
			my_instance_id.soc = socket;
			chat_up(" ",0);
			for(i = 0; i < my_ID; i++){
				var obj = instance_create_depth(0, 0, -100, obj_nope);
				obj.playerID = i;
				with(obj) {
				name = buffer_read(buffer, buffer_string);
				soc = buffer_read(buffer, buffer_u8);
				instance_change(obj_client_info, true);
				}
			}
			buffer_seek(info_buffer, buffer_seek_start, 0);
			buffer_write(info_buffer, buffer_u8, DATA.ADD_CLI);
			buffer_write(info_buffer, buffer_u8, my_ID);
			buffer_write(info_buffer, buffer_string, global.nickname);
			send_all(info_buffer);
			send_one(buffer_string, "name");
			send_one(buffer_u8, "soc");
			
			if is_server = false
			{
			global.cre_cli_map = 1
			}
		break;
		case DATA.CHAT:
			var str = buffer_read(buffer, buffer_string);
			var sender_nickname = buffer_read(buffer, buffer_string);
			var _is_sever_ = real(buffer_read(buffer, buffer_string));
			
			
			if sender_nickname = global.nickname
			{
				if _is_sever_ = true
				{
				chat_up(string(sender_nickname)+" : "+string(str)+" ( Server )",0);
				
					var target_ = player
					if co_op_code.chat_log != 0
					{
					instance_destroy(co_op_code.chat_log)
					co_op_code.chat_log = 0
					}
		
					if instance_number(target_) > 0
					{
					co_op_code.chat_log = instance_create(target_.x,target_.y-32,d_item_log);
					var c_code_chat_log = co_op_code.chat_log
					c_code_chat_log.sprite = none_sprite;
					c_code_chat_log.ind = str;
					c_code_chat_log.depth = target_.depth-1;
					c_code_chat_log.alarm[1] = 220;
					c_code_chat_log.depth_target = target_;
					}
				}
				else
				{
				chat_up(string(sender_nickname)+" : "+string(str)+" ( Client )",0);
				
					var target_ = player_co_op
					if global.co_op_mode = 1 && co_op_code.chat_log != 0
					{
					instance_destroy(co_op_code.chat_log)
					co_op_code.chat_log = 0
					}
		
					if instance_number(target_) > 0
					{
					co_op_code.chat_log = instance_create(target_.x,target_.y-32,d_item_log);
					var c_code_chat_log = co_op_code.chat_log
					c_code_chat_log.sprite = none_sprite;
					c_code_chat_log.ind = str;
					c_code_chat_log.depth = target_.depth-1;
					c_code_chat_log.alarm[1] = 220;
					c_code_chat_log.depth_target = target_;
					}
				}
			}
			else
			{
				if _is_sever_ = false
				{
				chat_up(string(sender_nickname)+" : "+string(str),0);
				
					var target_ = player_co_op
					if global.co_op_mode = 1 && co_op_code.chat_log != 0
					{
					instance_destroy(co_op_code.chat_log)
					co_op_code.chat_log = 0
					}
		
					if instance_number(target_) > 0
					{
					co_op_code.chat_log = instance_create(target_.x,target_.y-32,d_item_log);
					var c_code_chat_log = co_op_code.chat_log
					c_code_chat_log.sprite = none_sprite;
					c_code_chat_log.ind = str;
					c_code_chat_log.depth = target_.depth-1;
					c_code_chat_log.alarm[1] = 220;
					c_code_chat_log.depth_target = target_;
					}
				}
			}


			global.recently_entered_chat_m += 1
			del_recently_chat_log = 1
		break;
		case DATA.LOAD_MAP:
		
			instance_activate_all()
			global.change_map_to = noone
			global.n_room = 1
			
		
			if is_server = false
			{	
			var fl_parents_num = buffer_read(buffer, buffer_string);
			
			var bl_ore_num = buffer_read(buffer, buffer_string);
			
			var bl_wall_num = buffer_read(buffer, buffer_string);
			
			var t_save_bl_parents_num = string(buffer_read(buffer, buffer_string));
			
			var fur_bl_num = buffer_read(buffer, buffer_string);
			
			var chest_bl_num = buffer_read(buffer, buffer_string);

			
			var room_wid = buffer_read(buffer, buffer_string);
			var room_hei = buffer_read(buffer, buffer_string);
			
			global.room_size = room_wid;
			room_width = room_wid;
			room_height = room_hei;
			
			instance_activate_all()
			
			if instance_number(player_co_op) > 0
			{
			player_co_op.x = room_width*0.5;
			player_co_op.y = room_height*0.5;
			
			pl_inhand_co_op.x = room_width*0.5;
			pl_inhand_co_op.y = room_height*0.5;
			}
			
			obj_camera.x = room_width*0.5;
			obj_camera.y = room_height*0.5;
			
			global.saving_data = -1;

			instance_activate_object(all);
	
			obj_camera.v_x = global.room_size;
			obj_camera.v_y = global.room_size;
			obj_camera.tv_x = global.room_size;
			obj_camera.tv_y = global.room_size;
			
			
				//var _st_fl_p_n_ = fl_parents_num;

				for(var i = 0; i < fl_parents_num; i++)
				{
				var obj_ind = buffer_read(buffer, buffer_string);
				var xx = real(buffer_read(buffer, buffer_string));
				var yy = real(buffer_read(buffer, buffer_string));
				var fl_tile = real(buffer_read(buffer, buffer_string));
				
				
				var fl_block = instance_create(xx,yy,asset_get_index(string(obj_ind)));
				instance_activate_all()
					if instance_exists(fl_block)
					{
					instance_activate_all()
					fl_block.received = 1
					instance_activate_all()
					fl_block.draw_tiles_on_the_floor = fl_tile
					}
				}
				
				
				
				
				
				//var _st_bl_p_n_ = bl_ore_num;
			
				for(var i = 0; i < bl_ore_num; i++)
				{
				var spr_ind = buffer_read(buffer, buffer_string);
				var img_ind = buffer_read(buffer, buffer_string);
				var xx = buffer_read(buffer, buffer_string);
				var yy = buffer_read(buffer, buffer_string);
				var block_num_ = buffer_read(buffer, buffer_string);
				var item_num_ = buffer_read(buffer, buffer_string);
				var stone_color_ = buffer_read(buffer, buffer_string);
				var xscale_ = buffer_read(buffer, buffer_string);
				var yscale_ = buffer_read(buffer, buffer_string);
				
				
				var bl_ore_ = instance_create(xx,yy,block_ore);
				instance_activate_all()
				bl_ore_.received = 1
				bl_ore_.sprite_index = real(spr_ind);
				bl_ore_.image_index = real(img_ind);
				bl_ore_.block_num = real(string(real(block_num_)));
				bl_ore_.item_num = real(string(real(item_num_)));
				bl_ore_.stone_color = real(string(real(stone_color_)));
				bl_ore_.xscale = real(string(real(xscale_)));
				bl_ore_.yscale = real(string(real(yscale_)));
				}
				
				
				
				
				
				//var _st_fl_p_n_ = bl_wall_num;
			
				//for(var i = 0; i < bl_wall_num; i++)
				//{
				//	var obj_ind = buffer_read(buffer, buffer_string);
				//	var xx = real(buffer_read(buffer, buffer_string));
				//	var yy = real(buffer_read(buffer, buffer_string));
				//	var img_ang = buffer_read(buffer, buffer_string);
				//	
				//	
				//	var wall_ = instance_create(xx,yy,asset_get_index(string(obj_ind)));
				//	wall_.image_angle = real(img_ang);
				//	wall_.received = 1;
				//};
				
				
				
				
				
				//var _st_fl_p_n_ = t_save_bl_parents_num;
			
				for(var i = 0; i < t_save_bl_parents_num; i++)
				{
				var obj_ind = buffer_read(buffer, buffer_string);
				var img_ind = buffer_read(buffer, buffer_string);
				var xx = real(buffer_read(buffer, buffer_string));
				var yy = real(buffer_read(buffer, buffer_string));
				
				
				var t_s_bl = instance_create(xx,yy,asset_get_index(string(obj_ind)));
				instance_activate_all()
				t_s_bl.image_index = real(img_ind);
				t_s_bl.received = 1
				};
				
				
				
				
				
				
			
				for(var i = 0; i < fur_bl_num; i++)
				{
				var obj_ind = buffer_read(buffer, buffer_string);
				var xx = real(buffer_read(buffer, buffer_string));
				var yy = real(buffer_read(buffer, buffer_string));
				var __furnacing_ore = buffer_read(buffer, buffer_string);
				var __furnacing_time = real(buffer_read(buffer, buffer_string));
				var t_s_bl = instance_create(xx,yy,asset_get_index(string(obj_ind)));
				instance_activate_all();
				t_s_bl.furnacing_ore = __furnacing_ore;
				t_s_bl.furnacing_time = real(__furnacing_time);
				t_s_bl.received = 1
				};
				
				
				
				
				for(var i = 0; i < chest_bl_num; i++)
				{
				var img_ind = buffer_read(buffer, buffer_string);
				var xx = real(buffer_read(buffer, buffer_string));
				var yy = real(buffer_read(buffer, buffer_string));
				var __chest_item = 0
				var __chest_item_num = 0
				
				for(var ii = 0; ii < 14; ii++)
				{
				__chest_item[ii] = buffer_read(buffer, buffer_string);
				__chest_item_num[ii] = buffer_read(buffer, buffer_string);
				}
				
				var t_s_bl = instance_create(xx,yy,chest);
				instance_activate_all()
				for(var ii_ = 0; ii_ < 14; ii_++)
				{
				t_s_bl.chest_item[ii_] = noone
				t_s_bl.chest_item_num[ii_] = -1
				}
					
				instance_activate_all();
				t_s_bl.image_index = img_ind;
				for(var ii = 0; ii < 14; ii++)
				{
				t_s_bl.chest_item[ii] = __chest_item[ii];
				t_s_bl.chest_item_num[ii] = real(__chest_item_num[ii]);
				}
				t_s_bl.received = 1
				instance_activate_all();
				};
				
				
				
				
				
				
				
				
				
			instance_create(x,y,BG_blind)
			alarm[0] = 30
			};
			
		break;
		case DATA.BL_ORE_STATE:
		
			//instance_activate_region(player.x-256,player.y-256,player.x+256*2,player.y+256*2, true);
			//if instance_number(player_co_op) > 0
			//{
			//instance_activate_region(player_co_op.x-256,player_co_op.y-256,player_co_op.x+256*2,player_co_op.y+256*2, true);
			//}
			saved_t_xs = real(buffer_read(buffer, buffer_string));
			
			saved_t_ys = real(buffer_read(buffer, buffer_string));
			
			saved__xx = buffer_read(buffer, buffer_string);
			
			saved__yy = buffer_read(buffer, buffer_string);
			
			var saved_a_p = buffer_read(buffer, buffer_string);
			
			saved__sender = real(buffer_read(buffer, buffer_string));
			
			saved__obj_ = instance_position(real(saved__xx),real(saved__yy),block_ore);
			
			if saved__sender != is_server
			{
				if saved__obj_ != noone
				{
				saved__obj_.txscale = real(saved_t_xs);
				saved__obj_.tyscale = real(saved_t_ys);
				saved__obj_.auto_picking = real(saved_a_p);
				}
			}
			refresh_ore_state = is_server;
			
		break;
		case DATA.CHEST_STATE:
			
			var _sender = real(string(buffer_read(buffer, buffer_string)));
			var _xx_chest = real(buffer_read(buffer, buffer_string));
			var _yy_chest = real(buffer_read(buffer, buffer_string));
			var chest_ = instance_position(_xx_chest,_yy_chest,chest);
			
			if chest_ != noone && _sender != is_server
			{
				if instance_exists(chest_)
				{
				var _open_chest = real(buffer_read(buffer, buffer_string));
				chest_.open_chest = _open_chest;
					if chest_ != 0
					{
						for(var i = 0; i < 14; i++)
						{
						chest_.chest_item[i] = (string(buffer_read(buffer, buffer_string)));
						chest_.chest_item_num[i] = real(buffer_read(buffer, buffer_string));
						}
					}
				}
			}
			
		break;
		case DATA.A_BL_STATE:
		
			//instance_activate_region(player.x-256,player.y-256,player.x+256*2,player.y+256*2, true);
			//if instance_number(player_co_op) > 0
			//{
			//instance_activate_region(player_co_op.x-256,player_co_op.y-256,player_co_op.x+256*2,player_co_op.y+256*2, true);
			//}
			if instance_number(creating_maps) = 0
			{
			saved_obj_ind_a = buffer_read(buffer, buffer_string);
			
			saved_t_xs_a = real(buffer_read(buffer, buffer_string));
			
			saved_t_ys_a = real(buffer_read(buffer, buffer_string));
			
			saved__xx_a = buffer_read(buffer, buffer_string);
			
			saved__yy_a = buffer_read(buffer, buffer_string);
			
			var obj_a_p = buffer_read(buffer, buffer_string);
			
			saved__sender_a = real(buffer_read(buffer, buffer_string));
			
			saved__obj__a = instance_position(real(saved__xx_a),real(saved__yy_a),saved_obj_ind_a);
				if saved__obj__a != noone && saved_obj_ind_a != noone
				{
				saved__obj__a.txscale = real(saved_t_xs_a);
				saved__obj__a.tyscale = real(saved_t_ys_a);
				saved__obj__a.auto_picking = real(obj_a_p);
				}
			refresh_ore_state_a = is_server;
			}
			
		break;
		case DATA.BULLET_STATE:
		var _id = buffer_read(buffer, buffer_string);
			if !instance_exists(_id)
			{
			var xx = buffer_read(buffer, buffer_string);
			var yy = buffer_read(buffer, buffer_string);
			var _bullet_ = instance_create(xx,yy,gun_bullet)
			_bullet_.received = 1
			var _semder = buffer_read(buffer, buffer_string);
			_bullet_.sender = _semder
			var spr_ind = buffer_read(buffer, buffer_string);
			_bullet_.sprite_index = real(spr_ind);
			var img_ind = buffer_read(buffer, buffer_string);
			_bullet_.image_index = real(img_ind);
			var img_alp = buffer_read(buffer, buffer_string);
			_bullet_.image_alpha = real(img_alp);
			var img_ang = buffer_read(buffer, buffer_string);
			_bullet_.image_angle = real(img_ang);
			var img_ble = buffer_read(buffer, buffer_string);
			_bullet_.image_blend = real(img_ble);
			var img_xscale = buffer_read(buffer, buffer_string);
			_bullet_.image_xscale = real(img_xscale);
			var img_yscale = buffer_read(buffer, buffer_string);
			_bullet_.image_yscale = real(img_yscale);
			var dp_ = buffer_read(buffer, buffer_string);
			_bullet_.depth = real(dp_);
			var vsp = buffer_read(buffer, buffer_string);
			_bullet_.saved_speed = real(vsp);
			var hsp = buffer_read(buffer, buffer_string);
			_bullet_.speed = real(hsp);
			var dir = buffer_read(buffer, buffer_string);
			_bullet_.direction = real(dir);
			}
		break;
		case DATA.BULLET_ENEMY_STATE:
		var _id = buffer_read(buffer, buffer_string);
			if !instance_exists(_id)
			{
			var xx = buffer_read(buffer, buffer_string);
			var yy = buffer_read(buffer, buffer_string);
			var _bullet_ = instance_create(xx,yy,gun_bullet_enemy)
			_bullet_.received = 1
			var spr_ind = buffer_read(buffer, buffer_string);
			_bullet_.sprite_index = real(spr_ind);
			var img_ind = buffer_read(buffer, buffer_string);
			_bullet_.image_index = real(img_ind);
			var img_alp = buffer_read(buffer, buffer_string);
			_bullet_.image_alpha = real(img_alp);
			var img_ang = buffer_read(buffer, buffer_string);
			_bullet_.image_angle = real(img_ang);
			var img_ble = buffer_read(buffer, buffer_string);
			_bullet_.image_blend = real(img_ble);
			var img_xscale = buffer_read(buffer, buffer_string);
			_bullet_.image_xscale = real(img_xscale);
			var img_yscale = buffer_read(buffer, buffer_string);
			_bullet_.image_yscale = real(img_yscale);
			var dp_ = buffer_read(buffer, buffer_string);
			_bullet_.depth = real(dp_);
			var vsp = buffer_read(buffer, buffer_string);
			_bullet_.saved_speed = real(vsp);
			var hsp = buffer_read(buffer, buffer_string);
			_bullet_.speed = real(hsp);
			var dir = buffer_read(buffer, buffer_string);
			_bullet_.direction = real(dir);
			var _damage = buffer_read(buffer, buffer_string);
			_bullet_.own_damage = real(_damage);
			}
		break;
		
		
		case DATA.P1_STATE:
			if is_server = false
			{
				if instance_number(player) > 0
				{
				var spr_ind = buffer_read(buffer, buffer_string);
				player.sprite_index = real(spr_ind);
				var xx = buffer_read(buffer, buffer_string);
				player.x = real(xx);
				var yy = buffer_read(buffer, buffer_string);
				player.y = real(yy);
				var img_spd = buffer_read(buffer, buffer_string);
				player.image_speed = img_spd;
				var img_ind = buffer_read(buffer, buffer_string);
				if img_spd = 0
				{
				player.image_index = real(img_ind);
				}
				var img_alp = buffer_read(buffer, buffer_string);
				player.image_alpha = real(img_alp);
				var img_ang = buffer_read(buffer, buffer_string);
				player.image_angle = real(img_ang);
				var img_ble = buffer_read(buffer, buffer_string);
				player.image_blend = real(img_ble);
				var img_xscale = buffer_read(buffer, buffer_string);
				player.image_xscale = real(img_xscale);
				var img_yscale = buffer_read(buffer, buffer_string);
				player.image_yscale = real(img_yscale);
				var dp_ = buffer_read(buffer, buffer_string);
				player.depth = real(dp_);
				var kout_origin = real(buffer_read(buffer, buffer_string));
				global.knocked_out_origin = kout_origin;
				var spin_ = real(buffer_read(buffer, buffer_string));
				player.co_op_mode_spin = spin_;
				var cannot_move_ = real(buffer_read(buffer, buffer_string));
				player.cannot_move = cannot_move_;
				var suit_col_ = buffer_read(buffer, buffer_string);
				global.suit_col_co_op = (suit_col_);
				var goggles_col_ = buffer_read(buffer, buffer_string);
				global.goggles_col_co_op = (goggles_col_);
				var shirt_run_col_ = buffer_read(buffer, buffer_string);
				global.shirt_run_col_co_op = (shirt_run_col_);
				var haz_co_op = (buffer_read(buffer, buffer_string));
				global.hazmat_co_op = haz_co_op;
				}
			}
		break;
		case DATA.P1_INHAND:
		if instance_number(pl_inhand) > 0
		{
			if is_server = false
			{
				if instance_number(pl_inhand) > 0
				{
				var spr_ind_ = buffer_read(buffer, buffer_string);
				pl_inhand.sprite_index = real(spr_ind_);
				var xx_ = buffer_read(buffer, buffer_string);
				pl_inhand.x = real(xx_);
				var yy_ = buffer_read(buffer, buffer_string);
				pl_inhand.y = real(yy_);
				var img_spd_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_speed = real(img_spd_);
				var img_ind_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_index = real(img_ind_);
				var img_alp_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_alpha = real(img_alp_);
				var img_ang_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_angle = real(img_ang_);
				var img_ble_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_blend = real(img_ble_);
				var img_xscale_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_xscale = real(img_xscale_);
				var img_yscale_ = buffer_read(buffer, buffer_string);
				pl_inhand.image_yscale = real(img_yscale_);
				var dp__ = buffer_read(buffer, buffer_string);
				pl_inhand.depth = real(dp__);
				var cl_time = buffer_read(buffer, buffer_string);
				pl_inhand.cool_time = real(cl_time);
				var swing = buffer_read(buffer, buffer_string);
				global.swing_origin = swing;
				var g_k = buffer_read(buffer, buffer_string);
				pl_inhand.gun_kind = g_k;
				var shine_self = buffer_read(buffer, buffer_string);
				global.shining_self_co_op = shine_self;
				}
			}
		}
		break;
		case DATA.P2_XX:
			if is_server = true
			{
			var xx = real(buffer_read(buffer, buffer_string));
				if instance_number(player_co_op) > 0
				{
				player_co_op.x = real(xx);
				};
			};
		break;
		case DATA.P2_YY:
			if is_server = true
			{
			var yy = real(buffer_read(buffer, buffer_string));
				if instance_number(player_co_op) > 0
				{
				player_co_op.y = real(yy);
				};
			};
		break;
		case DATA.P2_STATE:
			if is_server = true
			{
				if instance_number(player_co_op) > 0
				{
				var spr_ind = real(buffer_read(buffer, buffer_string));
				player_co_op.sprite_index = real(spr_ind);
				var img_spd = real(buffer_read(buffer, buffer_string));
				player_co_op.image_speed = img_spd;
				var img_ind = real(buffer_read(buffer, buffer_string));
				if real(img_spd) = 0
				{
				player_co_op.image_index = real(img_ind);
				}
				var img_alp = real(buffer_read(buffer, buffer_string));
				player_co_op.image_alpha = real(img_alp);
				var img_ang = real(buffer_read(buffer, buffer_string));
				player_co_op.image_angle = real(img_ang);
				var img_ble = real(buffer_read(buffer, buffer_string));
				player_co_op.image_blend = real(img_ble);
				var img_xscale = real(buffer_read(buffer, buffer_string));
				player_co_op.image_xscale = real(img_xscale);
				var img_yscale = real(buffer_read(buffer, buffer_string));
				player_co_op.image_yscale = real(img_yscale);
				var dp_ = real(buffer_read(buffer, buffer_string));
				player_co_op.depth = real(dp_);
				var kout_co_op = real(buffer_read(buffer, buffer_string));
				global.knocked_out_co_op = kout_co_op;
				var spin_ = real(buffer_read(buffer, buffer_string));
				player_co_op.co_op_mode_spin = spin_;
				var cannot_move_ = real(buffer_read(buffer, buffer_string));
				player_co_op.cannot_move = cannot_move_;
				var suit_col_1 = (buffer_read(buffer, buffer_string));
				global.suit_col_co_op = (suit_col_1);
				var goggles_col_1 = (buffer_read(buffer, buffer_string));
				global.goggles_col_co_op = (goggles_col_1);
				var shirt_run_col_1 = (buffer_read(buffer, buffer_string));
				global.shirt_run_col_co_op = (shirt_run_col_1);
				var haz_co_op = (buffer_read(buffer, buffer_string));
				global.hazmat_co_op = haz_co_op;
				};
			}
		break;
		case DATA.P2_INHAND:
		if is_server = true
		{
			if instance_number(pl_inhand_co_op) > 0
			{
			var spr_ind_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.sprite_index = real(spr_ind_);
			var xx_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.x = real(xx_);
			var yy_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.y = real(yy_);
			var img_spd_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_speed = real(img_spd_);
			var img_ind_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_index = real(img_ind_);
			var img_alp_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_alpha = real(img_alp_);
			var img_ang_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_angle = real(img_ang_);
			var img_ble_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_blend = real(img_ble_);
			var img_xscale_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_xscale = real(img_xscale_);
			var img_yscale_ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.image_yscale = real(img_yscale_);
			var dp__ = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.depth = real(dp__);
			var cl_time = real(buffer_read(buffer, buffer_string));
			pl_inhand_co_op.cool_time = real(cl_time);
			var g_k = buffer_read(buffer, buffer_string);
			pl_inhand_co_op.gun_kind = g_k
			var shine_self = buffer_read(buffer, buffer_string);
			global.shining_self_co_op = shine_self;
			}
		}
		break;
		
		case DATA.CO_OP_SWING:
			if is_server = true
			{
			var co_op_swing = real(buffer_read(buffer, buffer_string));
			var co_op_attack_damage = real(buffer_read(buffer, buffer_string));
			
			global.swing_co_op = co_op_swing;
			global.attack_damage_co_op = co_op_attack_damage;
			}
		break;
		case DATA.SWING:
			if is_server = false
			{
			var co_op_attack_damage = real(buffer_read(buffer, buffer_string));
			
			global.attack_damage_origin = co_op_attack_damage;
			}
		break;
		
		
		case DATA.O_CHEST_STATE:
		var id_ = buffer_read(buffer, buffer_string);
		
		var obj_ind_ = buffer_read(buffer, buffer_string);
		
		var xx_ = buffer_read(buffer, buffer_string);
		
		var yy_ = buffer_read(buffer, buffer_string);
		
		var spr_ind_ = buffer_read(buffer, buffer_string);
		
		var img_spd_ = buffer_read(buffer, buffer_string);
		
		var img_ind_ = buffer_read(buffer, buffer_string);
		
		var img_alp_ = buffer_read(buffer, buffer_string);
		
		var img_ang_ = buffer_read(buffer, buffer_string);
		
		var img_ble_ = buffer_read(buffer, buffer_string);
		
		var img_xscale_ = buffer_read(buffer, buffer_string);
		
		var img_yscale_ = buffer_read(buffer, buffer_string);
		
		var dp_ = buffer_read(buffer, buffer_string);
		
		var v_sp = buffer_read(buffer, buffer_string);
		
		var h_sp = buffer_read(buffer, buffer_string);
		
		var gv = buffer_read(buffer, buffer_string);
		
		var gv_dir = buffer_read(buffer, buffer_string);
		
		var lock = buffer_read(buffer, buffer_string);
		

		if id_ != "" && !(id_ < 0) && instance_exists(id_) = 0
		{
		var _obj_ = instance_create(real(xx_),real(yy_),real(obj_ind_))
		_obj_.x = real(xx_)
		_obj_.y = real(yy_)
		_obj_.sprite_index = real(spr_ind_)
		_obj_.image_speed = real(img_spd_)
		_obj_.image_index = real(img_ind_)
		_obj_.image_alpha = real(img_alp_)
		_obj_.image_angle = real(img_ang_)
		_obj_.image_blend = real(img_ble_)
		_obj_.image_xscale = real(img_xscale_)
		_obj_.image_yscale = real(img_yscale_)
		_obj_.depth = real(dp_)
		_obj_.vspeed = real(v_sp)
		_obj_.hspeed = real(h_sp)
		_obj_.gravity = real(gv)
		_obj_.gravity_direction = real(gv_dir)
		_obj_.locked = lock
		_obj_.received = 1
		}
		break;
		case DATA.O_BL_STATE:
		var id_ = buffer_read(buffer, buffer_string);
		
		var obj_ind_ = buffer_read(buffer, buffer_string);
		
		var xx_ = buffer_read(buffer, buffer_string);
		
		var yy_ = buffer_read(buffer, buffer_string);
		
		var spr_ind_ = buffer_read(buffer, buffer_string);
		
		var img_spd_ = buffer_read(buffer, buffer_string);
		
		var img_ind_ = buffer_read(buffer, buffer_string);
		
		var img_alp_ = buffer_read(buffer, buffer_string);
		
		var img_ang_ = buffer_read(buffer, buffer_string);
		
		var img_ble_ = buffer_read(buffer, buffer_string);
		
		var img_xscale_ = buffer_read(buffer, buffer_string);
		
		var img_yscale_ = buffer_read(buffer, buffer_string);
		
		var dp_ = buffer_read(buffer, buffer_string);
		
		var v_sp = buffer_read(buffer, buffer_string);
		
		var h_sp = buffer_read(buffer, buffer_string);
		
		var gv = buffer_read(buffer, buffer_string);
		
		var gv_dir = buffer_read(buffer, buffer_string);
		

		if id_ != "" && !(id_ < 0) && instance_exists(id_) = 0
		{
		var _obj_ = instance_create(real(xx_),real(yy_),real(obj_ind_))
		_obj_.x = real(xx_)
		_obj_.y = real(yy_)
		_obj_.sprite_index = real(spr_ind_)
		_obj_.image_speed = real(img_spd_)
		_obj_.image_index = real(img_ind_)
		_obj_.image_alpha = real(img_alp_)
		_obj_.image_angle = real(img_ang_)
		_obj_.image_blend = real(img_ble_)
		_obj_.image_xscale = real(img_xscale_)
		_obj_.image_yscale = real(img_yscale_)
		_obj_.depth = real(dp_)
		_obj_.vspeed = real(v_sp)
		_obj_.hspeed = real(h_sp)
		_obj_.gravity = real(gv)
		_obj_.gravity_direction = real(gv_dir)
		_obj_.received = 1
		}
		break;
		case DATA.ITEM_STATE_ORE:
		var id_ = real(buffer_read(buffer, buffer_string));
		
		var obj_ind_ = real(buffer_read(buffer, buffer_string));
		
		var xx_ = real(buffer_read(buffer, buffer_string));
		
		var yy_ = real(buffer_read(buffer, buffer_string));
		
		var spr_ind_ = real(buffer_read(buffer, buffer_string));
		
		var img_spd_ = real(buffer_read(buffer, buffer_string));
		
		var img_ind_ = real(buffer_read(buffer, buffer_string));
		
		var img_alp_ = real(buffer_read(buffer, buffer_string));
		
		var img_ang_ = real(buffer_read(buffer, buffer_string));
		
		var img_ble_ = real(buffer_read(buffer, buffer_string));
		
		var img_xscale_ = real(buffer_read(buffer, buffer_string));
		
		var img_yscale_ = real(buffer_read(buffer, buffer_string));
		
		var dp_ = real(buffer_read(buffer, buffer_string));
		
		var stucked_i_num_ = real(buffer_read(buffer, buffer_string));
		
		var fl_y_ = real(buffer_read(buffer, buffer_string));
		
		var v_sp = real(buffer_read(buffer, buffer_string));
		
		var h_sp = real(buffer_read(buffer, buffer_string));
		
		var gv = real(buffer_read(buffer, buffer_string));
		
		var gv_dir = real(buffer_read(buffer, buffer_string));
		
		var _a = real(buffer_read(buffer, buffer_string));
		

		if id_ != "" && !(id_ < 0) && instance_exists(id_) = 0
		{
		var _obj_ = instance_create(real(xx_),real(yy_),real(obj_ind_))
		_obj_.x = real(xx_)
		_obj_.y = real(yy_)
		_obj_.sprite_index = real(spr_ind_)
		_obj_.image_speed = real(img_spd_)
		_obj_.image_index = real(img_ind_)
		_obj_.image_alpha = real(img_alp_)
		_obj_.image_angle = real(img_ang_)
		_obj_.image_blend = real(img_ble_)
		_obj_.image_xscale = real(img_xscale_)
		_obj_.image_yscale = real(img_yscale_)
		_obj_.depth = real(dp_)
		_obj_.stucked_item_number = real(stucked_i_num_)
		_obj_.floor_y = real(fl_y_)
		_obj_.vspeed = real(v_sp)
		_obj_.hspeed = real(h_sp)
		_obj_.gravity = real(gv)
		_obj_.gravity_direction = real(gv_dir)
		_obj_.received_item = 1
		_obj_.a = real(_a)
		}
		break;
		case DATA.ITEM_STATE:
		var id_ = buffer_read(buffer, buffer_string);
		
		var obj_ind_ = buffer_read(buffer, buffer_string);
		
		var xx_ = buffer_read(buffer, buffer_string);
		
		var yy_ = buffer_read(buffer, buffer_string);
		
		var spr_ind_ = buffer_read(buffer, buffer_string);
		
		var img_spd_ = buffer_read(buffer, buffer_string);
		
		var img_ind_ = buffer_read(buffer, buffer_string);
		
		var img_alp_ = buffer_read(buffer, buffer_string);
		
		var img_ang_ = buffer_read(buffer, buffer_string);
		
		var img_ble_ = buffer_read(buffer, buffer_string);
		
		var img_xscale_ = buffer_read(buffer, buffer_string);
		
		var img_yscale_ = buffer_read(buffer, buffer_string);
		
		var dp_ = buffer_read(buffer, buffer_string);
		
		var stucked_i_num_ = buffer_read(buffer, buffer_string);
		
		var fl_y_ = buffer_read(buffer, buffer_string);
		
		var v_sp = buffer_read(buffer, buffer_string);
		
		var h_sp = buffer_read(buffer, buffer_string);
		
		var gv = buffer_read(buffer, buffer_string);
		
		var gv_dir = buffer_read(buffer, buffer_string);
		

		if id_ != "" && !(id_ < 0) && instance_exists(id_) = 0
		{
		var _obj_ = instance_create(real(xx_),real(yy_),real(obj_ind_))
		_obj_.x = real(xx_)
		_obj_.y = real(yy_)
		_obj_.sprite_index = real(spr_ind_)
		_obj_.image_speed = real(img_spd_)
		_obj_.image_index = real(img_ind_)
		_obj_.image_alpha = real(img_alp_)
		_obj_.image_angle = real(img_ang_)
		_obj_.image_blend = real(img_ble_)
		_obj_.image_xscale = real(img_xscale_)
		_obj_.image_yscale = real(img_yscale_)
		_obj_.depth = real(dp_)
		_obj_.stucked_item_number = real(stucked_i_num_)
		_obj_.floor_y = real(fl_y_)
		_obj_.vspeed = real(v_sp)
		_obj_.hspeed = real(h_sp)
		_obj_.gravity = real(gv)
		_obj_.gravity_direction = real(gv_dir)
		_obj_.received_item = 1
		}
		break;
		case DATA.SEND_TIME:
			if co_op_code.is_server = false && global.n_room <= 1
			{
			var d_l_a = buffer_read(buffer, buffer_string);
			var s_l_a = buffer_read(buffer, buffer_string);
			var f_l_a = buffer_read(buffer, buffer_string);
			var m_l_a = buffer_read(buffer, buffer_string);
			var gl_time = buffer_read(buffer, buffer_string);
			var rainy_ = buffer_read(buffer, buffer_string);
			var w_dir_ = buffer_read(buffer, buffer_string);
		
			objLightManager.day_light_alpha = real(d_l_a);
			objLightManager.sun_light_alpha = real(s_l_a);
			objLightManager.flash_light_alpha = real(f_l_a);
			objLightManager.moon_light_alpha = real(m_l_a);
			global.time = real(gl_time);
			global.rainy = real(rainy_);
			global.wind_dir = real(w_dir_);
			}
		break;
		case DATA.SEND_SMOG_CONDITION:
		var w_dir_ = buffer_read(buffer, buffer_string);
		global.smog = real(w_dir_);
		break
		case DATA.ONE_DATA:
			var ID = buffer_read(buffer, buffer_u8);
			var type = buffer_read(buffer, buffer_u8);
			var val_name = buffer_read(buffer, buffer_string);
			var val = buffer_read(buffer, type);
			with(obj_client_info) {
				if(playerID == ID) {
					variable_instance_set(id, val_name, val);
				};
			};
		break;
		case DATA.MUCH_DATA:
			var ID = buffer_read(buffer, buffer_u8);
			var size = buffer_read(buffer, buffer_u8);
			for(var i = 0; i < size; i++) {
				var type = buffer_read(buffer, buffer_u8);
				var val_name = buffer_read(buffer, buffer_string);
				var val = buffer_read(buffer, type);
				with(obj_client_info) {
					if(playerID == ID) {
						variable_instance_set(id, val_name, val);
					}
				}
			}
		break;
		case DATA.REMOVE_CLI:
			var socket = string(buffer_read(buffer, buffer_string));
			var nick_name_ = buffer_read(buffer, buffer_string);
			with(obj_client_info) {
			if (soc == socket) {
				instance_destroy();
				}
			}
			
			chat_up(string(nick_name_)+" left the server!",0);
			
			obj_chatbar.cli_num--;
		break;
		case DATA.BL_DESTROY:
			var _id = string(buffer_read(buffer, buffer_string));
			var _obj_ind_d = real(buffer_read(buffer, buffer_string));
			var _xx_d = real(buffer_read(buffer, buffer_string));
			var _yy_d = real(buffer_read(buffer, buffer_string));
			var _sender = real(string(buffer_read(buffer, buffer_string)));
			
			var _ins_ = instance_position(_xx_d,_yy_d,_obj_ind_d)
			if co_op_code.is_server != _sender
			{
			instance_destroy(_ins_)
			}
		break;
		
		case DATA.WORM_CREATE:
		if is_server = false
		{
			var obj_ind_head = real(buffer_read(buffer, buffer_string));
			var obj_ind_body = real(buffer_read(buffer, buffer_string));
			var _id = buffer_read(buffer, buffer_string);
			var xx = buffer_read(buffer, buffer_string);
			var yy = buffer_read(buffer, buffer_string);
			var _total_body_numbers = buffer_read(buffer, buffer_string);
			//show_message(_id)

			var _mob_ = instance_create(xx,yy,obj_ind_head)
			_mob_.origin_id = _id
			_mob_.received = 1
			_mob_.body_num = array_create(_total_body_numbers,0)
			
				for(var ii = 0; ii < _total_body_numbers; ii++)
				{
				_mob_.body_num[ii] = instance_create(x,y,obj_ind_body)
				_mob_.body_num[ii].origin_id = noone
				_mob_.body_num[ii].received = 0
					if ii < _total_body_numbers-1
					{
					_mob_.body_num[ii].image_index = 1
						if ii > 1
						{
						_mob_.body_num[ii].following_target = _mob_.body_num[ii-1]
						}
						else
						{
						_mob_.body_num[ii].following_target = _mob_.id
						}
					}
					else
					{
					_mob_.body_num[ii].following_target = _mob_.body_num[ii-1]
					_mob_.body_num[ii].image_index = 2
					}
				_mob_.body_num[ii].depth = _mob_.depth+ii
				_mob_.body_num[ii].image_xscale = _mob_.image_xscale
				_mob_.body_num[ii].image_yscale = _mob_.image_yscale
				_mob_.body_num[ii].own_damage = (_mob_.own_damage)*0.5
				_mob_.body_num[ii].hp = _mob_.hp
				_mob_.body_num[ii].body_num = ii
				_mob_.body_num[ii].parent_id = obj_ind_head.id
				}
				//////////////////////////////////////////////////////////////////////////////////////////
				for(var iii = 0; iii < _total_body_numbers; iii++)
				{
					if iii < _total_body_numbers-1
					{
					_mob_.body_num[iii].behind_body = _mob_.body_num[iii+1]
					}
					else
					{
					_mob_.body_num[iii].behind_body = noone
					}
				}
		}
		break;
		
		case DATA.WORM_BOSS_STATE:
			if is_server = false
			{
			var obj_ind = real(buffer_read(buffer, buffer_string));
			var _id = string(buffer_read(buffer, buffer_string));
			var _sprite_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _image_speed = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _image_alpha = real(buffer_read(buffer, buffer_string));
			var _image_angle = real(buffer_read(buffer, buffer_string));
			var _image_blend = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _depth = real(buffer_read(buffer, buffer_string));
			var _gravity = real(buffer_read(buffer, buffer_string));
			var _vspeed = real(buffer_read(buffer, buffer_string));
			var _hspeed = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			
			
				with(obj_ind)
				{
					if object_index = obj_ind
					{
						if self.origin_id = _id
						{
						self.sprite_index = _sprite_index
						self.x = _x
						self.y = _y
						self.image_speed = _image_speed
						self.image_index = _image_index
						self.image_alpha = _image_alpha
						self.image_angle = _image_angle
						self.image_blend = _image_blend
						self.image_xscale = _image_xscale
						self.image_yscale = _image_yscale
						self.depth = _depth
						self.gravity = _gravity
						self.vspeed = _vspeed
						self.hspeed = _hspeed
							if _hp < self.hp
							{
							var gotten_damage = self.hp - _hp
							self.hp = _hp
						
							var draw_damaged_value = instance_create(self.x,self.y,draw_damage)
							draw_damaged_value.draw_healing = 0
							draw_damaged_value.depth = self.depth-1
							draw_damaged_value.damage = gotten_damage
							}
						}
					}
				}
			}
		break;
		
		case DATA.WORM_BOSS_BODY_STATE:
			if is_server = false
			{
			var obj_ind = real(buffer_read(buffer, buffer_string));
			var _body_num = real(buffer_read(buffer, buffer_string));
			var _sprite_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _image_speed = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _image_alpha = real(buffer_read(buffer, buffer_string));
			var _image_angle = real(buffer_read(buffer, buffer_string));
			var _image_blend = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _depth = real(buffer_read(buffer, buffer_string));
			var _gravity = real(buffer_read(buffer, buffer_string));
			var _vspeed = real(buffer_read(buffer, buffer_string));
			var _hspeed = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			
			
				with(obj_ind)
				{
					if object_index = obj_ind
					{
						if self.body_num = _body_num
						{
						self.sprite_index = _sprite_index
						self.x = _x
						self.y = _y
						self.image_speed = _image_speed
						self.image_index = _image_index
						self.image_alpha = _image_alpha
						self.image_angle = _image_angle
						self.image_blend = _image_blend
						self.image_xscale = _image_xscale
						self.image_yscale = _image_yscale
						self.depth = _depth
						self.gravity = _gravity
						self.vspeed = _vspeed
						self.hspeed = _hspeed
							if _hp < self.hp
							{
							var gotten_damage = self.hp - _hp
							self.hp = _hp
						
							var draw_damaged_value = instance_create(self.x,self.y,draw_damage)
							draw_damaged_value.draw_healing = 0
							draw_damaged_value.depth = self.depth-1
							draw_damaged_value.damage = gotten_damage
							}
						}
					}
				}
			}
		break;
		
		case DATA.SLIME_CREATE:
			if is_server = false
			{
			var _id = buffer_read(buffer, buffer_string);
			//show_message(_id)
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _slime_kind = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _alpha_slime = real(buffer_read(buffer, buffer_string));

			var _slime_ = instance_create(_x,_y,slime);
			_slime_.image_xscale = _image_xscale;
			_slime_.image_yscale = _image_yscale;
			_slime_.slime_kind = _slime_kind;
			_slime_.hp = _hp;
			_slime_.received = 1
			_slime_.origin_id = _id
			_slime_.alpha_slime = _alpha_slime
			};
		break;
		case DATA.SLIME_STATE:
			if is_server = false
			{
			var _id = string(buffer_read(buffer, buffer_string));
			var _sprite_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _image_speed = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _image_alpha = real(buffer_read(buffer, buffer_string));
			var _image_angle = real(buffer_read(buffer, buffer_string));
			var _image_blend = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _depth = real(buffer_read(buffer, buffer_string));
			var _gravity = real(buffer_read(buffer, buffer_string));
			var _vspeed = real(buffer_read(buffer, buffer_string));
			var _hspeed = real(buffer_read(buffer, buffer_string));
			var _floor_y = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			
			
				with(slime)
				{
					if object_index = slime
					{
						if self.origin_id = _id
						{
						self.sprite_index = _sprite_index
						self.x = _x
						self.y = _y
						self.image_speed = _image_speed
						self.image_index = _image_index
						self.image_alpha = _image_alpha
						self.image_angle = _image_angle
						self.image_blend = _image_blend
						self.image_xscale = _image_xscale
						self.image_yscale = _image_yscale
						self.depth = _depth
						self.gravity = _gravity
						self.vspeed = _vspeed
						self.hspeed = _hspeed
						self.floor_y = _floor_y
							if _hp < self.hp
							{
							var gotten_damage = self.hp - _hp
							self.hp = _hp
						
							var draw_damaged_value = instance_create(self.x,self.y,draw_damage)
							draw_damaged_value.draw_healing = 0
							draw_damaged_value.depth = self.depth-1
							draw_damaged_value.damage = gotten_damage
							}
						}
					}
				}
			}
		break;
		
		case DATA.HUMAN_KIND_MOB_CREATE:
			if is_server = false
			{
			var _obj_ind = real(buffer_read(buffer, buffer_string));
			var _id = string(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			
			var _mob_ = instance_create(_x,_y,_obj_ind);
			_mob_.origin_id = _id;
			_mob_.max_hp = _hp;
			_mob_.hp = _hp;
			_mob_.image_xscale = _image_xscale;
			_mob_.image_yscale = _image_yscale;
			_mob_.received = 1;
			
				if _obj_ind = slime
				{
				var _sl_kind = real(buffer_read(buffer, buffer_string));
				var _alp_sl = real(buffer_read(buffer, buffer_string));
				var _ins_it = real(buffer_read(buffer, buffer_string));
				var _ins_it_ind = real(buffer_read(buffer, buffer_string));
				_mob_.slime_kind = _sl_kind;
				_mob_.alpha_slime = _alp_sl;
				_mob_.inside_item = _ins_it;
				_mob_.inside_item_index = _ins_it_ind;
				};
				
				if _obj_ind = tiny_slime
				{
				var _sl_kind = real(buffer_read(buffer, buffer_string));
				var _alp_sl = real(buffer_read(buffer, buffer_string));
				_mob_.slime_kind = _sl_kind;
				_mob_.alpha_slime = _alp_sl;
				};
			};
		break;
		case DATA.HUMAN_KIND_MOB_STATE:
			if is_server = false
			{
			var _obj_ind = real(buffer_read(buffer, buffer_string));
			var _id = string(buffer_read(buffer, buffer_string));
			var _sprite_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _image_speed = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _image_alpha = real(buffer_read(buffer, buffer_string));
			var _image_angle = real(buffer_read(buffer, buffer_string));
			var _image_blend = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _depth = real(buffer_read(buffer, buffer_string));
			var _gravity = real(buffer_read(buffer, buffer_string));
			var _vspeed = real(buffer_read(buffer, buffer_string));
			var _hspeed = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			
			
				with(_obj_ind)
				{
					if object_index = _obj_ind
					{
						if self.origin_id = _id
						{
						self.sprite_index = _sprite_index;
						self.x = _x;
						self.y = _y;
						self.image_speed = _image_speed;
						self.image_index = _image_index;
						self.image_alpha = _image_alpha;
						self.image_angle = _image_angle;
						self.image_blend = _image_blend;
						self.image_xscale = _image_xscale;
						self.image_yscale = _image_yscale;
						self.depth = _depth;
						self.gravity = _gravity;
						self.vspeed = _vspeed;
						self.hspeed = _hspeed;
							if _hp < self.hp
							{
							var gotten_damage = self.hp - _hp;
							self.hp = _hp;
							self.draw_hp = 1;
							self.alarm[4] = 90
						
							var draw_damaged_value = instance_create(self.x,self.y,draw_damage);
							draw_damaged_value.draw_healing = 0;
							draw_damaged_value.depth = self.depth-1;
							draw_damaged_value.damage = gotten_damage;
							};
						};
					};
				};
			};
		break;
		
		case DATA.CREATE_OBJ_ONLY_XY:
			var _id = buffer_read(buffer, buffer_string);
			if !instance_exists(_id)
			{
			var _object_index = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));

			var _block_ = instance_create(_x,_y,_object_index);
			_block_.image_xscale = _image_xscale;
			_block_.image_yscale = _image_yscale;
			_block_.image_index = _object_index;
			_block_.received = 1;
			};
		break;
		
		case DATA.LAB_DOOR_STATE:
		var _x = real(buffer_read(buffer, buffer_string));
		var _y = real(buffer_read(buffer, buffer_string));
		var _opened = real(buffer_read(buffer, buffer_string));
		var _is_server = real(buffer_read(buffer, buffer_string));
		
		if _is_server != is_server
		{
		var _lab_dr_ = instance_position(_x,_y,Lab_giant_door);
			if instance_exists(_lab_dr_)
			{
			_lab_dr_.opened = _opened;
			};
		};
		
		break;
		
		case DATA.CREATE_OBJ_XY_SPEED:
			var _id = string(buffer_read(buffer, buffer_string));
			
			if !instance_exists(_id)
			{
			var _object_index = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _vspeed = real(buffer_read(buffer, buffer_string));
			var _hspeed = real(buffer_read(buffer, buffer_string));

			var _block_ = instance_create(_x,_y,_object_index);
			_block_.image_xscale = _image_xscale;
			_block_.image_yscale = _image_yscale;
			_block_.image_index = _object_index;
			if _object_index = dust
			{
			_block_.avspeed = _vspeed;
			_block_.ahspeed = _hspeed;
			}
			else
			{
			_block_.vspeed = _vspeed;
			_block_.hspeed = _hspeed;
			};
			_block_.received = 1;
			};
		break;
		
		
		case DATA.CO_OP_SAVE:
		if is_server = false
		{
		global.enable_co_op_save = 1;
		global.saving_data = 1;
		code.alarm[8] = 1;
		};
		break;
		
		case DATA.ROCKET_READY:
		var _sender = real(buffer_read(buffer, buffer_string));
		
		if instance_exists(pl_rocket)
		{
			if _sender = true
			{
			pl_rocket.origin_readied = 1;
			}
			else
			{
			pl_rocket.co_op_readied = 1;
			};
		};
		break;
		
		case DATA.CO_OP_INS_CRE:
		var _x = real(buffer_read(buffer, buffer_string));
		var _y = real(buffer_read(buffer, buffer_string));
		var _obj_ind = real(buffer_read(buffer, buffer_string));
		
		var _t_obj = instance_create(_x,_y,_obj_ind);
		_t_obj.received = 1;
		break;
		
		
		
		case DATA.BAT_CREATE:
			if is_server = false
			{
			var _id = string(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));

			var _bat_ = instance_create(_x,_y,bat);
			_bat_.image_xscale = _image_xscale;
			_bat_.image_yscale = _image_yscale;
			_bat_.hp = _hp;
			_bat_.received = 1;
			_bat_.origin_id = _id;
			};
		break;
		case DATA.BAT_STATE:
			if is_server = false
			{
			var _id = string(buffer_read(buffer, buffer_string));
			var _sprite_index = real(buffer_read(buffer, buffer_string));
			var _x = real(buffer_read(buffer, buffer_string));
			var _y = real(buffer_read(buffer, buffer_string));
			var _image_speed = real(buffer_read(buffer, buffer_string));
			var _image_index = real(buffer_read(buffer, buffer_string));
			var _image_alpha = real(buffer_read(buffer, buffer_string));
			var _image_angle = real(buffer_read(buffer, buffer_string));
			var _image_blend = real(buffer_read(buffer, buffer_string));
			var _image_xscale = real(buffer_read(buffer, buffer_string));
			var _image_yscale = real(buffer_read(buffer, buffer_string));
			var _depth = real(buffer_read(buffer, buffer_string));
			var _hp = real(buffer_read(buffer, buffer_string));
			
			
				with(slime)
				{
					if object_index = slime
					{
						if self.origin_id = _id
						{
						self.sprite_index = _sprite_index;
						self.x = _x;
						self.y = _y;
						self.image_speed = _image_speed;
						self.image_index = _image_index;
						self.image_alpha = _image_alpha;
						self.image_angle = _image_angle;
						self.image_blend = _image_blend;
						self.image_xscale = _image_xscale;
						self.image_yscale = _image_yscale;
						self.depth = _depth;
							if _hp < self.hp
							{
							var gotten_damage = self.hp - _hp;
							self.hp = _hp;
						
							var draw_damaged_value = instance_create(self.x,self.y,draw_damage);
							draw_damaged_value.draw_healing = 0;
							draw_damaged_value.depth = self.depth-1;
							draw_damaged_value.damage = gotten_damage;
							};
						};
					};
				};
			};
		break;

		
		case DATA.SCENE_SYNC:
		var _sender = real(buffer_read(buffer, buffer_string));
		if is_server != _sender
		{
		global.scene_sync_co_op = 1
		};
		break;
		
		case DATA.FL_BOSS_RAID_START:
		
		var _sender = real(buffer_read(buffer, buffer_string));
		if is_server != _sender
		{
		obj_camera.setting_blind = 1;
			if instance_number(player) > 0 && instance_number(player_co_op) > 0 && instance_number(flower_boss) > 0
			{
				if point_distance(x,y,flower_boss.x,flower_boss.y) < 180
				{
				player.x = player_co_op.x;
				player.y = player_co_op.y;
				};
			};

			if instance_number(player) > 0 && instance_number(player_co_op) > 0 && instance_number(flower_boss) > 0
			{
				if point_distance(x,y,flower_boss.x,flower_boss.y) < 180
				{
				player_co_op.x = player.x;
				player_co_op.y = player.y;
				};
			};
		};
		break;
		
		case DATA.REVIVE_OTHER_PLAYER:
		var _sender = real(buffer_read(buffer, buffer_string));
			if is_server != _sender
			{
			var target_ = player;
				if global.co_op_mode = 1 && co_op_code.is_server = false
				{
				target_ = player_co_op;
				};


			global.hp = 2;
			global.o2 = global.max_o2;
			global.knocked_out = 0;
			global.stemina = 0.1;
			auto_heal = 0;
			injured_effect = 0;
			double_knocked_out_cancle = 0;
			injured_effect = 1;
			code.alarm[10] = 1;

				target_.damage_dilay = 0;
				target_.move_released = 1;
				target_.hmove_released = 1;
				target_.move_direction = 0;
				
				if co_op_code.is_server = true
				{
				pl_inhand.cool_time = 0;
				}
				else
				{
				pl_inhand_co_op.cool_time = 0;
				};
			////////////////////////////////////////////////////////////////

			obj_camera.x = target_.x;
			obj_camera.y = target_.y;
			obj_camera.tv_x = 1280/(4-(global.sight*2));
			obj_camera.tv_y = 720/(4-(global.sight*2));

			global.revived_now = 1;
			};
		break;
		
		case DATA.CHECK_VERSION:
		var _sender = real(buffer_read(buffer, buffer_string));
		var _version = real(buffer_read(buffer, buffer_string));
		if is_server != _sender
		{
			if global.game_version != _version
			{
				if global.language = 0
				{
				chat_up("Wrong version",0);
				};
				if global.language = 1
				{
				chat_up("잘못된 버전",0);
				};
				
			instance_destroy(all);
			game_restart();
			};
		};
		break;
		
		case DATA.FORCE_WIPE:
		if is_server = false
		{
		var _text_bar = instance_create(x,y,draw_debug_text)
		_text_bar.text = "Force wiped!"
			for ( var i = 0; i < ui_inv.inventory_width * ui_inv.inventory_height; i++ )
			{
			    /* 장비 */

			    //아이템 이름을 담을 배열
			    ui_inv.inventory_item_equip[i] = noone;
    
			    //아이템의 갯수를 담을 배열
			    ui_inv.inventory_num_equip[i] = -1;
        
			    //아이템의 스프라이트를 담을 배열
			    ui_inv.inventory_spr[i] = none_sprite;
	
				//아이템의 이미지 인덱스를 담을 배열 
				ui_inv.inventory_img_index[i] = -1;
			};
		};
		break;
		
		case DATA.PLUS_SURVIVAL_DAYS:
		if global.co_op_mode = 1 && is_server = false
		{
		global.survived_days ++;
		};
		break;
		
		case DATA.BOMB_EFFECT:
		var _sender = real(buffer_read(buffer, buffer_string));
		var _x = real(buffer_read(buffer, buffer_string));
		var _y = real(buffer_read(buffer, buffer_string));
		var _time = real(buffer_read(buffer, buffer_string));
		var _length = real(buffer_read(buffer, buffer_string));
		
		if is_server != _sender
		{
		var _bomb_ef_ = instance_create(_x,_y,bomb_fire_effect);
		_bomb_ef_.length = _length;
		_bomb_ef_.time = _time;
		_bomb_ef_.received = 1;
		};
		break;
		

		case DATA.METEORITE:
		if is_server = false
		{
			if global.language = 0
			{
			var _text_bar = instance_create(x,y,draw_debug_text);
			_text_bar.text = "Meteorite has fallen somewhere!";
			};

			if global.language = 1
			{
			var _text_bar = instance_create(x,y,draw_debug_text);
			_text_bar.text = "어딘가에 운석이 떨어졌습니다!";
			};
		};
		break;
		
		
		case DATA.SLEEP:
		var _sender = real(buffer_read(buffer, buffer_string));
		var _nickname = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
		global.sleeping_co_op = 1
			if global.language = 0
			{
			var _text_bar = instance_create(x,y,draw_debug_text);
			_text_bar.text = string(_nickname)+" falled asleep";
			};

			if global.language = 1
			{
			var _text_bar = instance_create(x,y,draw_debug_text);
			_text_bar.text = string(_nickname)+" 이/가 잠들었습니다";
			};
		};
		break;
		
		
		case DATA.QUEST_SYNC:
		var _sender = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
			for(var i = 0; i < 99; i++)
			{
			var _quest = real(buffer_read(buffer, buffer_string));
			global.npc_event[i] = _quest;
			};
		};
		break;
		
		case DATA.CHAT_SYNC:
		var _sender = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
		global.waiting_o_p_chat = 1;
		};
		break;
		
		case DATA.CHOICE_CHAT_SYNC:
		var _sender = buffer_read(buffer, buffer_string);
		var _co_op_choice = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
		global.choice_choosed_co_op = _co_op_choice;
		};
		break;
		
		case DATA.CHOICE_CHOOSED:
		var _sender = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
		global.choice_choosed_already_co_op = 1;
		};
		break;
		
		case DATA.FORCED_CHOOSED:
		var _sender = buffer_read(buffer, buffer_string);
		var _choice_ = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
			if instance_exists(draw_choice_text)
			{
			draw_choice_text.your_choose = real(_choice_);
			}
		};
		break;
		
		case DATA.FLOWER_BOSS_RESEARCH:
		var _sender = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
			if instance_exists(flower_boss)
			{
			flower_boss.searched = 0.5
			}
		};
		break;
		
		case DATA.GRILL_FLOOR:
		var _sender = buffer_read(buffer, buffer_string);
		var _x = buffer_read(buffer, buffer_string);
		var _y = buffer_read(buffer, buffer_string);
		var _a = buffer_read(buffer, buffer_string);
		var _b = buffer_read(buffer, buffer_string);
		var _c = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
		var _id = instance_position(_x,_y,grill_floor);
			if _id
			{
				if _id.watered_alpha < _a
				{
				_id.watered_alpha = _a;
				}
				if _id.watered_alpha_crimson < _b
				{
				_id.watered_alpha_crimson = _b;
				}
				if _id.watered_alpha_polluted < _c
				{
				_id.watered_alpha_polluted = _c;
				}
			};
		};
		break;
		
		
		case DATA.BL_FURNACE_STATE:
		var _sender = buffer_read(buffer, buffer_string);
		if is_server != _sender
		{
		var _x_ = real(buffer_read(buffer, buffer_string));
		var _y_ = real(buffer_read(buffer, buffer_string));
		var _obj_ind = buffer_read(buffer, buffer_string);
		var _time = real(buffer_read(buffer, buffer_string));
		var _item = buffer_read(buffer, buffer_string);
		
		
			if chat_log != 0
			{
			instance_destroy(chat_log);
			chat_log = 0;
			};


		var _ins_ = instance_position(_x_,_y_,_obj_ind);
		_ins_.furnacing_ore = _item;
		_ins_.furnacing_time = _time;
		}
		break;

	}
	if (is_server) {
		send_all(buffer);
	}
}





}