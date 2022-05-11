/// @description Insert description here
// You can write your code in this editor

var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


//뷰안에 있는경우만 드로우
if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{
	
var camera_xscale = obj_camera.v_x/1280
	
if global.shadow_setting = 0
{
draw_sprite_ext(shadow___,4,x,y+4,image_xscale*1.45,image_yscale*1.2,0,c_white,0.25);
}

draw_sprite_ext(sprite_index,image_index,x,y+plus_y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_sprite_ext(sprite_index,image_index+1,x,y+plus_y,image_xscale,image_yscale,image_angle,c_white,alpha);

draw_sprite_ext(sprite_index,4,x,y+plus_y,image_xscale,image_yscale,image_angle,c_white,picking_effect_alpha)
if global.knocked_out = 0 && global.do_not_move = 0
{
	if auto_target > 0
	{
	draw_sprite_ext(spr_ore_outline_mask,3,x,y+plus_y,image_xscale,image_yscale,image_angle,c_white,1)
	}
			
	if picking_effect_alpha > 0
	{
	draw_sprite_ext(spr_ore_outline_mask,3,x,y+plus_y,image_xscale,image_yscale,image_angle,$FFF0AE00 & $ffffff,picking_effect_alpha)
	}
			
	if cannot_picking_effect_alpha > 0
	{
	draw_sprite_ext(spr_ore_outline_mask,3,x,y+plus_y,image_xscale,image_yscale,image_angle,$FF6200ED & $ffffff,cannot_picking_effect_alpha)
	}
}




///////////////////////////////가우시안 그리기/////////////////////////////
if global.draw_gausian = 1
{
mdDrawGaussian(sprite_index, image_index, global.Degree, global.V, x, y+plus_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if global.now_breaking_ore_id = id && draw_hp_bar > 0
{
draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,1,x-4.5,y+13,global.if_global_hp_minus*0.5,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,2,x-4.5,y+13,global.global_hp*0.5,1,0,c_white,draw_hp_bar)
}
}