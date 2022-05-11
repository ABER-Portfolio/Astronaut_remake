/// @description Insert description here
// You can write your code in this editor
var button_ = instance_create(1090,1400,main_menu_button)
button_.image_index = 10

var button_ = instance_create(800,560,main_menu_button)
button_.image_index = 15

var _character_cre = instance_create(640,360,character_creator)
_character_cre.image_index = 0


with(main_menu_button)
{
	if image_index != 10 && image_index != 15
	{
	instance_destroy()
	}
}

with(main_menu_button)
{
can_click = 1	
}
global.now_loading = 0