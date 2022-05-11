/// @description Insert description here
// You can write your code in this editor
var max_i = 1+global.all_map_num

for(var i = 0; i < max_i; i++)
{
var a = instance_create(-999,-999,map_select_button)
a.setting_num = i
}

var button_ = instance_create(1090,1400,main_menu_button)
button_.image_index = 13

with(main_menu_button)
{
can_click = 1	
}

global.now_loading = 0