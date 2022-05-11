instance_activate_all()
if instance_number(code) > 1
{
instance_destroy()
}
else
{

//미니맵 가림막
global.minimap_hider_x[0,0] = 0
global.minimap_hider_y[0,0] = 0

global.flower_boss_x = -1
global.flower_boss_y = -1



portal_create = 0

fir_win_set = 1

rain_blind = 0
raining_sound_ef = 0

revived_by_astronaut = 0

safezone_warning_message = 0
monument_warning_message = 0




//background


/////////////////////////////////////게임 최적화를 위해 특정값을 전역변수에 저장////////////////////////////////////////////////////////////

global._came_vx = camera_get_view_x(view_camera[0])
global._came_vx_p_w = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])

global._came_vy = camera_get_view_y(view_camera[0])
global._came_vy_p_h = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//global.crafting_surf = surface_create(1920, 1080);

//로딩중
global.now_loading = 0

//게임 버젼
global.game_version = 1.2

//전에 접속한 아이피
global.before_entered_ip = -1

//잠 자기
global.sleeping = 0
global.sleeping_co_op = 0

//고스트 모드
global.ghost_mode = 0

//서버가 열려있는지 확인
global.server_open = false

//채팅창
global.chat_activity = false;

global.lightsurf = noone
global.lightsurf2 = noone

//청크 로딩 속도
global.chunk_loading_speed = 40

//세이프존
global.safe_zone_origin = 0
global.safe_zone_co_op = 0


//접속자도 아이템 세이브
global.enable_co_op_save = 0

//스프링클러 물 뿌리기 속도
global.sprinkler_water_speed = 0

//플레이어 닉네임
global.nickname = "Player"

//멀티플레이중인지 확인
global.co_op_mode = 0

global.stop_chunk = 0

global.paused = 0

//날씨
global.rainy = 0

//스모그 (안개)
global.smog = 0
global.b_smog = 0

//노클립 모드
global.noclip_mode = 0

//바람 방향
global.wind_dir = 0
global.t_wind_dir = 0

//미니맵 그리기
global.draw_minimap = -1

//현재 층수
global.cave_floor = 0

//저장용 동굴 바이옴
global.saved_cave_biome = 0

//카메라 고정
global.camera_fix = 0

//ui 드로우 x
global.drawing_cancle_ui = 1

//레이드중
global.raid_name = 0
global.raiding = -1

//캐릭터 성별
global.gender = 0

//캐릭터 생성했음
global.character_created = 0

//방호복 고글 색
global.goggles_col = c_white
global.goggles_red = color_get_red(c_white)
global.goggles_green = color_get_green(c_white)
global.goggles_blue = color_get_blue(c_white)

global.goggles_col_co_op = c_white

//방호복 색
global.suit_col = c_white
global.suit_red = color_get_red(c_white)
global.suit_green = color_get_green(c_white)
global.suit_blue = color_get_blue(c_white)

global.suit_col_co_op = c_white

//산소탱크 색
global.shirt_run_col = c_white
global.shirt_run_red = color_get_red(c_white)
global.shirt_run_green = color_get_green(c_white)
global.shirt_run_blue = color_get_blue(c_white)

global.shirt_run_col_co_op = c_white

//방금 막 부활했음
global.revived_now = 0

//맵 이동시 불러오기
global.change_map_to = noone

//움직임 금지
global.do_not_move = 0
global.do_not_move2 = 0

//플레이어 1 인벤토리 꽉참
global.empty_inv_player_1 = 1

//플레이어 2 인벤토리 꽉참
global.empty_inv_player_2 = 1

//현재 룸
global.n_room = 0
global.in_cave = 0
last_room_width = -1
last_room_height = -1

//방금 채팅이 입력됨
global.recently_entered_chat_m = 0

//업그래이드 블럭 선택됨
global.selected_up_bl = 0

//지금 부수고 있는 블럭 id
global.now_breaking_ore_id = noone

//처음 플레이
global.tutorial = 0

//다른 룸으로 이동
global.go_to_other_room = 0

//다른룸으로 이동시 마지막 좌표 지점 저장
global.last_x = -1
global.last_y = -1

//게임 종료 전 마지막 위치
global.last_x_game_end = -1
global.last_y_game_end = -1



global.saving_data = 0
//모바일
global.mobile = 0

//개발자 모드
global.dev_mode = 2 // 2

if global.dev_mode > 0
{
window()
}

