/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
global.draw_minimap++

	if global.draw_minimap > 1
	{
	global.draw_minimap = -1
	}
}