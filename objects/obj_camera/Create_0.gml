/// @description Insert description here
// You can write your code in this editor
global.auto_scroll_x = noone
global.auto_scroll_y = noone
global.ui_loc = 0

instance_activate_all()
if instance_number(obj_camera) > 1
{
instance_destroy()
}
else
{

//랜덤 브금 재생
slow_gain_up = 0
global.bgm_roads_ = audio_play_sound(bgm_roads,3,false)
global.bgm_roads_volume = 0

global.bgm_warpath_ = noone
global.bgm_warpath_volume = 0

global.bgm_monuments_ = noone
global.bgm_monuments_volume = 0

global.boss_bgm_ = noone
global.boss_bgm_volume = 0


global.fighting_now = 0
global.in_monument_now = 0
global.in_monument_now_co_op = 0

automatic_bgm_replay_time = 0


playing_boss_gain = 0
global.playing_boss_bgm = 0
alarm[6] = 1
event_occurrence = 0
hurted_alpha = 0
press_f_guide = 0
press_f_guide_alpha = 0


global.shake_x = 0
global.shake_y = 0
global.t_shake_x = 0;
global.t_shake_y = 0;
global.shake_time = 0
global.view_angle_ = 0
global.playing_scene = 0
scene_cancle_cooltime = 0
global.playing_scene_black_bg = 0

beta_test_text_x = 500
t_beta_test_text_x = 0
setting_blind = 0

bomb_blind = 0

saved_sfx_volume = -1

large_minimap_opened = 0


alarm[11] = 600

cm_x = 168
cm_y = 18
//global.potion_cool_time = 60
alarm[1] = 60


raiding_bar_alpha = 0

var yy = global._came_vy
var yyy = global._came_vy_p_h 
text_beta = "Astronaut beta"

global.event_occurrence = 0
global.black_blind = 0


v_x = 1280
v_y = 720
tv_x = 1280
tv_y = 720

t_angle = irandom_range(-180,0)

save_loading_angle = 0

//점점 화면 검해지기
b_blind = 0
/////////////////부활까지 남은시간 드로우


time_left = 7
t_time_left = 7
draw_time_left = 0

draw_time_left_alpha = 0
draw_time_left_talpha = 0



////////////////////////////////////////////////////

//몹, 광석 등등 체력 표시
global.draw_global_hp = 0
global.t_draw_global_hp = 0

//몹, 광석 이름표시
global.global_hp_name = "Unknown"

//몹, 광석 체력상태 구하는 변수
global.global_hp = 0
global.t_global_hp = 0
global.global_maxhp = 0

//몹, 광석 등이 체력을 닳았을때 체력바 색이 바뀌는 이팩트
global.if_global_hp_minus = 0

//경험치 바 반짝임 
global.r_exp_white = 0
global.o_exp_white = 0

y4 = yyy+(obj_camera.v_y/720)*64
ty4 = yyy-(obj_camera.v_y/720)*32


//체력바 에니메이션 이후 위치 고정
set_y = 0
alarm[4] = 120

//////////////////////////////////////////////


//최대 fps 측정
max_fps = 0

//초당 평균 프레임 측정
average_frames = 0
sec_plus_frame = 0
alarm[5] = 1
alarm[7] = 30

//분당 평균 프레임 측정
average_frames_m= 0
min_plus_frame = 0



global.black_outed = 0
global.t_black_outed = 0
global.paused_screen_capture = 0
_screen_ = noone
}




