/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;


var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720


var text_scale = 25
var shape_scale = 44
var text_space = 60
var first_text_space = 170

//라인 바 그리기
draw_sprite_ext(sprite_index,1,xx+(obj_camera.v_x/1280)*450,yy+((obj_camera.v_y/720)*1.02)*first_text_space+(setting_num*text_space),camera_xsize*1.8,camera_ysize*1.8,0,c_white,1)

//라인 바 버튼
draw_sprite_ext(sprite_index,0,xx+((obj_camera.v_x/1280)*(450+pressed-(2*1.8))),yy+((obj_camera.v_y/720)*1.02)*first_text_space+(setting_num*text_space),camera_xsize*1.8,camera_ysize*1.8,0,c_white,1)
if global.language = 0
{
draw_text_kl_scale(xx+(obj_camera.v_x/1280)*820,yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space),"Auto saving\n(Saving the game automatically\n every set time.)",(text_scale/shape_scale)*camera_ysize*0.0125*50*230,-1,text_alpha,c_white,0,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
}
if global.language = 1
{
draw_text_kl_scale(xx+(obj_camera.v_x/1280)*820,yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space),"자동저장\n(설정된 시간마다 자동으로 게임을 저장합니다.)",(text_scale/shape_scale)*camera_ysize*0.0125*50*230,-1,text_alpha,c_white,0,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*30,(text_scale/shape_scale)*camera_ysize*0.0125*30,0)
}
global.a_save = pressed/(200*1.8)

//숫자 표시
draw_text_kl_scale(xx+((obj_camera.v_x/1280)*(425)),yy+((obj_camera.v_y/720)*1.02)*first_text_space+(setting_num*text_space),string(floor(pressed/(200*1.8)*60))+" min",(text_scale/shape_scale)*camera_ysize*0.0125*50*230,-1,text_alpha,c_white,0,1,ko_80,(text_scale/shape_scale/1.1)*camera_xsize*0.0125*30,(text_scale/shape_scale/1.1)*camera_ysize*0.0125*30,0)