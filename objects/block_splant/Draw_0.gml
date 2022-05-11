/// @description Insert description here
// You can write your code in this editor

//뷰안에 있는경우만 드로우
if inside_of_view = 1
{
	if image_index <= 8
	{
	draw_sprite_pos(sprite_index,image_index,x-10.5+(x_shake+wind_shake),y-9.5,x+10.5+(x_shake+wind_shake),y-9.5,x+10.5,y+9.5,x-10.5,y+9.5,image_alpha)
	}
	else
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	}

if image_index > 8
{
	if global.knocked_out = 0 && global.do_not_move = 0
	{
		if auto_target > 0
		{
		draw_sprite_ext(spr_ore_outline_mask,3,x,y,image_xscale,image_yscale,image_angle,c_white,1)
		}
			
		if picking_effect_alpha > 0
		{
		draw_sprite_ext(spr_ore_outline_mask,3,x,y,image_xscale,image_yscale,image_angle,$FFF0AE00 & $ffffff,picking_effect_alpha)
		}
			
		if cannot_picking_effect_alpha > 0
		{
		draw_sprite_ext(spr_ore_outline_mask,3,x,y,image_xscale,image_yscale,image_angle,$FF6200ED & $ffffff,cannot_picking_effect_alpha)
		}
	}


///////////////////////////////가우시안 그리기/////////////////////////////

	if global.now_breaking_ore_id = id && draw_hp_bar > 0
	{
	draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,draw_hp_bar)

	draw_sprite_ext(sprite156,1,x-4.5,y+13,global.if_global_hp_minus*0.5,1,0,c_white,draw_hp_bar)

	draw_sprite_ext(sprite156,2,x-4.5,y+13,global.global_hp*0.5,1,0,c_white,draw_hp_bar)
	}
}
	
}