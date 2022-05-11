/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0
{
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w;
var yyy = global._came_vy_p_h;

	if (x > xx && x < xxx && y > yy && y < yyy)
	{
	global.minimap_hider_x[floor(x/32)] = 0
	global.minimap_hider_y[floor(y/32)] = 0
	instance_destroy()
	}
}