/// @description Insert description here
// You can write your code in this editor

if global.saving_data > 10 || obj_camera.setting_blind > 0.7 || instance_number(creating_maps) > 0 || (instance_number(build_system) > 0 && point_distance(x,y,build_system.x,build_system.y) <= 96)
{
	var _left_m = position_meeting(x-32,y,fl_parents)
	var _right_m = position_meeting(x+32,y,fl_parents)
	
	var _top_m = position_meeting(x,y-32,fl_parents)
	var _bottom_m = position_meeting(x,y+32,fl_parents)
	
	var _left_top_m = position_meeting(x-32,y-32,fl_parents)
	var _left_bottom_m = position_meeting(x-32,y+32,fl_parents)
	
	var _right_top_m = position_meeting(x+32,y-32,fl_parents)
	var _right_bottom_m = position_meeting(x+32,y+32,fl_parents)
	
	if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && _right_top_m && _right_bottom_m
	{
	floor_img_ind = 3
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && _left_bottom_m && _right_top_m && _right_bottom_m
	{
	floor_img_ind = 4
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && !_left_bottom_m && _right_top_m && _right_bottom_m
	{
	floor_img_ind = 4
	floor_img_ang = 90
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && _right_top_m && !_right_bottom_m
	{
	floor_img_ind = 4
	floor_img_ang = 180
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && !_right_top_m && _right_bottom_m
	{
	floor_img_ind = 4
	floor_img_ang = 270
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && _right_top_m && _right_bottom_m
	{
	floor_img_ind = 5
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && !_left_bottom_m && _right_top_m && !_right_bottom_m
	{
	floor_img_ind = 5
	floor_img_ang = 90
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	floor_img_ind = 5
	floor_img_ang = 180
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && _left_bottom_m && !_right_top_m && _right_bottom_m
	{
	floor_img_ind = 5
	floor_img_ang = 270
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && _right_top_m && !_right_bottom_m
	{
	floor_img_ind = 6
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_top_m && !_left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	floor_img_ind = 6
	floor_img_ang = 90
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && _left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	floor_img_ind = 6
	floor_img_ang = 180
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && !_right_top_m && _right_bottom_m
	{
	floor_img_ind = 6
	floor_img_ang = 270
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m && !_right_top_m && !_right_bottom_m
	{
	floor_img_ind = 7
	floor_img_ang = 0
	}
	else if !_left_m && !_right_m && !_top_m && !_bottom_m
	{
	floor_img_ind = 8
	floor_img_ang = 0
	}
	else if !_left_m && _right_m && !_top_m && !_bottom_m
	{
	floor_img_ind = 9
	floor_img_ang = 0
	}
	else if !_left_m && !_right_m && _top_m && !_bottom_m
	{
	floor_img_ind = 9
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && !_top_m && !_bottom_m
	{
	floor_img_ind = 9
	floor_img_ang = 180
	}
	else if !_left_m && !_right_m && !_top_m && _bottom_m
	{
	floor_img_ind = 9
	floor_img_ang = 270
	}
	else if !_left_m && _right_m && _top_m && !_bottom_m && _right_top_m
	{
	floor_img_ind = 10
	floor_img_ang = 0
	}
	else if _left_m && !_right_m && _top_m && !_bottom_m && _left_top_m
	{
	floor_img_ind = 10
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && !_top_m && _bottom_m && _left_bottom_m
	{
	floor_img_ind = 10
	floor_img_ang = 180
	}
	else if !_left_m && _right_m && !_top_m && _bottom_m && _right_bottom_m
	{
	floor_img_ind = 10
	floor_img_ang = 270
	}
	else if !_left_m && !_right_m && _top_m && _bottom_m
	{
	floor_img_ind = 11
	floor_img_ang = 0
	}
	else if _left_m && _right_m && !_top_m && !_bottom_m
	{
	floor_img_ind = 11
	floor_img_ang = 90
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && _right_top_m && _right_bottom_m
	{
	floor_img_ind = 12
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && _left_top_m && _right_top_m
	{
	floor_img_ind = 12
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && _left_top_m && _left_bottom_m
	{
	floor_img_ind = 12
	floor_img_ang = 180
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && _left_bottom_m && _right_bottom_m
	{
	floor_img_ind = 12
	floor_img_ang = 270
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && _right_bottom_m && !_right_top_m
	{
	floor_img_ind = 13
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && !_left_top_m && _right_top_m
	{
	floor_img_ind = 13
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && !_left_bottom_m && _left_top_m
	{
	floor_img_ind = 13
	floor_img_ang = 180
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && !_right_bottom_m && _left_bottom_m
	{
	floor_img_ind = 13
	floor_img_ang = 270
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && !_right_bottom_m && _right_top_m
	{
	floor_img_ind = 14
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && _left_top_m && !_right_top_m
	{
	floor_img_ind = 14
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && _left_bottom_m && !_left_top_m
	{
	floor_img_ind = 14
	floor_img_ang = 180
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && _right_bottom_m && !_left_bottom_m
	{
	floor_img_ind = 14
	floor_img_ang = 270
	}
	else if !_left_m && _right_m && _top_m && _bottom_m && !_right_top_m && !_right_bottom_m
	{
	floor_img_ind = 15
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && !_bottom_m && !_left_top_m && !_right_top_m
	{
	floor_img_ind = 15
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && _top_m && _bottom_m && !_left_top_m && !_left_bottom_m
	{
	floor_img_ind = 15
	floor_img_ang = 180
	}
	else if _left_m && _right_m && !_top_m && _bottom_m && !_left_bottom_m && !_right_bottom_m
	{
	floor_img_ind = 15
	floor_img_ang = 270
	}
	else if !_left_m && _right_m && _top_m && !_bottom_m && !_right_top_m
	{
	floor_img_ind = 16
	floor_img_ang = 0
	}
	else if _left_m && !_right_m && _top_m && !_bottom_m && !_left_top_m
	{
	floor_img_ind = 16
	floor_img_ang = 90
	}
	else if _left_m && !_right_m && !_top_m && _bottom_m && !_left_bottom_m
	{
	floor_img_ind = 16
	floor_img_ang = 180
	}
	else if !_left_m && _right_m && !_top_m && _bottom_m && !_right_bottom_m
	{
	floor_img_ind = 16
	floor_img_ang = 270
	}
	else if _left_m && _right_m && _top_m && _bottom_m && !_left_bottom_m && !_right_top_m && _left_top_m && _right_bottom_m
	{
	floor_img_ind = 17
	floor_img_ang = 0
	}
	else if _left_m && _right_m && _top_m && _bottom_m && _left_bottom_m && _right_top_m && !_left_top_m && !_right_bottom_m
	{
	floor_img_ind = 17
	floor_img_ang = 90
	}
	
	
	
	
	
	
	
	
	if !_left_m && !_right_m
	{
	floor_wall_img_ind = 0
	floor_wall_xscale = 1
	}
	else if _left_m && _right_m
	{
	floor_wall_img_ind = 1
	floor_wall_xscale = 1
	}
	else if _left_m && !_right_m
	{
	floor_wall_img_ind = 2
	floor_wall_xscale = 1
	}
	else if !_left_m && _right_m
	{
	floor_wall_img_ind = 2
	floor_wall_xscale = -1
	}
}