//맵
global.new_map = 0
global.map_alredy_created = array_create(10,0)

//현재 플레이중인 맵 
global.map_num = 0

//총 맵 갯수
global.all_map_num = 0


for(var i = 0; i < 10; i++)
{
global.map_alredy_created[i] = -1
}

//밤인지 체크
global.night = 0

//현재 시간
global.time = 26664
global.realtime_h = 0
global.realtime_m = 0

//생존 일수
global.survived_days = 0

//밤되는 속도
global.night_speed = 10//0.0001

//오염된 지역 지렁이 보스
global.worm_boss = 0

//다른 과학자 살해함
global.killed_scientist = 0

//다른 외계인 살해함
global.killed_alien = 0

//블럭 설치 가능
global.cannot_place = 0

//빌드할 물건
global.set_build_things = 0

//가로 이동
global.movement_speed = 0
global.t_movement_speed = 2

//세로 이동
global.hmovement_speed = 0
global.t_hmovement_speed = 2

//광물 중복 타깃팅 방지
//global.already_targeted = 0

//들고있는 아이템
global.inhand_item = 0

//들고있는 아이템 스프라이트 인덱스
global.inhand_item_type = 0

//물 색깔 변경
global.w_c_alpha = array_create(7,0)
for(var i = 1; i < 6; i++)
{
global.w_c_alpha[i] = 0
}

//조합 대기열 갯수
global.queue_num = 0

//조합대 근처에 있음
global.near_work_bench = 0

//화로 근처에 있음
global.near_furnace = 0

//방어력
global.armor = 1

//곡괭이 공속
global.attacking_speed = 0

//곡괭이 사이즈
global.tool_size = 0

//곡괭이 파워 (단위 %)
global.pickaxe_power = 0

//무기 데미지 (단위 %)
global.attack_damage = 0
global.attack_damage_origin = 0
global.attack_damage_co_op = 0

//도끼 파워 (단위 %)
global.axe_power = 0

//넉백
global.knockback = 0

//투사체 속도
global.projectile_speed = 0

//자동 스윙
global.autoswing = 0

//무기 종류
global.weapon_kind = 0

//피킹
global.swing = 0
global.swing_co_op = 0
global.swing_origin = 0

//창 열려있음
global.opening_menu = 0

//인벤토리 열려있음
global.inv_open = 0

//산소캐이블 연결됨
global.o2_cable_able = 0

//산소량 
global.o2 = 6 // 6
global.max_o2 = 6 // 6
alarm[1] = 1



//블프 경험치
global.r_exp = 0
global.tr_exp = 0
global.max_r_exp = 32

//블프 레벨
global.r_lv = 0

//산소 경험치
global.o_exp = 0
global.to_exp = 0
global.max_o_exp = 30

//산소 레벨
global.o_lv = 0

//건물 내부에 들어옴
global.in_building = 0
global.in_building_for_check = 0

///////////////////////버프효과 지속 시간/////////////////////////
poison_buff_time = 0
radiation_buff_damage = 0
burning_buff_time = 0
temparature_buff_time = 0
alarm[3] = 1
////////////////////////////////////////////////////////////////

//독중독
global.poisoning = 0

//불에탐
global.burning = 0
buring_damage_dilay = 0

//방사능
global.radiation = 0

//온도
global.temperature = 26

//////////////////////////////////////지속버프들(  변수 단위는 지속시간 sec[초]  )
//독중독 무시
global.de_poisoning = 0

//화염 무시
global.de_fire = 0

//방사능 무시
global.de_radiation = 0

//추위 무시
global.de_cold = 0

//추가 공격력
global.plus_damage = 0

//추가 공격력 정도
global.plus_damage_mount = 1
global.accessory_damage_plus = 1

//공격 속도 증가
global.plus_swing_speed = 0

//악세사리 추가 방어력
global.accessory_defence = 1

//방사능 감소속도
global.radiation_dec_sp = 1

//독 감소속도
global.poisoning_dec_sp = 1

//온도 회복속도
global.temperature_rec_sp = 1

//지속 힐
global.keep_healing = 0

//야간 투시
global.night_vision = 0

//발광 포션
global.shining_self = 0
global.shining_self_co_op = 0

//속도 증가
global.plus_speed = 0
global.plus_speed_percentage = 1

//속도 증가 정도
global.plus_speed_mount = 0

//체력 무시
global.ignore_hp = 0

//산소 무시
global.ignore_oxygen = 0

