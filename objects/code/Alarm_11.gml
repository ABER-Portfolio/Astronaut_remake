/// @description Game data save

ini_open_protect("Astronaut_remake_user.ini")
ini_write_real("before","ip",global.before_entered_ip)
ini_close_protect();


ini_open("Astronaut_remake_setting.ini")

//청크 사이즈
ini_write_real("a","a1",global.chunk_size)

//눈 내림 이팩트 범위
ini_write_real("a","a2",global.snow_effect_distance)

//눈송이 갯수 설정
ini_write_real("a","a3",global.snowflake_amount)

//가우시안 서피스 on/off
ini_write_real("a","a4",global.draw_gausian)
ini_write_real("a","a5",global.Degree)
ini_write_real("a","a6",global.V)

//물 출렁거림 효과 on/off
ini_write_real("a","a7",global.water_shake_setting )

//그림자 끄기 on/off
ini_write_real("a","a8",global.shadow_setting)

//바닥 연결
ini_write_real("a","a9",global.floor_connection)

//바닥 퀄리티 on/ff
ini_write_real("a","a10",global.floor_quality)

//바닥 물그리기
ini_write_real("a","a11",global.floor_sea)

//바닥 높이 그리기
ini_write_real("a","a12",global.floor_height)

//오브젝트 이팩트 효과 on/off
ini_write_real("a","a13",global.obj_effect)

//라이트 사이즈 효과
ini_write_real("a","a14",global.light_size)

//언어
ini_write_real("a","a15",global.language)

//시야범위
ini_write_real("a","a16",global.sight)

if global.mobile = 0
{
//윈도우 사이즈
ini_write_real("a","a17",global.window_)
}

//퀵 슬롯 숫자 표기
ini_write_real("a","a18",global.quick_slot_number)

//디버프 데미지 효과음
ini_write_real("a","a19",global.debuff_damage_ef_sound)

//벽 알파값 자동조정
ini_write_real("a","a20",global.wall_alpha)

//벽 알파값 자동조정
ini_write_real("a","a21",global.guide_massage)

//사운드 설정
ini_write_real("a","a22",global.master_volume)
ini_write_real("a","a22_sfx",global.sfx_volume)

//맵 생성시 자동 저장
ini_write_real("a","a23",global.a_m_c_save)

//맵 생성시 자동 저장
ini_write_real("a","a24",global.a_save)

//경험치 숫자 표기
ini_write_real("a","a25",global.drawing_exp)

//안티 에일리어싱
ini_write_real("a","a26",global.anti_aliasing)

//수직 동기화
ini_write_real("a","a27",global.vsync)

//닉네임
ini_write_string("a","a28",global.nickname)

//조합창을 닫을때 게임 자동저장
ini_write_real("a","a29",global.a_m_save_craft_window)

//캐릭터 생성했음
ini_write_real("a","a30",global.character_created)

//청크로딩 속도
ini_write_real("a","a31",global.chunk_loading_speed)

ini_close();















/////////////////////////////////////////////////////////////////////////////////////////////////
if code.restart > 0
{
//game_restart()
code.restart = 0
}