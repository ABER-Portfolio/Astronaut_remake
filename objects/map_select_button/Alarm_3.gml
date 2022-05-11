/// @description Insert description here
// You can write your code in this editor
if setting_num = 0
{
instance_destroy(enter_map_name)
instance_destroy(option_map_size)
instance_destroy(option_island_size)
with(character_creator)
{
	if self.image_index = 3
	{
instance_destroy(character_creator)
	}
}

	with(main_menu_button)
	{
		if self.image_index = 16 || self.image_index = 17
		{
		instance_destroy()
		}
	}
main_menu_button.can_click = 1
}