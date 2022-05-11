/// @description Insert description here
// You can write your code in this editor
if instance_number(creating_maps) > 0 && instance_number(BG_blind) > 0
{
var _text_bar = instance_create(x,y,draw_debug_text)
_text_bar.text = "Restart the game after 10s"
alarm[6] = 600
}