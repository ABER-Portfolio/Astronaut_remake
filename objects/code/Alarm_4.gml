/// @description 인위적 지역 생성 - CAVE



		instance_activate_all()
		instance_destroy(fl_cave)
		instance_destroy(create_cave)
			for(var i = 10; i < 14; i++)
			{
			instance_destroy(asset_get_index("floor_pl"+string(i)))
			}
	
			if instance_number(fl_water) = 0
			{
			instance_create(0,0,fl_water)
			}
		instance_activate_all()

		global.n_room = 2
		chat_up("You fell down to the deep cave!",0)

		if global.cave_floor <= 1
		{
		last_room_width = room_width
		last_room_height = room_height


		room_width = last_room_width+3000
		}



		if co_op_code.is_server = true
		{
		instance_create(last_room_width+1500,360,create_cave)
		instance_create(last_room_width+1500,360,fl_cave)
		instance_destroy(fl_water)

		player.x = last_room_width+1500
		player.y = 360
		player.cannot_move = 1
		obj_camera.x = last_room_width+1500
		obj_camera.y = 360
		global.playing_scene = 1
		
		var _scene_mob = instance_create(player.x,player.y-300,fallen_scene)
		_scene_mob.scene_kind = 1

		instance_activate_all()
		instance_destroy(obj_droped_item_parents)
		instance_activate_all()
		}
		else
		{
		instance_create(last_room_width+1500,360+3000,create_cave)
		instance_create(last_room_width+1500,360+3000,fl_cave)
		instance_destroy(fl_water)
	
		player_co_op.x = last_room_width+1500
		player_co_op.y = 360+3000
		player_co_op.cannot_move = 1
		obj_camera.x = last_room_width+1500
		obj_camera.y = 360+3000
		global.playing_scene = 1
		
		var _scene_mob = instance_create(player_co_op.x,player_co_op.y-300,fallen_scene)
		_scene_mob.scene_kind = 1

		instance_activate_all()
		instance_destroy(obj_droped_item_parents)
		instance_activate_all()
		}
















	global.go_to_other_room = 0
	global.saving_data = 0
