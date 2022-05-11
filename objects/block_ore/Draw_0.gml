/// @description Insert description here
// You can write your code in this editor

if draw_true = 1
{
//뷰안에 있는경우만 드로우
if inside_of_view = 1
{
	
var x_scale_22 = (0.5-xscale)*22

var y_plus_scale_22 = y+x_scale_22

//광석
if sprite_index = item_sp && image_index != 49 && image_index != 50 && image_index != 51
{
draw_sprite_ext(item_sp,stone_color,x,y_plus_scale_22,xscale*image_xscale,abs(xscale*image_yscale),image_angle,c_white,image_alpha)
}

if sprite_index = item_sp
{
draw_sprite_ext(sprite_index,image_index,x,y_plus_scale_22,xscale*image_xscale,abs(xscale*image_yscale),image_angle,c_white,image_alpha)
}
else
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*0.5,abs(image_yscale*0.5),image_angle,c_white,image_alpha)
}



if sprite_index = item_sp
{
	if image_index != 49 && image_index != 50 && image_index != 51
	{
	draw_sprite_ext(item_sp,2,x,y_plus_scale_22,xscale*image_xscale,abs(xscale*image_yscale),image_angle,c_white,auto_picking)
	}
	else
	{
		if image_index = 50
		{
		draw_sprite_ext(item_sp,48,x,y_plus_scale_22,xscale*image_xscale,abs(xscale*image_yscale),image_angle,c_white,auto_picking)
		}
		else
		{
		draw_sprite_ext(item_sp,51,x,y_plus_scale_22,xscale*image_xscale,abs(xscale*image_yscale),image_angle,c_white,auto_picking)
		}
	}
///////////////////////////////가우시안 그리기/////////////////////////////
}



if sprite_index = spr_tree
{
	if image_index = 3 || image_index = 6 || image_index = 9
	{
	draw_sprite_ext(spr_tree,0,x,y,image_xscale*0.5,abs(image_yscale)*0.5,image_angle,c_white,auto_picking)
	}
	if image_index = 4 || image_index = 7 || image_index = 10
	{
	draw_sprite_ext(spr_tree,1,x,y,image_xscale*0.5,abs(image_yscale)*0.5,image_angle,c_white,auto_picking)
	}
	if image_index = 5 || image_index = 8 || image_index = 11
	{
	draw_sprite_ext(spr_tree,2,x,y,image_xscale*0.5,abs(image_yscale)*0.5,image_angle,c_white,auto_picking)
	}
}


////////////////////////////////////////////////////////////////////////////////////////


//1번

if global.now_breaking_ore_id = id && draw_hp_bar > 0
{
draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,1,x-4.5,y+13,global.if_global_hp_minus/global.global_maxhp,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,2,x-4.5,y+13,global.global_hp/global.global_maxhp,1,0,c_white,draw_hp_bar)

//draw_text_kl_scale(x,y-21,string(global.global_hp_name),(camera_xscale*2)*15,-1,auto_target,c_white,-1,0,ko_80,camera_xscale/6,camera_xscale/6,0)
}


}

}
