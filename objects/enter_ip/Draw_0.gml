/// @description Insert description here
// You can write your code in this editor
draw_self()
if global.mobile = 0
{
var win_wid = (window_get_width()/1280)
}
else
{
var win_wid = (window_get_width()/2960)
}
var win_hei = window_get_height()/(720*(global.mobile+1))

//depth = BG_blind.depth-1

if choosen = 1
{
image_alpha += (0.2 - image_alpha)*0.2
	if string_length(text) <= 23
	{
	text = keyboard_string
	}
	else
	{
		if keyboard_check(vk_backspace) = true
		{
		text = keyboard_string
		}
	}
draw_text_kl_scale(x,y,string(text)+"|",image_xscale*30,-1,1,c_white,0,0,ko_80,0.6*0.0125*30/win_wid,1*0.6*0.0125*30/win_hei,0)
}
else
{
	if enter_ip.choosen = 0 && enter_port.choosen = 0
	{
	keyboard_string = ""
	}
image_alpha += (0.5 - image_alpha)*0.2
draw_text_kl_scale(x,y,string(text),image_xscale*30,-1,1,c_white,0,0,ko_80,0.6*0.0125*30/win_wid,1*0.6*0.0125*30/win_hei,0)
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)



global.before_entered_ip = text;