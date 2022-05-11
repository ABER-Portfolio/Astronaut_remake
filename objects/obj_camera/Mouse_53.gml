/// @description Insert description here
// You can write your code in this editor
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
var camera_xscale = obj_camera.v_x/1280

if global.draw_minimap = 0
{
	if point_distance(xxx - 75*camera_xscale,yy + 93*camera_xscale,mouse_x,mouse_y) < 90*camera_xscale
	{	
	global.draw_minimap = 1
	large_minimap_opened = 1
	}
}