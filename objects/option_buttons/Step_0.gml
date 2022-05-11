/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720






//클릭했을때
if setting_num = 8 && keyboard_check_pressed(vk_escape)
{
//창 열려있음
global.opening_menu = 0
	
var sf_ef = audio_play_sound(rd_1,1,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.7,0)

//save game
//save_game
//저장
code.alarm[11] = 1
	
instance_destroy(option_parents)
instance_destroy(BG_blind)
}






image_xscale = 15*string_length(text)




if image_yscale != 20*camera_ysize
{
image_yscale = 20*camera_ysize
}


if depth != -(room_width*5.11)
{
depth = -(room_width*5.11)
}

//var text_scale = 25
//var shape_scale = 33
var text_space = 60
var first_text_space = 170



//x좌표는 다 똑같아서 하나로 씀
if x != xx+(camera_xsize)*30
{
x = xx+(camera_xsize)*30
}


if y != yy+(camera_ysize)*first_text_space+(setting_num*text_space)
{
y = yy+(camera_ysize)*first_text_space+(setting_num*text_space)
}
