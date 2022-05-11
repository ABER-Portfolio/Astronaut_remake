/// @description Insert description here
// You can write your code in this editor
global.pressed = setting_num

var gl_pressed = global.pressed


var sf_ef = audio_play_sound(rd_1,1,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.7,0)

//////////////////////////////////////////////////////////////////////////////////////////
	//클릭했을때
	if gl_pressed != 8
	{
	instance_destroy(option_button_parents)
	alarm[gl_pressed+1] = 1
	}
	
	//클릭했을때
	if gl_pressed = 8
	{
	instance_destroy(option_button_parents)
	
	if instance_number(main_menu_button) = 0
	{
	var a = instance_create(-999,-999,option_exit_game)
	a.setting_num = 2
	}
	//창 열려있음
	//global.opening_menu = 0
	//save game
	//save_game
	//저장
	//code.alarm[11] = 1
	//instance_destroy(option_parents)
	//instance_destroy(BG_blind)
	}