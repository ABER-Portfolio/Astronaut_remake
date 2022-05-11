/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


var o_x = x
var o_y = y


//뷰안에 있는경우만 드로우
if (o_x > xx-global.chunk_size*100&& o_x < xxx+global.chunk_size*100 && o_y > yy-global.chunk_size*100 && o_y < yyy+global.chunk_size*100)
{
inview = true
}
else
{
inview = false
}

alarm[8] = 20