/// @description Insert description here
// You can write your code in this editor
//색상
if global.cannot_place = 0
{
image_blend = $FFF0AC4E & $ffffff
}
else
{
image_blend = $FF5B14EE & $ffffff
}

image_xscale = 0.5
image_yscale = 0.5



var gl_it = global.inhand_item

if position_meeting(x,y,fl_parents)
{
	if global.inhand_item_type = spr_placeable && global.inhand_item >= 45 && global.inhand_item <= 55
	{
	global.cannot_place = 1
	}
	
	if (place_meeting(x,y,all_blocks_parents) || place_meeting(x,y,bomb_block))
	{
		if !((gl_it >= 7 && gl_it <= 9) || (gl_it >= 24 && gl_it <= 28) || (gl_it >= 42 && gl_it <= 44))
		{
		global.cannot_place = 1
		}
		else
		{
			if position_meeting(x,y,grill_floor)
			{
			global.cannot_place = 0
			}
			else
			{
			global.cannot_place = 1
			}
		}
	}
	else if instance_number(player) && ((place_meeting(x,y,player) || place_meeting(x,y,player_co_op) || place_meeting(x,y,monster_parents) || place_meeting(x,y,all_blocks_parents))) 
	{
	global.cannot_place = 1
	}
	else
	{
	global.cannot_place = 0
	}
}
else
{
	if global.inhand_item_type = spr_placeable && global.inhand_item >= 45 && global.inhand_item <= 55
	{
	global.cannot_place = 0
	}
	else
	{
	global.cannot_place = 1
	}
}

if global.inv_open > 0 || global.n_room > 1
{
instance_destroy()
}


var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}


if instance_number(floor_pl17) > 0 && position_meeting(x,y,floor_pl17)
{
global.cannot_place = 1
}

if instance_number(target) > 0 && point_distance(target.x,target.y,mouse_x,mouse_y) > 64
{
global.cannot_place = 1
}

if global.playing_scene = 1
{
global.cannot_place = 1
}





move_snap(32,32)


x = mouse_x
y = mouse_y

move_snap(32,32)

