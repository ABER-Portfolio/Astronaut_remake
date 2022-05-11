/// @description 맵 저장
if co_op_code.is_server = true
{
	if global.n_room <= 1
	{
		if global.saving_data = 30
		{
			if co_op_code.is_server = true
			{
			instance_activate_all()
			}
			
			
			if instance_number(floor_pl_parents) > 0
			{
			floor_pl_parents.alarm[9] = 1
			}
		}
		
		if global.saving_data = 32
		{
			
		ini_open_protect("Astronaut_remake_item.ini")
		///////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////아이템 데이터 저장하기/////////////////////////////
		var a_all_tools_num = global.all_tools_num
		var a_all_resources_num = global.all_resources_num
		var a_all_potions_num = global.all_potions_num
		var a_all_placeable_num = global.all_placeable_num
		var a_all_clothes_num = global.all_clothes_num
		var a_all_accessories_num = global.all_accessories_num
		
		//여러 도구들 보유 유무
		for(var i = 1; i < a_all_tools_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item1000"+string(i)),0);
		ini_write_real("item1000","p_"+string(i),_item_num_);
		};

		//여러 광석들 보유 유무
		for(var i = 1; i < a_all_resources_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item"+string(i)),0);
		ini_write_real("item","n_"+string(i),_item_num_);
		};

		//여러 포션들 보유 유무
		for(var i = 1; i < a_all_potions_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item2000"+string(i)),0);
		ini_write_real("item2000","k_"+string(i),_item_num_);
		};

		//여러 설치가능 블럭들 보유 유무
		for(var i = 1; i < a_all_placeable_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item4000"+string(i)),0);
		ini_write_real("item4000","b_"+string(i),_item_num_);
		};

		//여러 설치가능 블럭들 보유 유무
		for(var i = 1; i < a_all_clothes_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item5000"+string(i)),0);
		ini_write_real("item5000","c_"+string(i),_item_num_);
		};
		
		//여러 악세사리들 보유 유무
		for(var i = 1; i < a_all_accessories_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item6000"+string(i)),0);
		ini_write_real("item6000","s_"+string(i),_item_num_);
		};


		ini_close_protect();
			
			
			
			
			
		#region//바닥 저장하기

		if !file_exists("Astronaut_map_pro_"+string(global.map_num)+".ini")
		{
		ini_open("Astronaut_map_pro_"+string(global.map_num)+".ini")
		
		if global.flower_boss_x != -1
		{
		ini_write_real("flower_boss","x"+string(global.map_num),global.flower_boss_x);
		ini_write_real("flower_boss","y"+string(global.map_num),global.flower_boss_y);
		}

		
		global.map_cre_date_y[global.map_num] = real(date_get_year(date_current_datetime()))
		global.map_cre_date_m[global.map_num] = real(date_get_month(date_current_datetime()))
		global.map_cre_date_d[global.map_num] = real(date_get_day(date_current_datetime()))
		global.map_cre_date_h[global.map_num] = real(date_get_hour(date_current_datetime()))
		global.map_cre_date_min[global.map_num] = real(date_get_minute(date_current_datetime()))
		ini_write_real("map_cre_date_y","map_cre_date_y"+string(global.map_num),global.map_cre_date_y[global.map_num]);
		ini_write_real("map_cre_date_m","map_cre_date_m"+string(global.map_num),global.map_cre_date_m[global.map_num]);
		ini_write_real("map_cre_date_d","map_cre_date_d"+string(global.map_num),global.map_cre_date_d[global.map_num]);
		ini_write_real("map_cre_date_h","map_cre_date_h"+string(global.map_num),global.map_cre_date_h[global.map_num]);
		ini_write_real("map_cre_date_min","map_cre_date_min"+string(global.map_num),global.map_cre_date_min[global.map_num]);
		
		ini_close();
		}
		
		ini_open("Astronaut_map_pro_"+string(global.map_num)+".ini")

		instance_activate_all()
		ini_write_real("new_map_check","a",global.new_map);
		ini_write_real("map_size","a",room_width);
		ini_write_real("meteor_num","a",global.meteor_num);
		ini_write_real("flower_boss_killed","a",global.flower_boss_killed);
		ini_write_real("fl_ins_num","a",instance_number(fl_parents));
		ini_write_real("bl_ins_num","a1",instance_number(block_ore));
		ini_write_real("bl_ins_num","a2",instance_number(wall_block_parents));
		ini_write_real("bl_ins_num","a3",instance_number(to_save_all_block_parents)-instance_number(block_furnace_kind)-instance_number(block_chest_kind));
		ini_write_real("bl_ins_num","a4",instance_number(block_furnace_kind));
		ini_write_real("bl_ins_num","a5",instance_number(block_chest_kind));

		ini_close();



		ini_open("Astronaut_map_"+string(global.map_num)+".ini")

		if co_op_code.is_server = true
		{
		instance_activate_all()
		//바닥 로드
		//global.fl_block_all_num
		instance_activate_all()
		}

		a = 0
		instance_activate_all()
		with(fl_parents)
		{
		ini_write_string("fl"+string(other.a),"object_index",object_get_name(object_index));

		//global._x1[i]
		ini_write_real("fl"+string(other.a),"x",x);

		//global._y1[i]
		ini_write_real("fl"+string(other.a),"y",y);
		other.a += 1
		}



		//광석 블럭 저장 하기
		//global.block_all_num
		if co_op_code.is_server = true
		{
		instance_activate_all()
		}
		a = 0
		
		with(block_ore)
		{
		//global._x2[i]
		instance_activate_all()
		var spr_name = sprite_get_name(sprite_index);
		ini_write_string("bl"+string(other.a),"sprite_index",spr_name);
		instance_activate_all()

		//global._y2[i]
		ini_write_real("bl"+string(other.a),"image_index",image_index);
	
		//global._x2[i]
		ini_write_real("bl"+string(other.a),"x",x);

		//global._y2[i]
		ini_write_real("bl"+string(other.a),"y",y);

		//global._block_num[i]
		ini_write_real("bl"+string(other.a),"block_num",block_num);

		//global._item_num[i]
		ini_write_real("bl"+string(other.a),"item_num",item_num);

		//global._stone_color[i]
		ini_write_real("bl"+string(other.a),"stone_color",stone_color);

		//global._stone_color[i]
		ini_write_real("bl"+string(other.a),"xscale",xscale);

		//global._stone_color[i]
		ini_write_real("bl"+string(other.a),"yscale",yscale);

		other.a += 1
		}


		//블럭 저장하기
		//global.block_all_num
		if co_op_code.is_server = true
		{
		instance_activate_all()
		}
		a = 0
		
		
		with(wall_block_parents)
		{
		//global._object_index
		ini_write_string("bl_2"+string(other.a),"object_index",object_get_name(object_index));

		//global._x2[i]
		ini_write_real("bl_2"+string(other.a),"x",x);

		//global._y2[i]
		ini_write_real("bl_2"+string(other.a),"y",y);

		//global._image_angle[i]
		ini_write_real("bl_2"+string(other.a),"image_angle",image_angle);

		other.a += 1
		}


		//나머지 블럭 저장하기
		//global.block_all_num
		if co_op_code.is_server = true
		{
		instance_activate_all()
		}
		a = 0
		
		
		
		with(to_save_all_block_parents)
		{
			if object_get_parent(object_index) != block_furnace_kind && object_get_parent(object_index) != block_chest_kind
			{
			//global._object_index
			ini_write_string("bl__3"+string(other.a),"object_index",object_get_name(object_index));

			//global._object_index
			ini_write_real("bl__3"+string(other.a),"image_index",image_index);

			//global._x2[i]
			ini_write_real("bl__3"+string(other.a),"x",x);

			//global._y2[i]
			ini_write_real("bl__3"+string(other.a),"y",y);

			other.a += 1
			};
		};

	
		
		
		
		
		
		
		
		
		
		
		if co_op_code.is_server = true
		{
		instance_activate_all()
		}
		a = 0
		
		
		
		with(block_furnace_kind)
		{
		//global._object_index
		ini_write_string("bl__fur"+string(other.a),"object_index",object_get_name(object_index));

		//global._x2[i]
		ini_write_real("bl__fur"+string(other.a),"x",x);

		//global._y2[i]
		ini_write_real("bl__fur"+string(other.a),"y",y);
		
		//global._y2[i]
		if furnacing_ore = noone
		{
		ini_write_string("bl__fur"+string(other.a),"furnacing_ore","noone");
		}
		else
		{
		ini_write_string("bl__fur"+string(other.a),"furnacing_ore",object_get_name(furnacing_ore));
		}
		
		//global._y2[i]
		ini_write_real("bl__fur"+string(other.a),"furnacing_time",furnacing_time);
		

		other.a += 1
		};

	
		
		
		
		
		
		
		
		
		
		
		
		if co_op_code.is_server = true
		{
		instance_activate_all()
		}
		a = 0
		
		
		
		with(chest)
		{
		//global._object_index
		ini_write_real("bl__che"+string(other.a),"image_index_",image_index);

		//global._x2[i]
		ini_write_real("bl__che"+string(other.a),"x",x);

		//global._y2[i]
		ini_write_real("bl__che"+string(other.a),"y",y);
		
		//global._y2[i]
		for(var i = 0; i < 14; i++)
		{
			if self.chest_item[i] = noone
			{
			ini_write_string("bl__che"+string(other.a),"chest_item"+string(i),"noone");
			}
			else
			{
			ini_write_string("bl__che"+string(other.a),"chest_item"+string(i),object_get_name(string(chest_item[i])));
			}
		
		//global._y2[i]
		ini_write_real("bl__che"+string(other.a),"chest_item_num"+string(i),real(chest_item_num[i]));
		}
		

		other.a += 1
		};
		
		
		
		//미니맵 가림막
		//for(var i = 0; i < global.room_size/32; i++)
		//{
		//ini_write_real("m_hider","x"+string(i),global.minimap_hider_x[i]);
		//ini_write_real("m_hider","y"+string(i),global.minimap_hider_y[i]);
		//}
		
		
		

		ini_close();

		#endregion



















		ini_open("Astronaut_remake_map_pr.ini")
		
		global.last_x_game_end[global.map_num] = x
		global.last_y_game_end[global.map_num] = y
		ini_write_real("last_stayed_biome","x"+string(global.map_num),global.last_x_game_end[global.map_num])
		ini_write_real("last_stayed_biome","y"+string(global.map_num),global.last_y_game_end[global.map_num])
		
		if instance_number(player_co_op) > 0
		{
		ini_write_real("last_stayed_biome","x_co_op"+string(global.co_op_nickname),player_co_op.x)
		ini_write_real("last_stayed_biome","y_co_op"+string(global.co_op_nickname),player_co_op.y)
		}
		
		if global.biome_real = "normal"
		{
		global.last_stayed_biome[global.map_num] = 0
		}
		
		if global.biome_real = "bloody" || global.biome_real = "bloody_desert" || global.biome_real = "bloody_ice"
		{
		global.last_stayed_biome[global.map_num] = 1
		}
		
		if global.biome_real = "polluted" || global.biome_real = "polluted_desert" || global.biome_real = "polluted_ice"
		{
		global.last_stayed_biome[global.map_num] = 2
		}
		
		if global.biome_real = "ice"
		{
		global.last_stayed_biome[global.map_num] = 3
		}
		
		if global.biome_real = "desert"
		{
		global.last_stayed_biome[global.map_num] = 4
		}
		
		if global.biome_real = "meteor"
		{
		global.last_stayed_biome[global.map_num] = 5
		}
		ini_write_real("last_stayed_biome","last_stayed_biome"+string(global.map_num),global.last_stayed_biome[global.map_num])

		ini_close()












		ini_open("Astronaut_remake_status.ini")

		//독중독
		ini_write_real("effect","poisoning",global.poisoning);

		//불에탐
		ini_write_real("effect","burning",global.burning);

		//방사능
		ini_write_real("effect","radiation",global.radiation);
		
		//방사능
		ini_write_real("effect","radiation",global.radiation);

		//온도
		ini_write_real("effect","temperature",global.temperature);
		
		//체력 무시 
		ini_write_real("effect","ignore_hp",global.ignore_hp);
		
		//산소 무시
		ini_write_real("effect","ignore_oxygen",global.ignore_oxygen);
		
		//속도 저하
		ini_write_real("effect","slow_movement",global.slow_movement);
		
		//이동 플립
		ini_write_real("effect","flip_movement",global.flip_movement);

		//HP
		ini_write_real("status","hp",global.hp);
		ini_write_real("status","max_hp",global.max_hp);

		//산소량 
		ini_write_real("status","o2",global.o2);
		ini_write_real("status","max_o2",global.max_o2);

		//밤인지 체크
		ini_write_real("status","night",global.night);

		//현재 시간
		ini_write_real("status","time",global.time);
		
		//현재 날씨
		ini_write_real("status","rainy",global.rainy);
	
		//밤 낮 밝기
		ini_write_real("status","day_light_alpha",objLightManager.day_light_alpha);
	
		ini_write_real("status","sun_light_alpha",objLightManager.sun_light_alpha);
		
		ini_write_real("status","flash_light_alpha",objLightManager.flash_light_alpha);
		
		ini_write_real("status","moon_light_alpha",objLightManager.moon_light_alpha);

		//옷
		ini_write_real("status","hazmat",global.hazmat);

		//바이옴
		ini_write_real("status","biome",global.biome);


		//블프 경험치
		ini_write_real("status","r_exp",global.r_exp);
		ini_write_real("status","tr_exp",global.tr_exp);
		ini_write_real("status","max_r_exp",global.max_r_exp);


		//블프 레벨
		ini_write_real("status","r_lv",global.r_lv);


		//산소 경험치
		ini_write_real("status","o_exp",global.o_exp);
		ini_write_real("status","to_exp",global.to_exp);
		ini_write_real("status","max_o_exp",global.max_o_exp);

		//산소 레벨
		ini_write_real("status","o2_lv",global.o_lv);
		
		//Stemina
		ini_write_real("status","stemina",global.stemina);
		ini_write_real("status","max_stemina",global.max_stemina);
		ini_write_real("status","max_stemina",global.stemina_leveling);

		
		//캐릭터 성별
		ini_write_real("status","gender",global.gender);

		//방호복 고글 색
		ini_write_real("status","goggles_col",global.goggles_col);
		ini_write_real("status","goggles_red",global.goggles_red);
		ini_write_real("status","goggles_green",global.goggles_green);
		ini_write_real("status","goggles_blue",global.goggles_blue);

		//방호복 색
		ini_write_real("status","suit_col",global.suit_col);
		ini_write_real("status","suit_red",global.suit_red);
		ini_write_real("status","suit_green",global.suit_green);
		ini_write_real("status","suit_blue",global.suit_blue);

		//산소탱크 색
		ini_write_real("status","shirt_run_col",global.shirt_run_col);
		ini_write_real("status","shirt_run_red",global.shirt_run_red);
		ini_write_real("status","shirt_run_green",global.shirt_run_green);
		ini_write_real("status","shirt_run_blue",global.shirt_run_blue);
		
		//생존 일수
		ini_write_real("status","survived_days",global.survived_days);


		ini_close();
		
		
		
		
		
		
		ini_open("Astronaut_remake_map_num.ini")

		ini_write_real("all_map_num","b_",global.all_map_num)

		ini_close()







		/////////////////////////////////////////////////////////////////////////////////////////////////

		global.saving_data = -1
		obj_camera.alarm[8] = 10
		
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.CO_OP_SAVE);
		send_all(chat_buffer);
		}
	
	
		if global.saving_data >= 0
		{
		global.saving_data += 1
		instance_activate_all()
		alarm[8] = 1
		}
	}
	else
	{
	//chat_up("You can not save the game when you are in the cave!")
	global.saving_data = -1
	}





	code.alarm[11] = 1
	
	
	
	
	
	ini_open("Astronaut_remake_map_pr.ini")

	ini_write_real("all_map_num","all_map_num",global.all_map_num)
	ini_write_string("map_name","map_name"+string(global.map_num),global.map_name[global.map_num])

	ini_close()
}
else
{
	if global.enable_co_op_save = 1
	{
		if global.saving_data = 32
		{
		ini_open_protect("Astronaut_remake_item.ini")
		///////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////아이템 데이터 저장하기/////////////////////////////
		var a_all_tools_num = global.all_tools_num
		var a_all_resources_num = global.all_resources_num
		var a_all_potions_num = global.all_potions_num
		var a_all_placeable_num = global.all_placeable_num
		var a_all_clothes_num = global.all_clothes_num
		var a_all_accessories_num = global.all_accessories_num
		
		//여러 도구들 보유 유무
		for(var i = 1; i < a_all_tools_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item1000"+string(i)),0);
		ini_write_real("item1000","p_"+string(i),_item_num_);
		};

		//여러 광석들 보유 유무
		for(var i = 1; i < a_all_resources_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item"+string(i)),0);
		ini_write_real("item","n_"+string(i),_item_num_);
		};

		//여러 포션들 보유 유무
		for(var i = 1; i < a_all_potions_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item2000"+string(i)),0);
		ini_write_real("item2000","k_"+string(i),_item_num_);
		};

		//여러 설치가능 블럭들 보유 유무
		for(var i = 1; i < a_all_placeable_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item4000"+string(i)),0);
		ini_write_real("item4000","b_"+string(i),_item_num_);
		};

		//여러 설치가능 블럭들 보유 유무
		for(var i = 1; i < a_all_clothes_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item5000"+string(i)),0);
		ini_write_real("item5000","c_"+string(i),_item_num_);
		};
		
		//여러 악세사리들 보유 유무
		for(var i = 1; i < a_all_accessories_num; i++)
		{
		var _item_num_ = inventory_number_find_by_name(asset_get_index("item6000"+string(i)),0);
		ini_write_real("item6000","s_"+string(i),_item_num_);
		};


		ini_close_protect();
		
		
		
		
		
		
		
		ini_open("Astronaut_remake_status.ini")

		//독중독
		ini_write_real("effect","poisoning",global.poisoning);

		//불에탐
		ini_write_real("effect","burning",global.burning);

		//방사능
		ini_write_real("effect","radiation",global.radiation);
		
		//방사능
		ini_write_real("effect","radiation",global.radiation);

		//온도
		ini_write_real("effect","temperature",global.temperature);
		
		//산소 무시 
		ini_write_real("effect","ignore_hp",global.ignore_hp);
		
		//체력 무시
		ini_write_real("effect","ignore_oxygen",global.ignore_oxygen);
		
		//속도 저하
		ini_write_real("effect","slow_movement",global.slow_movement);
		
		//이동 플립
		ini_write_real("effect","flip_movement",global.flip_movement);

		//HP
		ini_write_real("status","hp",global.hp);
		ini_write_real("status","max_hp",global.max_hp);

		//산소량 
		ini_write_real("status","o2",global.o2);
		ini_write_real("status","max_o2",global.max_o2);

		//밤인지 체크
		ini_write_real("status","night",global.night);

		//현재 시간
		ini_write_real("status","time",global.time);
		
		//현재 날씨
		ini_write_real("status","rainy",global.rainy);
	
		//밤 낮 밝기
		ini_write_real("status","day_light_alpha",objLightManager.day_light_alpha);
	
		ini_write_real("status","sun_light_alpha",objLightManager.sun_light_alpha);
		
		ini_write_real("status","flash_light_alpha",objLightManager.flash_light_alpha);
		
		ini_write_real("status","moon_light_alpha",objLightManager.moon_light_alpha);

		//옷
		ini_write_real("status","hazmat",global.hazmat);

		//바이옴
		ini_write_real("status","biome",global.biome);


		//블프 경험치
		ini_write_real("status","r_exp",global.r_exp);
		ini_write_real("status","tr_exp",global.tr_exp);
		ini_write_real("status","max_r_exp",global.max_r_exp);


		//블프 레벨
		ini_write_real("status","r_lv",global.r_lv);


		//산소 경험치
		ini_write_real("status","o_exp",global.o_exp);
		ini_write_real("status","to_exp",global.to_exp);
		ini_write_real("status","max_o_exp",global.max_o_exp);

		//산소 레벨
		ini_write_real("status","o2_lv",global.o_lv);
		
		//Stemina
		ini_write_real("status","stemina",global.stemina);
		ini_write_real("status","max_stemina",global.max_stemina);
		ini_write_real("status","max_stemina",global.stemina_leveling);

		
		//캐릭터 성별
		ini_write_real("status","gender",global.gender);

		//방호복 고글 색
		ini_write_real("status","goggles_col",global.goggles_col);
		ini_write_real("status","goggles_red",global.goggles_red);
		ini_write_real("status","goggles_green",global.goggles_green);
		ini_write_real("status","goggles_blue",global.goggles_blue);

		//방호복 색
		ini_write_real("status","suit_col",global.suit_col);
		ini_write_real("status","suit_red",global.suit_red);
		ini_write_real("status","suit_green",global.suit_green);
		ini_write_real("status","suit_blue",global.suit_blue);

		//산소탱크 색
		ini_write_real("status","shirt_run_col",global.shirt_run_col);
		ini_write_real("status","shirt_run_red",global.shirt_run_red);
		ini_write_real("status","shirt_run_green",global.shirt_run_green);
		ini_write_real("status","shirt_run_blue",global.shirt_run_blue);
		
		//생존 일수
		ini_write_real("status","survived_days",global.survived_days);
		
		//엔피씨 이벤트
		for(var i = 0; i < 99; i++)
		{
		ini_write_real("a"+string(i),"a32",global.npc_event[i])
		}


		ini_close();
		
		global.enable_co_op_save = 0
		}
	}
	
	if global.saving_data >= 0
	{
	global.saving_data += 1
		if co_op_code.is_server = true
		{
		instance_activate_all()
		}
	alarm[8] = 1
	}
	
	if global.enable_co_op_save = 0
	{
	global.saving_data = -1
	}
}



if global.saving_data > 32
{
global.saving_data = -1
}

if global.saving_data < 0
{
global.saving_data = 0
}

