/// @description Insert description here
// You can write your code in this editor
instance_destroy()
instance_destroy(character_creator)
instance_destroy(option_set_nickname)
instance_destroy(option_charater_s)

instance_destroy(option_goggles_R)
instance_destroy(option_goggles_G)
instance_destroy(option_goggles_B)
instance_destroy(option_suit_R)
instance_destroy(option_suit_G)
instance_destroy(option_suit_B)
instance_destroy(option_o2_tank_R)
instance_destroy(option_o2_tank_G)
instance_destroy(option_o2_tank_B)

with(main_menu_button)
{
	if self.image_index = 10 || self.image_index = 11 || self.image_index = 13
	{
	instance_destroy()
	}
}

with(main_menu_button)
{
can_click = 1	
}

global.now_loading = 0