/// @description 인위적 지역 생성 - LAB

if global.co_op_mode = true
{
	if global.cave_floor <= 1
	{
	last_room_width = room_width
	last_room_height = room_height


	room_width = last_room_width+3200
	global.cave_floor++
	}
	
	
	if co_op_code.is_server = true
	{
	player.x = global.room_size+3200-2624+1600+32
	player.y = 150+1077-16
	obj_camera.x = global.room_size+3200-2624+1600+32
	obj_camera.y = 150+1077-16
	}
	else
	{
	player_co_op.x = global.room_size+3200-2624+1600+32
	player_co_op.y = 150+1077-16
	obj_camera.x = global.room_size+3200-2624+1600+32
	obj_camera.y = 150+1077-16
	}
	
	
	if instance_number(player) > 0 && instance_number(player_co_op) > 0 && point_distance(player.x,player.y,player_co_op.x,player_co_op.y) <= 32
	{
		instance_activate_all()
		instance_destroy(fl_cave)
		instance_destroy(create_lab)
		instance_destroy(floor_pl15)
	
		if instance_number(fl_water) = 0
		{
		instance_create(0,0,fl_water)
		}
		instance_activate_all()

		global.n_room = 3
		chat_up("You entered to the lab",0)


		instance_create(global.room_size+3200-2624+1600-16,192+1077+110,create_lab)
		instance_create(global.room_size+3200-2624,64,fl_cave)
		instance_destroy(fl_water)
	
		instance_activate_all()
		instance_destroy(obj_droped_item_parents)
		instance_activate_all()
	}
	else
	{
	alarm[2] = 1
	}
}
else
{
	instance_activate_all()
	instance_destroy(fl_cave)
	instance_destroy(create_lab)
	instance_destroy(floor_pl15)
	
	if instance_number(fl_water) = 0
	{
	instance_create(0,0,fl_water)
	}
	instance_activate_all()

	global.n_room = 3
	chat_up("You entered to the lab",0)

	if global.cave_floor <= 1
	{
	last_room_width = room_width
	last_room_height = room_height


	room_width = last_room_width+3200
	global.cave_floor++
	}


	instance_create(global.room_size+3200-2624+1600-16,192+1077+110,create_lab)
	instance_create(global.room_size+3200-2624,64,fl_cave)
	instance_destroy(fl_water)
	
	instance_activate_all()
	instance_destroy(obj_droped_item_parents)
	instance_activate_all()
	
	if co_op_code.is_server = true
	{
	player.x = global.room_size+3200-2624+1600+32
	player.y = 150+1077-16
	obj_camera.x = global.room_size+3200-2624+1600+32
	obj_camera.y = 150+1077-16
	}
	else
	{
	player_co_op.x = global.room_size+3200-2624+1600+32
	player_co_op.y = 150+1077-16
	obj_camera.x = global.room_size+3200-2624+1600+32
	obj_camera.y = 150+1077-16
	}
}

global.saving_data = 0