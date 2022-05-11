/// @description Insert description here
// You can write your code in this editor
if global.change_map_to = 1
{
global.saved_cave_biome = 0
global.n_room = 1
global.cave_floor = 0
global.auto_scroll_x = noone
global.auto_scroll_y = noone
instance_destroy(fl_cave)
instance_destroy(create_cave)
instance_destroy(create_lab)
instance_destroy(lab_hider)
global.smog = global.b_smog

	for(var i = 10; i < 15; i++)
	{
	instance_destroy(asset_get_index("floor_pl"+string(i)))
	}
	
	if instance_number(fl_water) = 0
	{
	instance_create(0,0,fl_water)
	}

if co_op_code.is_server = true
{
player.x = global.last_x
player.y = global.last_y
obj_camera.x = global.last_x
obj_camera.y = global.last_y
}
else
{
player_co_op.x = global.last_x
player_co_op.y = global.last_y
obj_camera.x = global.last_x
obj_camera.y = global.last_y
}

global.black_blind = 0
global.go_to_other_room = 0
global.do_not_move = 0
global.change_map_to = noone
room_width = last_room_width
room_height = last_room_height
instance_activate_object(obj_droped_item_parents)
instance_destroy(obj_droped_item_parents)
instance_activate_object(obj_droped_item_parents)
}


if global.change_map_to >= 2 && global.change_map_to < 2.1
{
alarm[8] = 90
global.change_map_to += 0.02
}

if global.change_map_to >= 3 && global.change_map_to < 3.1
{
alarm[8] = 90
global.change_map_to += 0.02
}

if global.change_map_to >= 2.1 && global.change_map_to < 3
{
global.saving_data = -1
alarm[4] = 10
global.change_map_to = noone
}

if global.change_map_to >= 3.1 && global.change_map_to < 4
{
global.saving_data = -1
alarm[2] = 10
global.change_map_to = noone
}