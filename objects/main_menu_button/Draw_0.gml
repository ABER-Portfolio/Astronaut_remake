/// @description Insert description here
// You can write your code in this editor
draw_self()
if image_index != 3 && image_index != 10 && image_index != 11 && image_index != 13 && image_index != 14 && image_index != 15 && image_index != 16 && image_index != 17
{
draw_sprite_ext(sprite_index,8,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}
else
{
	if image_index != 11 && image_index != 14 && image_index != 15 && image_index != 17
	{
	draw_sprite_ext(sprite_index,9,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	}
	else
	{
	draw_sprite_ext(sprite_index,12,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	}
}

//draw_text(x,y,instance_number(item_info_log))