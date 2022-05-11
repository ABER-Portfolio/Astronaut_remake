/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,0,c_white,image_alpha-0.6)


var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

//뷰안에 있는경우만 드로우
if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{
//if player.y >= y
//{
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
//}
if global.co_op_mode = 1
{
	if instance_number(player)
	{
		if player.x > x
		{
		draw_sprite_ext(sprite_index,0,x+1,y,point_distance(x,y,player.x,player.y),1,point_direction(x,y,player.x,player.y),c_white,alpha)
		}
		else
		{
		draw_sprite_ext(sprite_index,0,x,y,point_distance(x,y,player.x,player.y),-1,point_direction(x,y,player.x,player.y),c_white,alpha)
		}
	}
	
	if instance_number(player_co_op)
	{
		if player_co_op.x > x
		{
		draw_sprite_ext(sprite_index,0,x+1,y,point_distance(x,y,player_co_op.x,player_co_op.y),1,point_direction(x,y,player_co_op.x,player_co_op.y),c_white,alpha2)
		}
		else
		{
		draw_sprite_ext(sprite_index,0,x,y,point_distance(x,y,player_co_op.x,player_co_op.y),-1,point_direction(x,y,player_co_op.x,player_co_op.y),c_white,alpha2)
		}
	}
}
else
{
	if instance_number(player)
	{
		if player.x > x
		{
		draw_sprite_ext(sprite_index,0,x+1,y,point_distance(x,y,player.x,player.y),1,point_direction(x,y,player.x,player.y),c_white,alpha)
		}
		else
		{
		draw_sprite_ext(sprite_index,0,x,y,point_distance(x,y,player.x,player.y),-1,point_direction(x,y,player.x,player.y),c_white,alpha)
		}
	}
}

draw_sprite_ext(sprite_index,11,x,y,image_xscale,image_yscale,image_angle,c_white,auto_picking)
auto_picking += (0 - auto_picking)*0.1
//if player.y < y
//{
//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
//}

///////////////////////////////가우시안 그리기/////////////////////////////


}