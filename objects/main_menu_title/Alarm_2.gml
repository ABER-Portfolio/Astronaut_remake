/// @description Insert description here
// You can write your code in this editor
instance_destroy(main_menu_button)

//오브젝트 비활성화
instance_deactivate_object(monster_parents)
instance_deactivate_object(block_parents)
instance_deactivate_object(fl_parents)
	
instance_create(0,0,BG_blind)
instance_create(0,0,option_line_bar)
obj_camera.setting_blind = 1.2
opened_option ++

global.now_loading = 0