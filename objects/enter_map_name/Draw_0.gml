/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if global.language = 0
{
draw_text_kl_scale(x,y-55,"Set the world name",image_xscale*30,-1,1,c_white,0,0,ko_80,image_xscale*0.45*0.0125*30,image_yscale*0.45*0.0125*30,0)
}
else if global.language = 1
{
draw_text_kl_scale(x,y-55,"월드 이름 설정",image_xscale*30,-1,1,c_white,0,0,ko_80,image_xscale*0.45*0.0125*30,image_yscale*0.45*0.0125*30,0)
}

if choosen = 1
{
	
	if des = 0
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
	}
draw_text_kl_scale(x,y,string(text)+"|",image_xscale*30,-1,1,c_white,0,0,ko_80,image_xscale*0.5*0.0125*30,image_yscale*0.5*0.0125*30,0)
}
else
{
	if text = ""
	{
	text = "Unknown"
	}
	if des = 0
	{
	image_alpha += (0.5 - image_alpha)*0.2
	}
draw_text_kl_scale(x,y,string(text),image_xscale*30,-1,1,c_white,0,0,ko_80,image_xscale*0.5*0.0125*30,image_yscale*0.5*0.0125*30,0)
}



draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)