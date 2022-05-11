/// @description creating new map

///////////////////////////////맵 생성관련///////////////////////////////

var round_room_size = round(global.room_size/10000)

if new_map = 1
{
#region//처음 맵생성
////정보 로드
if loading_kinds = -1
{
instance_activate_object(fl_parents)
instance_activate_object(all_blocks_parents)
with(all){randomize()}


loading_dis ++
	if loading_dis > 55*round_room_size
	{
	loading_dis = 0
	loading_kinds++
	first_island_creating = 1
	}
}



///////////////////////////////////////지형 생성///////////////////////////////////////////
if loading_kinds = 1
{
room_speed = 200

	if first_island_creating = 0
	{
	instance_activate_object(co_op_code)
	instance_activate_object(obj_camera)
	instance_activate_object(fl_parents)
	instance_activate_object(create_island)
	instance_activate_object(polluted_flower_boss_island)
	instance_activate_object(radiation_elec_rod_island)
	instance_activate_object(obj_water_wave)
	instance_activate_object(island_create_here)
	
	repeat(room_width/20)
	{
	var random_x = irandom_range(0,room_width/32)
	var random_y = irandom_range(0,room_height/32)
	instance_activate_all()
		if position_meeting(random_x*32,random_y*32,fl_parents)
		{
		var c_ore = instance_create(random_x*32,random_y*32,block_barrel)
		c_ore.received = 1
		}
	}
	
	repeat(room_width/80)
	{
	var random_x = irandom_range(0,room_width/32)
	var random_y = irandom_range(0,room_height/32)
	instance_activate_all()
		if position_meeting(random_x*32,random_y*32,fl_parents)
		{
		random_creates(random_x*32,random_y*32);
		}
		
		
	randomize()
	instance_create(irandom_range(room_width*0.2,room_width*0.8),irandom_range(room_width*0.2,room_width*0.8),island_create_here)
	}
	
	repeat(room_width/200)
	{
	randomize()
	instance_create(irandom_range(room_width*0.5-320,room_width*0.5+320),irandom_range(room_width*0.5-320,room_width*0.5+320),island_create_here)
	}
	
	instance_activate_object(island_create_here)
	for(var i = 0; i < room_width/32; i++)
	{
		for(var ii = 0; ii < room_width/32; ii++)
		{
			if position_meeting(i*32,ii*32,island_create_here) && !place_meeting(i*32,ii*32,fl_parents)
			{
			instance_create(i*32,ii*32,floor_pl0)
			}
		}
	}
	
	instance_create(room_width*0.5,room_height*0.5,create_first_island)
	instance_destroy(island_create_here)
	}

first_island_creating = 1
//////////////////////////////////////////////////////
	
	


max_loading_dis = 64*round(global.room_size/3000)
loading_dis ++
	if loading_dis > max_loading_dis
	{
	loading_dis = 0
	loading_kinds++
	}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////특정 지형 생성///////////////////////////////////////////
if loading_kinds = 0
{
instance_activate_object(obj_camera)
instance_activate_object(fl_parents)
instance_activate_object(polluted_flower_boss_island)
instance_activate_object(radiation_elec_rod_island)
instance_deactivate_object(obj_water_wave)
instance_activate_object(all_blocks_parents)
randomize()
var create_x = irandom_range(0,global.room_size)
var create_y = irandom_range(0,global.room_size)

randomize()
var create_x2 = irandom_range(0,global.room_size)
var create_y2 = irandom_range(0,global.room_size)

randomize()
var create_x3 = irandom_range(0,global.room_size)
var create_y3 = irandom_range(0,global.room_size)


if first_island_creating = 1
{
instance_activate_object(all_blocks_parents)
instance_activate_object(polluted_flower_boss_island)
instance_create(global.room_size*0.5,global.room_size*0.1+192,polluted_flower_boss_island)
first_island_creating++
}




if (point_distance(room_width*0.5,room_height*0.5,create_x2,create_y2) < 660 || room_width*0.5 < create_x2 || room_height*0.5 < create_y2)
{
var create_x2 = irandom_range(0,global.room_size)
var create_y2 = irandom_range(0,global.room_size)
}
else
{
	if first_island_creating = 2
	{
	instance_activate_object(all_blocks_parents)
	instance_activate_object(radiation_elec_rod_island)
	instance_create(320,320,radiation_elec_rod_island)
	var _des_fl = instance_create(320,320,destroy_floor)
	_des_fl.image_xscale = 1.8
	_des_fl.image_yscale = 1.8
	first_island_creating++
	}
}





	if first_island_creating = 3
	{
	instance_activate_object(all_blocks_parents)
	instance_activate_object(ice_lab_island)
	instance_create(global.room_size/2+320,global.room_size/2-320,ice_lab_island)
	instance_create(global.room_size/2,global.room_size/2,create_island)
	instance_create(global.room_size/2,global.room_size/2+320,create_island)
	first_island_creating++
	}





if first_island_creating = 4
{
loading_dis ++
}



max_loading_dis = 20
	if loading_dis > max_loading_dis
	{
	instance_create(global.room_size*0.5,global.room_size*0.1,island_biome_polluted)
	instance_create(global.room_size*0.1,global.room_size*0.1,island_biome_desert)
	instance_create(global.room_size*0.15,global.room_size*0.85,island_biome_crimson)
	instance_create(global.room_size*0.9,global.room_size*0.1,island_biome_ice)
	randomize()
	repeat(irandom_range(1,3))
	{
	randomize()
	instance_create(irandom_range(global.room_size*0.1,global.room_size*0.9),0,river_creater)
	}
	loading_dis = 0
	loading_kinds++
	first_island_creating = 0
	}
}


///////////////////////////////////////바이옴 설정///////////////////////////////////////////
if loading_kinds = 2
{
instance_activate_object(fl_parents)
instance_deactivate_object(obj_water_wave)
instance_activate_object(do_not_change_biome_here)
instance_activate_all()


if loading_dis < 10
{
	//일반지형 변경
	if instance_number(floor_pl0) > 0
	{
	floor_pl0.alarm[11] = 1
	}

	//얼음지형 변경
	if instance_number(floor_pl3) > 0
	{
	floor_pl3.alarm[11] = 1
	}

	//사막지형 변경
	if instance_number(floor_pl4) > 0
	{
	floor_pl4.alarm[11] = 1
	}
}
	
//바이옴에 따라 광물 종류 설정
instance_deactivate_object(fl_parents)
instance_deactivate_object(obj_water_wave)
instance_activate_object(all_blocks_parents)
instance_activate_all()
if instance_number(block_ore) > 0
{
block_ore.alarm[2] = 1
}


instance_activate_all()
floor_pl_parents.alarm[9] = 1
floor_pl_parents.alarm[10] = 1
max_loading_dis = 70
loading_dis ++


	if loading_dis > max_loading_dis
	{
	instance_activate_all()
	instance_destroy(island_biome_desert)
	instance_destroy(island_biome_ice)
	instance_destroy(island_biome_polluted)
	instance_destroy(island_biome_crimson)
	instance_destroy(destroy_floor)
	loading_dis = 0
	loading_kinds++
	}
}


///////////////////////////////////////오브젝트 생성///////////////////////////////////////////
if loading_kinds = 3
{

max_loading_dis = 20*round(global.room_size/60000)
loading_dis ++
	if loading_dis > max_loading_dis
	{
	loading_dis = 0
	loading_kinds++
	}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////세계 불러오기 종료///////////////////////////////////////////
if loading_kinds = 4
{
room_speed = 60
deactive = 1

max_loading_dis = 200*round_room_size
loading_dis ++
	if loading_dis > max_loading_dis
	{
	loading_dis = 0
	loading_kinds++
	}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////로딩 완료중///////////////////////////////////////////
if loading_kinds = 5
{
deactive = 1
obj_camera.setting_blind += (1.5 - obj_camera.setting_blind)*0.01

loading_dis ++
max_loading_dis = 120
	if loading_dis > max_loading_dis
	{
		if co_op_code.is_server = true
		{
		global.all_map_num ++
		}
	loading_dis = 0
	loading_kinds++
	}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////로딩끝///////////////////////////////////////////
if global.a_m_c_save = -1
{
	if loading_kinds = 6 && global.server_open = false
	{
	room_speed = 60
	deactive = 1


	//리스폰 장소
	//ini_write_real("map_"+string(own_global_map),"a10000",global.respawn_x)
	//ini_write_real("map_"+string(own_global_map),"a10001",global.respawn_y)

	//정보 세이브
	//code.alarm[11] = 1


	obj_camera.v_x = 1280/4.5
	obj_camera.v_y = 720/4.5
	obj_camera.tv_x = 1280/4.5
	obj_camera.tv_y = 720/4.5

	//BG_blind.alarm[2] = 1

	instance_destroy(BG_blind)
	instance_destroy(blinding)
	instance_activate_object(do_not_change_biome_here)
	instance_destroy(do_not_change_biome_here)

	instance_destroy()

	}
	
	
	
	
		if global.server_open = true
		{
			if loading_kinds = 6
			{
			global.saving_data = -1
			obj_camera.v_x = global.room_size
			obj_camera.v_y = global.room_size
			obj_camera.tv_x = global.room_size
			obj_camera.tv_y = global.room_size
			deactive = -1
			max_loading_dis = 1
			instance_activate_all()
		

	
				if loading_dis > max_loading_dis
				{
				loading_dis = 0
				loading_kinds++
				}
			}
		
			if loading_kinds = 7
			{
			room_speed = 60
			deactive = 1

			//리스폰 장소
			//ini_write_real("map_"+string(own_global_map),"a10000",global.respawn_x)
			//ini_write_real("map_"+string(own_global_map),"a10001",global.respawn_y)

			//정보 세이브
			//code.alarm[11] = 1


			obj_camera.v_x = 1280/4.5
			obj_camera.v_y = 720/4.5
			obj_camera.tv_x = 1280/4.5
			obj_camera.tv_y = 720/4.5

			//BG_blind.alarm[2] = 1

			instance_destroy(BG_blind)
			instance_destroy(blinding)

			global.saving_data = 0
			instance_destroy()
			}
		}
}
else
{
	if loading_kinds = 6
	{
	deactive = -1
	max_loading_dis = 1
	instance_activate_all()
	loading_dis ++
	
		if loading_dis > max_loading_dis
		{
		loading_dis = 0
		loading_kinds++
		}
	}
	
		if loading_kinds = 7 && global.server_open = false
		{
		room_speed = 60
		deactive = 1

		//리스폰 장소
		//ini_write_real("map_"+string(own_global_map),"a10000",global.respawn_x)
		//ini_write_real("map_"+string(own_global_map),"a10001",global.respawn_y)

		//정보 세이브
		//code.alarm[11] = 1


		obj_camera.v_x = 1280/4.5
		obj_camera.v_y = 720/4.5
		obj_camera.tv_x = 1280/4.5
		obj_camera.tv_y = 720/4.5

		//BG_blind.alarm[2] = 1

		instance_destroy(BG_blind)
		instance_destroy(blinding)

		instance_destroy()
		}
		
		
		
		
		if global.server_open = true
		{
			if loading_kinds = 7
			{
			obj_camera.v_x = global.room_size
			obj_camera.v_y = global.room_size
			obj_camera.tv_x = global.room_size
			obj_camera.tv_y = global.room_size
			deactive = -1
			max_loading_dis = 1
			instance_activate_all()
		

	
				if loading_dis > max_loading_dis
				{
				loading_dis = 0
				loading_kinds++
				}
			}
		
			if loading_kinds = 8
			{
			obj_camera.setting_blind = 1
			room_speed = 60
			deactive = 1

			//리스폰 장소
			//ini_write_real("map_"+string(own_global_map),"a10000",global.respawn_x)
			//ini_write_real("map_"+string(own_global_map),"a10001",global.respawn_y)

			//정보 세이브
			//code.alarm[11] = 1


			obj_camera.v_x = 1280/4.5
			obj_camera.v_y = 720/4.5
			obj_camera.tv_x = 1280/4.5
			obj_camera.tv_y = 720/4.5

			//BG_blind.alarm[2] = 1

			instance_destroy(BG_blind)
			instance_destroy(blinding)

			instance_destroy()
			}
		}
}


#endregion
}

if new_map = -1
{
	if loading_kinds = -1
	{
		
		ini_open("Astronaut_map_pro_"+string(global.map_num)+".ini")
		//바닥 로드
		global.fl_block_all_num = ini_read_real("fl_ins_num","a",0)

		//광석 블럭 로드
		global.ore_block_all_num = ini_read_real("bl_ins_num","a1",0)

		//벽 블럭 로드
		global.wall_block_all_num = ini_read_real("bl_ins_num","a2",0)

		//나머지 블럭 로드
		global.block_all_num = ini_read_real("bl_ins_num","a3",0)
		
		//용광로 블럭 로드
		global.furnace_block_all_num = ini_read_real("bl_ins_num","a4",0)
		
		//상자 블럭 로드
		global.chest_block_all_num = ini_read_real("bl_ins_num","a5",0)

		global.meteor_num = ini_read_real("meteor_num","a",0)
		global.flower_boss_killed = ini_read_real("flower_boss_killed","a",0)
		global.room_size = ini_read_real("map_size","a",7040)
		
		global.flower_boss_x = ini_read_real("flower_boss","x"+string(global.map_num),-1);
		global.flower_boss_y = ini_read_real("flower_boss","y"+string(global.map_num),-1);
		ini_close()
		
		room_width = global.room_size
		room_height = global.room_size







		#region//바닥 불러오기

		ini_open("Astronaut_map_"+string(global.map_num)+".ini")


		for(var i = 0; i < global.fl_block_all_num; i++)
		{
		global._object_index[i] = ini_read_string("fl"+string(i),"object_index",0);
		global._x1[i] = ini_read_real("fl"+string(i),"x",0);
		global._y1[i] = ini_read_real("fl"+string(i),"y",0);
		loading_dis++;
		}



		//광석블럭 로드
		for(var ii = 0; ii < global.ore_block_all_num; ii++)
		{
		global._sprite_index[ii] = ini_read_string("bl"+string(ii),"sprite_index",0);
		global._image_index[ii] = ini_read_real("bl"+string(ii),"image_index",0);
		global._x2[ii] = ini_read_real("bl"+string(ii),"x",0);
		global._y2[ii] = ini_read_real("bl"+string(ii),"y",0);
		global._block_num[ii] = ini_read_real("bl"+string(ii),"block_num",0);
		global._item_num[ii] = ini_read_real("bl"+string(ii),"item_num",0);
		global._stone_color[ii] = ini_read_real("bl"+string(ii),"stone_color",0);
		global._xscale[ii] = ini_read_real("bl"+string(ii),"xscale",0);
		global._yscale[ii] = ini_read_real("bl"+string(ii),"yscale",0);
		loading_dis++;
		};


		//벽 블럭 로드
		for(var iii = 0; iii < global.wall_block_all_num; iii++)
		{
		global._object_index2[iii] = ini_read_string("bl_2"+string(iii),"object_index",0);
		global._x3[iii] = ini_read_real("bl_2"+string(iii),"x",0);
		global._y3[iii] = ini_read_real("bl_2"+string(iii),"y",0);
		global._image_angle[iii] = ini_read_real("bl_2"+string(iii),"image_angle",0);
		loading_dis++;
		};


		//나머지 블럭 로드
		for(var iiii = 0; iiii < global.block_all_num; iiii++)
		{
		global._object_index3[iiii] = ini_read_string("bl__3"+string(iiii),"object_index",0);
		global._image_index2[iiii] = ini_read_real("bl__3"+string(iiii),"image_index",0);
		global._x4[iiii] = ini_read_real("bl__3"+string(iiii),"x",0);
		global._y4[iiii] = ini_read_real("bl__3"+string(iiii),"y",0);
		loading_dis++;
		};
		
		
		//용광로 블럭 로드
		for(var iiiii = 0; iiiii < global.furnace_block_all_num; iiiii++)
		{
		global._object_index4[iiiii] = ini_read_string("bl__fur"+string(iiiii),"object_index",0);
		global._x5[iiiii] = ini_read_real("bl__fur"+string(iiiii),"x",0);
		global._y5[iiiii] = ini_read_real("bl__fur"+string(iiiii),"y",0);
		var _obj_name = ini_read_string("bl__fur"+string(iiiii),"furnacing_ore",0)
		
		if _obj_name = "noone"
		{
		global._furnacing_ore[iiiii] = noone;
		}
		else
		{
		global._furnacing_ore[iiiii] = asset_get_index(_obj_name);
		}
		global._furnacing_time[iiiii] = real(ini_read_real("bl__fur"+string(iiiii),"furnacing_time",0));
		loading_dis++;
		};
		
		
		
		//상자 블럭 로드
		for(var iiiiii = 0; iiiiii < global.chest_block_all_num; iiiiii++)
		{
		global._image_index3[iiiiii] = ini_read_real("bl__che"+string(iiiiii),"image_index_",0);
		global._x6[iiiiii] = ini_read_real("bl__che"+string(iiiiii),"x",0);
		global._y6[iiiiii] = ini_read_real("bl__che"+string(iiiiii),"y",0);
			for(var i = 0; i < 14; i++)
			{
			var _ii__ = i+iiiiii*15
			var _obj_name_ = ini_read_string("bl__che"+string(iiiiii),"chest_item"+string(i),0)
			if _obj_name_ = "noone"
			{
			global._chest_item__[_ii__] = noone;
			}
			else
			{
			global._chest_item__[_ii__] = asset_get_index(_obj_name_);
			}
			global._chest_item___num[_ii__] = ini_read_real("bl__che"+string(iiiiii),"chest_item_num"+string(i),0);
			};
		loading_dis++;
		};
		
		
		//미니맵 가림막
		for(var i = 0; i < global.room_size/32; i++)
		{
		global.minimap_hider_x[i] = ini_read_real("m_hider","x"+string(i),1);
		global.minimap_hider_y[i] = ini_read_real("m_hider","y"+string(i),1);
		}
	
		//for(var i = 0; i < global.room_size/32; i++)
		//{
		//	for(var ii = 0; ii < global.room_size/32; ii++)
		//	{
		//		if global.minimap_hider_x[i] = 1 && global.minimap_hider_y[ii] = 1
		//		{
		//		instance_create(i*32,ii*32,minimap_hider_block)
		//		}
		//	} 
		//}
		

		ini_close();



		#endregion
		
		
		
		
		
		
		
		
		instance_activate_all();
		global.saving_data = -1;
		max_loading_dis = global.fl_block_all_num+global.block_all_num+global.wall_block_all_num+global.ore_block_all_num+global.chest_block_all_num+global.furnace_block_all_num;

		
		
		if loading_dis >= max_loading_dis
		{
		loading_dis = 0;
		loading_kinds++;
		};
	}
	
	
	
	
	if loading_kinds = 0
	{
	max_loading_dis = global.fl_block_all_num+global.block_all_num+global.wall_block_all_num+global.ore_block_all_num+global.chest_block_all_num+global.furnace_block_all_num;
	obj_camera.setting_blind = 1

		#region//바닥 블러오기
		
		for(var i = 0; i < global.fl_block_all_num; i++)
		{
		instance_activate_all();
			if object_exists(asset_get_index(global._object_index[i]))
			{
			var fl_pl = instance_create(global._x1[i],global._y1[i],asset_get_index(global._object_index[i]));
			instance_activate_object(fl_pl);
				if instance_exists(fl_pl)
				{
				fl_pl.received = 1;
				fl_pl.draw_tiles_on_the_floor = irandom_range(0,15)
				}
			}
		loading_dis ++
		};

		
		#endregion
		
		
		#region//광석 블럭 블러오기

		
		for(var i = 0; i < global.ore_block_all_num; i++)
		{
		instance_activate_all();
		var _block_ = instance_create(global._x2[i],global._y2[i],block_ore);
		instance_activate_all();
		instance_activate_object(_block_);
		if instance_exists(_block_)
		{
		_block_.sprite_index = asset_get_index(string(global._sprite_index[i]));
		}
		instance_activate_object(_block_);
		if instance_exists(_block_)
		{
		_block_.image_index = global._image_index[i];
		}
		instance_activate_object(_block_);
		instance_activate_all();
		if instance_exists(_block_)
		{
		_block_.block_num = global._block_num[i];
		}
		instance_activate_object(_block_);
		if instance_exists(_block_)
		{
		_block_.item_num = global._item_num[i];
		}
		instance_activate_object(_block_);
		instance_activate_all();
		if instance_exists(_block_)
		{
		_block_.stone_color = global._stone_color[i];
		}
		instance_activate_object(_block_);
		if instance_exists(_block_)
		{
		_block_.xscale = global._xscale[i];
		}
		instance_activate_object(_block_);
		instance_activate_all();
		if instance_exists(_block_)
		{
		_block_.yscale = global._yscale[i];
		}
		instance_activate_object(_block_);
		if instance_exists(_block_)
		{
		_block_.received = 1;
		}
		instance_activate_object(_block_);
		loading_dis ++
		};

		
		#endregion
		
		
		#region//벽 블럭 블러오기

		
		for(var i = 0; i < global.wall_block_all_num; i++)
		{
		instance_activate_all();
			if object_exists(asset_get_index(global._object_index2[i]))
			{
			var _block_ = instance_create(global._x3[i],global._y3[i],asset_get_index(global._object_index2[i]));
			instance_activate_object(_block_);
			if instance_exists(_block_)
			{
			_block_.received = 1;
			}
			instance_activate_object(_block_);
			if instance_exists(_block_)
			{
			_block_.image_angle = global._image_angle[i];
			}
			instance_activate_object(_block_);
			}
		instance_activate_all();

		loading_dis ++
		}

		
		#endregion
		
		
		#region//나머지 블럭 블러오기

		
		for(var iiii = 0; iiii < global.block_all_num; iiii++)
		{
		instance_activate_all()
		
			if object_exists(asset_get_index(global._object_index3[iiii]))
			{
			var _block_ = instance_create(global._x4[iiii],global._y4[iiii],asset_get_index(global._object_index3[iiii]));
			instance_activate_object(_block_);
			if instance_exists(_block_)
			{
			_block_.received = 1;
			}
			instance_activate_object(_block_);
			if instance_exists(_block_)
			{
			_block_.image_index = global._image_index2[iiii];
			}
			instance_activate_object(_block_);
			}
		instance_activate_all();
		
		loading_dis ++
		};

		
		#endregion
		
		
		
		
		
		
		
		
		
		
		#region//용광로 블럭 블러오기

		
		for(var iiii = 0; iiii < global.furnace_block_all_num; iiii++)
		{
		instance_activate_all()
		
			if object_exists(asset_get_index(global._object_index4[iiii]))
			{
			var _block_ = instance_create(global._x5[iiii],global._y5[iiii],asset_get_index(global._object_index4[iiii]));
			instance_activate_object(_block_);
			if instance_exists(_block_)
			{
			_block_.received = 1;
			_block_.furnacing_ore = global._furnacing_ore[iiii];
			_block_.furnacing_time = real(global._furnacing_time[iiii]);
			}
			instance_activate_object(_block_);
			}
		instance_activate_all();
		

		loading_dis ++
		};

		
		#endregion
		
		
		
		
		
		
		
		#region//상자 블럭 블러오기

		
		for(var iiiii = 0; iiiii < global.chest_block_all_num; iiiii++)
		{
		instance_activate_all()
		
		var _block_ = instance_create(global._x6[iiiii],global._y6[iiiii],chest);
		for(var i_ = 0; i_ < 14; i_++)
		{
		_block_.chest_item[i_] = noone;
		_block_.chest_item_num[i_] = -1;
		};
		_block_.image_index = global._image_index3[iiiii];
		_block_.received = 1;
		
		for(var i = 0; i < 14; i++)
		{
		var _ii__ = i+iiiii*15;
		_block_.chest_item[i] = global._chest_item__[_ii__];
		_block_.chest_item_num[i] = real(global._chest_item___num[_ii__]);
		};

		loading_dis ++
		};

		
		#endregion
		
		
		
		
		
	
	loading_dis ++

		if loading_dis > max_loading_dis
		{
		loading_dis = 0;
		loading_kinds++;
		};
	};
	
	
	
	
	if loading_kinds = 1
	{
	instance_activate_all();
	global.saving_data = 0;
	deactive = 1;


	loading_dis ++
	max_loading_dis = 100*round_room_size;
		if loading_dis > max_loading_dis
		{
		loading_dis = 0;
		loading_kinds++;
		};
	};
	
	
	if loading_kinds = 2 && global.server_open = false
	{
	room_speed = 60;
	deactive = 1;
	global.map_alredy_created[own_global_map] = 1;
	obj_camera.setting_blind = 1
	
	load_data_buff()//버프 및 체력 불러오기


	obj_camera.v_x = 1280/4.5;
	obj_camera.v_y = 720/4.5;
	obj_camera.tv_x = 1280/4.5;
	obj_camera.tv_y = 720/4.5;

	//BG_blind.alarm[2] = 1

	instance_destroy(BG_blind);
	instance_destroy(blinding);

	instance_destroy();

	};
	
	if global.server_open = true
	{
	obj_camera.setting_blind = 1
		if loading_kinds = 2
		{
		global.saving_data = -1;
		obj_camera.v_x = global.room_size;
		obj_camera.v_y = global.room_size;
		obj_camera.tv_x = global.room_size;
		obj_camera.tv_y = global.room_size;
		deactive = -1;
		max_loading_dis = 1;
		instance_activate_all();

		

	
			if loading_dis > max_loading_dis
			{
			loading_dis = 0;
			loading_kinds++;
			};
		};
		
		
		if loading_kinds = 3
		{
		room_speed = 60;
		deactive = 1;
		global.map_alredy_created[own_global_map] = 1;
	
		load_data_buff()//버프 및 체력 불러오기
		


		obj_camera.v_x = 1280/4.5;
		obj_camera.v_y = 720/4.5;
		obj_camera.tv_x = 1280/4.5;
		obj_camera.tv_y = 720/4.5;

		//BG_blind.alarm[2] = 1

		global.saving_data = 0;
		instance_destroy();

		};
	};
};