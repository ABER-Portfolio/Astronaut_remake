

var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

//뷰안에 있는경우만 드로우
if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{

var yscale_16 = (1-yscale)*16
	
var camera_xscale = obj_camera.v_x/1280
	
//그림자
if global.shadow_setting = 0
{
draw_sprite_ext(sprite_index,2,x,floor_y+yscale_16,xscale*image_xscale,abs(yscale*image_yscale),0,c_black,0.5-(point_distance(x,y,x,floor_y))*0.1)
}


draw_sprite_ext(sprite_index,0,x,y+yscale_16,xscale*image_xscale,abs(yscale*image_yscale),image_angle,c_white,image_alpha)
draw_sprite_ext(sprite_index,3,x,y+yscale_16,xscale*image_xscale,abs(yscale*image_yscale),image_angle,c_white,picking_effect_alpha)
if global.knocked_out = 0 && global.do_not_move = 0
{
	if auto_target > 0
	{
	draw_sprite_ext(spr_ore_outline_mask,4,x,y+yscale_16,xscale*image_xscale,abs(yscale*image_yscale),image_angle,c_white,1)
	}
}




///////////////////////////////가우시안 그리기/////////////////////////////



if global.now_breaking_ore_id = id && draw_hp_bar > 0
{
draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,1,x-4,y+13,global.if_global_hp_minus*0.5,1,0,c_white,draw_hp_bar)

draw_sprite_ext(sprite156,2,x-4,y+13,global.global_hp*0.5,1,0,c_white,draw_hp_bar)
}



}
