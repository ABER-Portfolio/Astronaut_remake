/// @description Insert description here
// You can write your code in this editor
if global.change_map_to < 0
{
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


//뷰안에 있는경우만 드로우
	if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
	{
	inside_of_view = 1
	}
}

if txscale > 0.5
{
txscale = 0.5
}

if tyscale > 0.5
{
tyscale = 0.5
}

alarm[8] = 20