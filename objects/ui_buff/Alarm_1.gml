/// @description Insert description here
// You can write your code in this editor

if global.playing_scene = 0
{
	if image_index = 0
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
		if global.language = 0
		{
		_text_bar.text = "Need oxygen"
		}
		if global.language = 1
		{
		_text_bar.text = "산소가 필요해"
		}
	}

	if image_index = 2 || image_index = 5
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
		if global.language = 0
		{
		_text_bar.text = "It is too hot"
		}
		if global.language = 1
		{
		_text_bar.text = "너무 뜨거워"
		}
	}

	if image_index = 4
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
		if global.language = 0
		{
		_text_bar.text = "It is too cold"
		}
		if global.language = 1
		{
		_text_bar.text = "너무 추워"
		}
	}
}

