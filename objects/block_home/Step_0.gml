/// @description Insert description here
// You can write your code in this editor
#region//플레이어 근처가 아닌경우 노클립 블럭 비활성화
if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
		if point_distance(x,y,player.x,player.y) > 128
		{
		instance_deactivate_object(noclip_block)
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
		if point_distance(x,y,player_co_op.x,player_co_op.y) > 128
		{
		instance_deactivate_object(noclip_block)
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}

#endregion





if choice = 0.5
{
	if instance_number(draw_choice_text) = 0
	{
	choice = global.choice_choosed
	}
}

if choice = 1
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
	if global.playing_scene = 0 && global.sleeping = 0
	{
	global.playing_scene = 1
	global.do_not_move2 = 1
	global.movement_speed = 0
	global.hmovement_speed = 0
	global.sleeping = 1
	
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.SLEEP);
	buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
	buffer_write(chat_buffer, buffer_string, global.nickname);
	send_all(chat_buffer);
	
	target_.spin = 14
	choice = 0
	}
}








if instance_exists(noclip_block)
{
noclip_block.image_xscale = 1.9
noclip_block.image_yscale = 1.15
noclip_block.x = x
noclip_block.y = y+6
}
depth = -(y + 30)



var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}

if global.sleeping = 1
{
global.movement_speed = 0
global.hmovement_speed = -1
target_.image_alpha -= 0.05
}

if global.sleeping = 0.5
{
global.movement_speed = 0
	if target_.image_alpha < 1
	{
	target_.image_alpha += 0.05
		if target_.image_alpha > 0
		{
		global.hmovement_speed = 0.1
		}
	}
	else
	{
		if global.npc_event[97] = 2
		{
		x = room_width*0.5
		y = room_height*0.5
		}
		
	global.sleeping = 0
	global.playing_scene = 0
	global.do_not_move2 = 0
	global.black_blind = 0
	global.movement_speed = 0
	global.hmovement_speed = 0
	}
}


if global.co_op_mode = 1
{
	if global.sleeping = 1 && global.sleeping_co_op = 1
	{
	global.black_blind = 1
		if co_op_code.is_server = true && global.npc_event[97] = -1
		{
		global.npc_event[97] = choose(-1,-1,-1,-1,-1,-1,-1,0)
			if buffer_exists(chat_buffer)
			{	
			buffer_seek(chat_buffer, buffer_seek_start, 0);
			buffer_write(chat_buffer, buffer_u8, DATA.QUEST_SYNC);
			buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
			for(var i = 0; i < 99; i++)
			{
			buffer_write(chat_buffer, buffer_string, global.npc_event[i]);
			}
			send_all(chat_buffer);
			};
		}
		
		if obj_camera.b_blind > 1.25 && target_.image_alpha <= -1
		{
			if global.npc_event[97] = 2
			{
			global.npc_event[97] = 3
			var target_ = player
				if global.co_op_mode = 1 && co_op_code.is_server = false
				{
				target_ = player_co_op
				}
			global.npc_event[97] = 3
			target_.x = room_width*0.5
			target_.y = room_height*0.5
			target_.image_alpha = 1
				if instance_number(astronaut_npc_lab_builder) > 0
				{
				astronaut_npc_lab_builder.x = room_width*0.5+32
				astronaut_npc_lab_builder.y = room_height*0.5
				}
				else
				{
				var _mob = instance_create(room_width*0.5+32,room_height*0.5,astronaut_npc_lab_builder)
				_mob.received = 0
				}
			}
		global.black_blind = 0
		global.sleeping = 0.5
		global.sleeping_co_op = 0
		global.stemina = global.max_stemina
		global.hp = global.max_hp
		global.o2 = global.max_o2
		global.time = 3333*7
		global.survived_days ++
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.PLUS_SURVIVAL_DAYS);
		send_all(chat_buffer);
			if co_op_code.is_server = true && global.a_m_save_craft_window = 0 && global.n_room > 0
			{
				if code.auto_save_time < global.a_save*3600//*60
				{
				code.auto_save_time = 0
				code.alarm[8] = 2
				}
			}
		}
	}
}
else
{
	if global.sleeping = 1
	{
		if co_op_code.is_server = true && global.npc_event[97] = -1
		{
		global.npc_event[97] = choose(-1,-1,-1,-1,-1,-1,-1,0)
			if buffer_exists(chat_buffer)
			{	
			buffer_seek(chat_buffer, buffer_seek_start, 0);
			buffer_write(chat_buffer, buffer_u8, DATA.QUEST_SYNC);
			buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
			for(var i = 0; i < 99; i++)
			{
			buffer_write(chat_buffer, buffer_string, global.npc_event[i]);
			}
			send_all(chat_buffer);
			};
		}
		

	global.black_blind = 1
		if obj_camera.b_blind > 1.25 && target_.image_alpha <= -1
		{
			if global.npc_event[97] = 2
			{
			var target_ = player
				if global.co_op_mode = 1 && co_op_code.is_server = false
				{
				target_ = player_co_op
				}
			global.npc_event[97] = 3
			target_.x = room_width*0.5
			target_.y = room_height*0.5
			target_.image_alpha = 1
				if instance_number(astronaut_npc_lab_builder) > 0
				{
				astronaut_npc_lab_builder.x = room_width*0.5+32
				astronaut_npc_lab_builder.y = room_height*0.5
				}
				else
				{
				var _mob = instance_create(room_width*0.5+32,room_height*0.5,astronaut_npc_lab_builder)
				_mob.received = 0
				}
			}
		global.black_blind = 0
		global.sleeping = 0.5
		global.sleeping_co_op = 0
		global.stemina = global.max_stemina
		global.hp = global.max_hp
		global.o2 = global.max_o2
		global.time = 3333*7
		global.survived_days ++
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.PLUS_SURVIVAL_DAYS);
		send_all(chat_buffer);
		}
	}
}