//속도 저하
global.slow_movement = 0

//이동 플립
global.flip_movement = 0

//방사능 효과 데미지 감소
global.radiation_damege_dec = 0

//독 효과 데미지 감소
global.poisoning_damege_dec = 0

//블럭 디버프 데미지 무시
global.ignore_break_debuff = 0

//인벤토리 사이즈
global.real_inventory_size = 9



//포션 쿨타임
global.potion_cool_time = 0



////////////////////////////////////////////////////////////////

//HP
global.hp = 2 //기존 6
global.max_hp = 2
before_hp = global.hp
injured_effect = 0
auto_heal = 0

//Stemina
global.stemina = 2 //기존 5
global.max_stemina = 2
before_stemina = global.stemina
auto_stemina_heal = 0
global.stemina_min = 0
global.stemina_leveling = 0

//기절
global.knocked_out = 0
global.knocked_out_origin = 0
global.knocked_out_co_op = 0
double_knocked_out_cancle = 0

//섬 갯수
global.island_num = 0
draw_all_map = 0

//바이옴    0 = 일반 1 = 피에물든 2 = 오염된 3 = 얼음 4 = 사막 5 = 피에물든 얼음 6 = 피에물든 사막 7 = 오염된 얼음 8 = 오염된 사막
global.biome = 0

//옷
global.hazmat = 0
global.hazmat_co_op = 0

//물 흔들림
//alarm[2] = 1

//현재 바이옴
global.biome_real = "normal"


///////////////////////맵 관련 변수////////////////////////////

//리스폰 장소
global.respawn_x = room_width*0.5
global.respawn_y = room_height*0.5

//섬사이즈
global.island_size = 0

ini_open("Astronaut_map_pro_"+string(1)+".ini")
//바닥 로드
global.fl_block_all_num = 0

//광석 블럭 로드
global.ore_block_all_num = 0

//벽 블럭 로드
global.wall_block_all_num = 0

//나머지 블럭 로드
global.block_all_num = 0

//용광로 블럭 로드
global.furnace_block_all_num = 0

//상자 블럭 로드
global.chest_block_all_num = 0

global.meteor_num = 0
global.new_map = 0
global.room_size = 0
ini_close()





ini_open("Astronaut_remake_map_pr.ini")

global.all_map_num = ini_read_real("all_map_num","all_map_num",0)


//게임 종료전 위치
for(var i = 0; i < global.all_map_num+5; i++)
{
global.last_x_game_end[i] = ini_read_real("last_stayed_biome","x"+string(i),-1)
global.last_y_game_end[i] = ini_read_real("last_stayed_biome","y"+string(i),-1)
}


//마지막으로 밟았던 땅 바이옴
for(var i = 0; i < global.all_map_num+5; i++)
{
global.last_stayed_biome[i] = ini_read_real("last_stayed_biome","last_stayed_biome"+string(i),0)
}
	

for(var i = 0; i < global.all_map_num+5; i++)
{
global.map_name[i] = ini_read_string("map_name","map_name"+string(i),0)
}


ini_close()





for(var i = 0; i < global.all_map_num+5; i++)
{
	ini_open("Astronaut_map_pro_"+string(i)+".ini")

	global.map_cre_date_y[i] = ini_read_real("map_cre_date_y","map_cre_date_y"+string(i),0)
	global.map_cre_date_m[i] = ini_read_real("map_cre_date_m","map_cre_date_m"+string(i),0)
	global.map_cre_date_d[i] = ini_read_real("map_cre_date_d","map_cre_date_d"+string(i),0)
	global.map_cre_date_h[i] = ini_read_real("map_cre_date_h","map_cre_date_h"+string(i),0)
	global.map_cre_date_min[i] = ini_read_real("map_cre_date_min","map_cre_date_min"+string(i),0)

	ini_close()
};









//바닥 로드
global._object_index = array_create(global.fl_block_all_num,0)

global._x1 = array_create(global.fl_block_all_num,0)
global._y1 = array_create(global.fl_block_all_num,0)



//광석 블럭 로드
global._image_index = array_create(global.ore_block_all_num,0)
global._sprite_index = array_create(global.ore_block_all_num,0)

global._x2 = array_create(global.ore_block_all_num,0)
global._y2 = array_create(global.ore_block_all_num,0)


global._block_num = array_create(global.ore_block_all_num,0)
global._item_num = array_create(global.ore_block_all_num,0)
global._stone_color = array_create(global.ore_block_all_num,0)
global._xscale = array_create(global.ore_block_all_num,0)
global._yscale = array_create(global.ore_block_all_num,0)



