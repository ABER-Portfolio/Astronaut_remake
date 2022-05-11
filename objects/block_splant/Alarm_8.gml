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



if image_index >= 9
{
	if noclip_block != noone
	{
		if instance_exists(noclip_block)
		{
		noclip_block.image_xscale = xscale/1.9
		noclip_block.image_yscale = yscale*0.125
		noclip_block.x = x
		noclip_block.y = y+4+(0.5-yscale)*21
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}

alarm[8] = 20