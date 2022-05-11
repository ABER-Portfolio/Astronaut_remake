/// @description Insert description here
// You can write your code in this editor

//뷰안에 있는경우만 드로우
if inside_of_view = 1
{

//그림자
//if global.shadow_setting = 0
//{
//draw_sprite_ext(item_sp,3,x,y,image_xscale*1.01,image_xscale*1.01,0,c_white,image_alpha-0.7)
//}


//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_angle*0.1)
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,5,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,auto_picking)


if global.knocked_out = 0 && global.do_not_move = 0
{
	if auto_target > 0
	{
	draw_sprite_ext(sprite_index,3,x,y,image_xscale,image_yscale,image_angle,c_white,auto_target)
	}
}


///////////////////////////////가우시안 그리기/////////////////////////////



if global.now_breaking_ore_id = id && draw_hp_bar > 0
{
draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,1,x-4.5,y+13,global.if_global_hp_minus/global.global_maxhp,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,2,x-4.5,y+13,global.global_hp/global.global_maxhp,1,0,c_white,draw_hp_bar)
}



}