//벽 블럭 로드
global._object_index2 = array_create(global.wall_block_all_num,0)

global._x3 = array_create(global.wall_block_all_num,0)
global._y3 = array_create(global.wall_block_all_num,0)

global._image_angle = array_create(global.wall_block_all_num,0)



//나머지 블럭 로드
global._image_index2 = array_create(global.block_all_num,0)
global._object_index3 = array_create(global.block_all_num,0)

global._x4 = array_create(global.block_all_num,0)
global._y4 = array_create(global.block_all_num,0)



//용광로 블럭 로드
global._object_index4 = array_create(global.furnace_block_all_num,0)

global._x5 = array_create(global.furnace_block_all_num,0)
global._y5 = array_create(global.furnace_block_all_num,0)

global._furnacing_ore = array_create(global.furnace_block_all_num,0)
global._furnacing_time = array_create(global.furnace_block_all_num,0)



//용광로 블럭 로드
global._image_index3 = array_create(global.chest_block_all_num,0)

global._x6 = array_create(global.chest_block_all_num,0)
global._y6 = array_create(global.chest_block_all_num,0)

global._chest_item__ = array_create(global.chest_block_all_num*14,0)
global._chest_item___num = array_create(global.chest_block_all_num*14,0)



/////////////////////////////////////////////////////////////

//바닥 이미지 갯수
global.floor_spr_num = 0

//라이트 사이즈 효과
global.light_size = 0



//////////////////////////툴 인벤박스/////////////////////////
//툴 인벤박스 선택함 확인변수
global.tool_inv_box_choose = 1

////////////////////인벤토리 디자인 관련 변수///////////////////

//아이템 획득했을때 획인 (퀵슬롯에 들어잇는 아이템이 도구가 아닌경우 갯수를 리서치해야되기 때문)
global.getting_item = 0



/////////////////////해당줄부턴 인벤토리 관련 변수들///////////////////////////


///////////////////////////////도구 변수//////////////////////////////
global.all_tools_num = 88+1 //전체 이미지 갯수+1
var a_all_tools_num = global.all_tools_num
global.p = array_create(a_all_tools_num,0)
//global.before_p = array_create(a_all_tools_num,0)

//여러 도구들 보유 유무
for(var i = 1; i < a_all_tools_num; i++)
{
global.p[i] = 0
//global.before_p[i] = 0
}


///////////////////////////////리소스 변수//////////////////////////////

global.all_resources_num = 70+1
var a_all_resources_num = global.all_resources_num
global.n = array_create(a_all_resources_num,0)
//global.before_n = array_create(a_all_resources_num,0)

//여러 광석들 보유 유무
for(var i = 1; i < a_all_resources_num; i++)
{
global.n[i] = 0
//global.before_n[i] = 0
}



///////////////////////////////포션 변수//////////////////////////////

global.all_potions_num = 22+1
var a_all_potions_num = global.all_potions_num
global.k = array_create(a_all_potions_num,0)
//global.before_k = array_create(a_all_potions_num,0)

//여러 포션들 보유 유무
for(var i = 1; i < a_all_potions_num; i++)
{
global.k[i] = 0
//global.before_k[i] = 0
}


///////////////////////////////설치가능 블럭 변수//////////////////////////////

global.all_placeable_num = 54+1
var a_all_placeable_num = global.all_placeable_num
global.b = array_create(a_all_placeable_num,0)

//여러 설치가능 블럭들 보유 유무
for(var i = 1; i < a_all_placeable_num; i++)
{
global.b[i] = 0
//global.before_k[i] = 0
}




///////////////////////////////옷 아이템 변수//////////////////////////////

global.all_clothes_num = 5+1
var a_all_clothes_num = global.all_clothes_num
global.c = array_create(a_all_clothes_num,0)

//여러 옷 아이템들 보유 유무
for(var i = 1; i < a_all_clothes_num; i++)
{
global.c[i] = 0
//global.before_k[i] = 0
}




//////////////////////////////악세사리 아이템 변수//////////////////////////////

global.all_accessories_num = 21+1
var a_all_accessories_num = global.all_accessories_num
global.s = array_create(a_all_accessories_num,0)

//여러 악세사리 아이템들 보유 유무
for(var i = 1; i < a_all_accessories_num; i++)
{
global.s[i] = 0
//global.before_k[i] = 0
}

