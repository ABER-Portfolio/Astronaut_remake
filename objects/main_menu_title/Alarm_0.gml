/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 3; i++)
{
var button_ =  instance_create(200+260*i,1400,main_menu_button)
	if i = 1
	{
	button_.image_index = 4
	}
	else if i = 2
	{
	button_.image_index = 7
	}
	else
	{
	button_.image_index = i
	}
}

var button_ =  instance_create(300+260*3,1400,main_menu_button)
button_.image_index = 3

global.now_loading = 0