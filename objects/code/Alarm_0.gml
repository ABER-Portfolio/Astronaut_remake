/// @description Game data load

ini_open_protect("Astronaut_remake_user.ini")
//이전에 접속한 아이피
global.before_entered_ip = ini_read_real("before","ip",-1)
ini_close_protect();


ini_open("Astronaut_remake_setting.ini")

///////////////////////////////////환경설정 데이터 불러오기////////////////////////////////

//청크 사이즈
global.chunk_size = ini_read_real("a","a1",0.35)

//눈 내림 이팩트 범위
global.snow_effect_distance = ini_read_real("a","a2",0)

//눈송이 갯수 설정
global.snowflake_amount = ini_read_real("a","a3",0)

//가우시안 서피스 on/off
global.draw_gausian = ini_read_real("a","a4",0)
global.Degree = ini_read_real("a","a5",0)
if global.Degree = 0
{
global.Degree = 9
}

global.V = ini_read_real("a","a6",0)
if global.V = 0
{
global.V = 8
}

//물 출렁거림 효과 on/off
global.water_shake_setting = ini_read_real("a","a7",0)

//그림자 끄기 on/off
global.shadow_setting = ini_read_real("a","a8",0)

//바닥 연결
global.floor_connection = ini_read_real("a","a9",0)

//바닥 퀄리티 on/ff
global.floor_quality = ini_read_real("a","a10",0)

//바닥 물그리기
global.floor_sea = ini_read_real("a","a11",0)

//바닥 높이 그리기
global.floor_height = ini_read_real("a","a12",0)

//오브젝트 이팩트 효과 on/off
global.obj_effect = ini_read_real("a","a13",0)

//라이트 사이즈 효과
global.light_size = ini_read_real("a","a14",0)

//언어
global.language = ini_read_real("a","a15",0)
if global.language = 0
{
global.language = 0
}

//시야범위
global.sight = ini_read_real("a","a16",0)

//윈도우 사이즈
if global.dev_mode = 2
{
global.window_ = 1280
}
else
{
global.window_ = ini_read_real("a","a17",1920)
}
global.b_window = global.window_

//퀵 슬롯 숫자 표기
global.quick_slot_number = ini_read_real("a","a18",0)

//디버프 데미지 효과음
global.debuff_damage_ef_sound = ini_read_real("a","a19",-1)

//벽 알파값 자동조정
global.wall_alpha = ini_read_real("a","a20",0)

//벽 알파값 자동조정
global.guide_massage = ini_read_real("a","a21",0)

//마스터 볼륨
global.master_volume = ini_read_real("a","a22",0.5)
global.sfx_volume = ini_read_real("a","a22_sfx",1)

//맵 생성시 자동 저장
global.a_m_c_save = ini_read_real("a","a23",0)

//맵 자동저장 타이머
global.a_save = ini_read_real("a","a24",10)
global.a_save = 10

//튜토리얼
global.tutorial = 1//ini_read_real("tutorial","done",0)

//경험치 숫자 표기
global.drawing_exp = ini_read_real("a","a25",-1)

//안티 에일리어싱
global.anti_aliasing = ini_read_real("a","a26",0)

//수직 동기화
global.vsync = ini_read_real("a","a27",false)

//닉네임
global.nickname = ini_read_string("a","a28","Player")

//조합창을 닫을때 게임 자동저장
global.a_m_save_craft_window = ini_read_real("a","a29",0)

//캐릭터 생성했음
global.character_created = ini_read_real("a","a30",0)

//맵 로딩 속도
global.chunk_loading_speed = ini_read_real("a","a31",1)

//타일 정리
//global.tile_cleaning = ini_read_real("a","a32",0)

ini_close()





ini_open_protect("Astronaut_remake_item.ini")

var a_all_tools_num = global.all_tools_num
var a_all_resources_num = global.all_resources_num
var a_all_potions_num = global.all_potions_num
var a_all_placeable_num = global.all_placeable_num
var a_all_clothes_num = global.all_clothes_num
var a_all_accessories_num = global.all_accessories_num

//여러 도구들 보유 유무
for(var i = 1; i < a_all_tools_num; i++)
{
global.p[i] = ini_read_real("item1000","p_"+string(i),0);
inventory_item_add(asset_get_index("item1000"+string(i)),global.p[i],0);
};

//여러 광석들 보유 유무
for(var i = 1; i < a_all_resources_num; i++)
{
global.n[i] = ini_read_real("item","n_"+string(i),0);
inventory_item_add(asset_get_index("item"+string(i)),global.n[i],0);
};

//여러 포션들 보유 유무
for(var i = 1; i < a_all_potions_num; i++)
{
global.k[i] = ini_read_real("item2000","k_"+string(i),0);
inventory_item_add(asset_get_index("item2000"+string(i)),global.k[i],0);
};

//여러 설치가능 블럭들 보유 유무
for(var i = 1; i < a_all_placeable_num; i++)
{
global.b[i] = ini_read_real("item4000","b_"+string(i),0);
inventory_item_add(asset_get_index("item4000"+string(i)),global.b[i],0);
};

//여러 설치가능 블럭들 보유 유무
for(var i = 1; i < a_all_clothes_num; i++)
{
global.c[i] = ini_read_real("item5000","c_"+string(i),0);
inventory_item_add(asset_get_index("item5000"+string(i)),global.c[i],0);
};

//여러 악세사리들 보유 유무
for(var i = 1; i < a_all_accessories_num; i++)
{
global.s[i] = ini_read_real("item6000","s_"+string(i),0);
inventory_item_add(asset_get_index("item6000"+string(i)),global.s[i],0);
};

ini_close_protect();








/////////////////////////////////////////윈도우 창크기 설정////////////////////////////////////////

if global.mobile = 0
{
	if global.window_ = 1280
	{
	window_set_fullscreen(false)
	window_set_size(1280,720)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	global.b_window = global.window_
	}


	if global.window_ = 1920
	{
	window_set_fullscreen(true)
	window_set_size(1920,1080)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	global.b_window = global.window_
	}
	
	if instance_number(ingame_button_setting) = 0 && fir_win_set = 0
	{
		if instance_number(BG_title) > 0
		{
		instance_activate_object(BT_title)
		instance_destroy(BT_title)

		var select = 3
		global.select = select
		BG_title.can_press = select
		BG_title.max_can_press = 0
		BG_title.alarm[2] = 1
		}
	}
	 fir_win_set = 0
}
else
{
global.window_ = 1600
window_set_fullscreen(true)
surface_resize(application_surface, display_get_width (), display_get_height ());
window_set_size(1600,900)
global.b_window = global.window_
}








	