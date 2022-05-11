/// @description Insert description here
// You can write your code in this editor
with(main_menu_button)
{
	if image_index != 10 && image_index != 11 && image_index != 13
	{
	instance_destroy()
	}
}

with(main_menu_button)
{
can_click = 1	
}

global.now_loading = 0