//악세사리 저장된 보유갯수
for(var i = 1; i < a_all_accessories_num; i++)
{
global.saved_accessory_num[i] = 0
}




//아이템 이전 갯수 저장
//alarm[8] = 5



////////////////////////////////////////////////버프 UI드로우////////////////////////////////////////////////

created_o2_ui_buff = 0
created_po_ui_buff = 0
created_bu_ui_buff = 0
created_ra_ui_buff = 0
created_te_ui_buff = 0

created_safe_zone = 0

created_de_po_ui_buff = 0
created_de_bu_ui_buff = 0
created_de_ra_ui_buff = 0
created_de_co_ui_buff = 0

created_nv_ui_buff = 0
created_movement_speed_ui_buff = 0
created_swing_speed_ui_buff = 0
created_hp_healing_ui_buff = 0
created_de_o2_ui_buff = 0
created_de_hp_ui_buff = 0


////////////////////////////////////////////////////////////////////////////////////////////////////////////

//빛 크기
global.light_scaling = 1
light_scaling_ = 0
light_scaling_time = 0

//빛 밝기
global.light_bright = 1
light_bright_ = 0
light_bright_time = 0


//청크 사이즈
global.chunk_size = 0

//눈 내림 이팩트 범위
global.snow_effect_distance = 0

//눈송이 갯수 설정
global.snowflake_amount = 0

//가우시안 서피스 on/off
global.draw_gausian = 0
global.Degree = 2
global.V = 2

//물 출렁거림 효과 on/off
global.water_shake_setting = 0

//그림자 끄기 on/off
global.shadow_setting = 0

//바닥 연결
global.floor_connection = 0

//바닥 퀄리티 on/ff
global.floor_quality = 0

//바닥 물그리기
global.floor_sea = 0

//바닥 높이 그리기
global.floor_height = 0

//오브젝트 이팩트 효과 on/off
global.obj_effect = 0

//언어
global.language = 0

//시야범위
global.sight = 0

//윈도우 사이즈
global.window_ = 1280
global.b_window = 1280
var pressed = 1

if global.window_ = 1920
{
pressed = 0
}

global.img_bl_col = c_white

restart = 0

//퀵 슬롯 숫자 표기
global.quick_slot_number = 0

//디버프 데미지 효과음
global.debuff_damage_ef_sound = -1

//벽 알파값 자동조정
global.wall_alpha = 0

//가이드 메세지 표시
global.guide_massage = 0

//소리 크기
global.master_volume = 0.5
global.sfx_volume = 0.5
global.scene_volume = 1

//맵 생성시 자동 저장
global.a_m_c_save = 0

//조합창 오픈시 자동 저장
global.a_m_save_craft_window = 0

//맵 자동저장 타이머
global.a_save = 10
auto_save_time = 0

//경험치 숫자 표기
global.drawing_exp = 0

//안티 에일리어싱
global.anti_aliasing = 0

//수직 동기화
global.vsync = false

//맵 로딩 속도
global.chunk_loading_speed = 0.6

//꽃 보스
global.flower_boss_killed = 0
global.flower_boss_raid_start = 0

//npc이벤트
for(var i = 0; i < 99; i++)
{
global.npc_event[i] = 0
}

//펀가이 지역 발견
global.found_fungi_biome = 0

//타일 정리
//global.tile_cleaning = 360

//선택지 선택된거
global.choice_choosed = 0
global.choice_choosed_co_op = 0


//선택지 이미 선택했음
global.choice_choosed_already_co_op = 0
global.choice_choosed_already = 0

//다른 플레이어 대회 기다리는 중
global.waiting_o_p_chat = 0

//에어드랍 확보 이벤트
global.airdrop_contest = 0


///////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////모래바람 효과///////////////////////////////////////////////////
dust_effect_alpha1 = 0
t_dust_effect_alpha1 = 0
dust_effect_alpha2 = 0
t_dust_effect_alpha2 = 0
dust_1_color = c_white
dust_2_color = c_white
alarm[5] = 1

chat_buffer = buffer_create(2, buffer_grow, 1);



/////////////////////////////////////////////파도///////////////////////////////////////////////////////
global.water_wave_enable = 0
global.check_water_wave = 0
global.b_check_water_wave = 0

///////////////////////////메모리 최적화//////////////////////////
alarm[7] = 10800

//게임 데이터 로드
alarm[0] = 1
}