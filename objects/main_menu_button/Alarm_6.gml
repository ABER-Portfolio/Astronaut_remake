/// @description Insert description here
// You can write your code in this editor
instance_destroy(map_select_button)
with(main_menu_button)
{
	if image_index = 13
	{
	instance_destroy()
	}
}

with(main_menu_button)
{
can_click = 1	
}

global.now_loading = 0