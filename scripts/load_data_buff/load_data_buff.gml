var is_server = true

if global.co_op_mode = 1
{
	if co_op_code.is_server = true
	{
	is_server = true
	}
	else
	{
	is_server = false
	}
}


		#region//버프 및 체력 불러오기
		ini_open("Astronaut_remake_status.ini");

		//독중독
		global.poisoning = ini_read_real("effect","poisoning",0);

		//불에탐
		global.burning = ini_read_real("effect","burning",0);

		//방사능
		global.radiation = ini_read_real("effect","radiation",0);

		//온도
		global.temperature = ini_read_real("effect","temperature",26);
		
		//산소 무시 
		global.ignore_hp = ini_read_real("effect","ignore_hp",0);
		
		//체력 무시
		global.ignore_oxygen = ini_read_real("effect","ignore_oxygen",0);
		
		//속도 저하
		global.slow_movement = ini_read_real("effect","slow_movement",0);
	
		//이동방향 플립
		global.flip_movement = ini_read_real("effect","flip_movement",0);

		//HP
		global.hp = ini_read_real("status","hp",6);
		global.max_hp = ini_read_real("status","max_hp",6);
		
		//캐릭터 성별
		global.gender = ini_read_real("status","gender",0);

		//산소량 
		if global.gender = 0
		{
		global.o2 = ini_read_real("status","o2",6);
		global.max_o2 = ini_read_real("status","max_o2",6);
		}
		else
		{
		global.o2 = ini_read_real("status","o2",7);
		global.max_o2 = ini_read_real("status","max_o2",7);
		};


		if is_server = true
		{
		//밤인지 체크
		global.night = ini_read_real("status","night",6000);

		
		//밤 낮 밝기
		objLightManager.day_light_alpha = ini_read_real("status","day_light_alpha",1);
	
		objLightManager.sun_light_alpha = ini_read_real("status","sun_light_alpha",0);
		
		objLightManager.flash_light_alpha = ini_read_real("status","flash_light_alpha",0);
		
		objLightManager.moon_light_alpha = ini_read_real("status","moon_light_alpha",0);

		//현재 시간
		global.time = ini_read_real("status","time",26664);
		
		//현재 날씨
		global.rainy = ini_read_real("status","rainy",0);
		}

		//옷
		global.hazmat = ini_read_real("status","hazmat",0);

		if is_server = true
		{
		//바이옴
		global.biome = ini_read_real("status","biome",0);
		}
	
		//블프 경험치
		global.r_exp = ini_read_real("status","r_exp",0);
		global.tr_exp = ini_read_real("status","tr_exp",0);
		global.max_r_exp = ini_read_real("status","max_r_exp",32);

		//블프 레벨
		global.r_lv = ini_read_real("status","r_lv",1);

		//산소 경험치
		global.o_exp = ini_read_real("status","o_exp",0);
		global.to_exp = ini_read_real("status","to_exp",0);
		global.max_o_exp = ini_read_real("a","max_o_exp",30);

		//산소 레벨
		global.o_lv = ini_read_real("status","o2_lv",1);
		
		//Stemina
		if global.gender = 0
		{
		global.stemina = ini_read_real("status","stemina",6);
		global.max_stemina = ini_read_real("status","max_stemina",6);
		}
		else
		{
		global.stemina = ini_read_real("status","stemina",5);
		global.max_stemina = ini_read_real("status","max_stemina",5);
		};
		global.stemina_leveling = ini_read_real("status","max_stemina",0);


		//방호복 고글 색
		global.goggles_col = ini_read_real("status","goggles_col",c_white);
		global.goggles_red = ini_read_real("status","goggles_red",color_get_red(c_white));
		global.goggles_green = ini_read_real("status","goggles_green",color_get_green(c_white));
		global.goggles_blue = ini_read_real("status","goggles_blue",color_get_blue(c_white));

		//방호복 색
		global.suit_col = ini_read_real("status","suit_col",c_white);
		global.suit_red = ini_read_real("status","suit_red",color_get_red(c_white));
		global.suit_green = ini_read_real("status","suit_green",color_get_green(c_white));
		global.suit_blue = ini_read_real("status","suit_blue",color_get_blue(c_white));

		//산소탱크 색
		global.shirt_run_col = ini_read_real("status","shirt_run_col",c_white);
		global.shirt_run_red = ini_read_real("status","shirt_run_red",color_get_red(c_white));
		global.shirt_run_green = ini_read_real("status","shirt_run_green",color_get_green(c_white));
		global.shirt_run_blue = ini_read_real("status","shirt_run_blue",color_get_blue(c_white));
		
		//생존 일수
		global.survived_days = ini_read_real("status","survived_days",0);
		
		//엔피씨 이벤트
		for(var i = 0; i < 99; i++)
		{
		global.npc_event[i] = ini_read_real("a"+string(i),"a32",0)
		}


		ini_close();
		#endregion