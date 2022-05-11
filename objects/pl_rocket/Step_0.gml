if global.co_op_mode = 1
{
instance_activate_all()
	if instance_number(player_co_op) = 0 && created = 0
	{
	p_c_ins = instance_create(room_width*0.5,room_width*0.5,player_co_op)
	p_c_ins.image_alpha = -1
	created = 1
	}
}

if text_cre = 0
{
global.black_blind = 1
global.do_not_move2 = 1
global.drawing_cancle_ui = 1
}


if text_cre = 1
{
	var target = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target = player_co_op
	}
	
	if target.image_alpha < 1
	{
	target.image_alpha += 0.1
	}
	
	if player_drop_anime = 0
	{
		if co_op_code.is_server = true
		{
		origin_readied = 1
		}
		else
		{
		co_op_readied = 1
		}
		
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.ROCKET_READY);
	buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
	send_all(chat_buffer);
	player_drop_anime = 1
	}
	
	if origin_readied = 1 && co_op_readied = 1
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.ROCKET_READY);
	buffer_write(chat_buffer, buffer_string, co_op_code.is_server);

	global.black_blind = 0
		if obj_camera.b_blind < 0.01
		{
		obj_camera.b_blind = 0
		instance_destroy()
		global.drawing_cancle_ui = 0
		global.do_not_move2 = 0
		obj_camera.tv_x = 1280/(4-(global.sight*2))
		obj_camera.tv_y = 720/(4-(global.sight*2))
		instance_activate_all()
			if instance_number(block_home) > 0
			{
			obj_camera.x = block_home.x+37
			obj_camera.y = block_home.y+37
			x = block_home.x+37
			y = block_home.y+37
			}
		}
	}
}


if instance_number(creating_maps) = 0
{
	if text_cre = 0
	{
	text_cre = 0.5
	instance_create(x,y,draw_prolog_text)
	obj_camera.tv_x = 1280/(4-(global.sight*2))
	obj_camera.tv_y = 720/(4-(global.sight*2))
	instance_activate_all()
	if instance_number(block_home) > 0
	{
	obj_camera.x = block_home.x+37
	obj_camera.y = block_home.y+37
	x = block_home.x+37
	y = block_home.y+37
	}
	}

}