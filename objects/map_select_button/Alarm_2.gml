/// @description Insert description here
// You can write your code in this editor

var _character_cre = instance_create(640,360,character_creator)
_character_cre.image_index = 2


var button_ = instance_create(1090,1400,main_menu_button)
button_.image_index = 16

var button_ = instance_create(640,1400,main_menu_button)
button_.image_index = 17



main_menu_button.can_click = 1
map_select_button.can_click = 1
global.now_loading = 0