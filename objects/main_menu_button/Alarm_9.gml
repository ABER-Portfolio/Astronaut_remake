/// @description Insert description here
// You can write your code in this editor
instance_create(640,250,enter_ip)
instance_create(640,378,enter_port)


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

var button_ = instance_create(1090,1400,main_menu_button)
button_.image_index = 13

var button_ = instance_create(640,1400,main_menu_button)
button_.image_index = 14
global.now_loading = 0