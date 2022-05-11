/// @description Insert description here
// You can write your code in this editor


/////////////////////////////////////////////////////////////////////////////////////////////////////


depth = room_width*1.5-y-1
move_snap(32,32);

image_xscale += (0.5 - image_xscale)*0.2
image_yscale += (0.5 - image_yscale)*0.2

if instance_number(player) > 0
{
	if place_meeting(x,y,player)
	{
	//산소 채워지기
	alpha += (1 - alpha)*0.2
		if (dilay = 0)
		{
		alarm[1] = 60
		dilay = 1
		}
	}
	else
	{
	alpha += (-0.1 - alpha)*0.2
	}
}

if instance_number(player_co_op) > 0
{
	if place_meeting(x,y,player_co_op)
	{
	//산소 채워지기
	alpha2 += (1 - alpha2)*0.2
		if (dilay2 = 0)
		{
		alarm[2] = 60
		dilay2 = 1
		}
	}
	else
	{
	alpha2 += (-0.1 - alpha2)*0.2
	}
}




	if instance_number(player) > 0
	{
		if place_meeting(x,y,player)
		{
		image_index = 2
		}
		
		if instance_number(player_co_op) > 0 && instance_number(player) > 0
		{
			if !place_meeting(x,y,player_co_op) && !place_meeting(x,y,player)
			{
			//산소 채워지기
			image_index = 1
			}
		}
		else if instance_number(player) > 0
		{
			if !place_meeting(x,y,player) && global.co_op_mode = 0
			{
			//산소 채워지기
			image_index = 1
			}
		}
	}

	if instance_number(player_co_op) > 0
	{
		if place_meeting(x,y,player_co_op)
		{
		//산소 채워지기
		image_index = 2
		}
		
		if instance_number(player_co_op) > 0 && instance_number(player) > 0
		{
			if !place_meeting(x,y,player_co_op) && !place_meeting(x,y,player)
			{
			//산소 채워지기
			image_index = 1
			}
		}
	}




if instance_number(pl_inhand) && (place_meeting(x,y,pl_inhand) || place_meeting(x,y,pl_inhand_co_op))
{
var _target = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	_target = player_co_op
	}
	
	if instance_number(_target) > 0 && global.swing = 1 && point_distance(x,y,_target.x,_target.y) < 32
	{
		if global.inhand_item_type = spr_pickaxe && global.inhand_item = 15
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.received_item = 2
		cre_item.stucked_item_number = 1
		cre_item.vspeed = -1
		cre_item.floor_y = y+irandom_range(0,3);
		cre_item.hspeed = irandom_range(-10,10)/10
		cre_item.depth = -(cre_item.floor_y)
		cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
		cre_item.image_yscale = 0.18
		cre_item.a = irandom_range(9,15)
		cre_item.image_index = choose(1,11)
		
		var cre_item = instance_create(x,y,obj_item)
		cre_item.received_item = 0
		cre_item.stucked_item_number = 1
		cre_item.vspeed = -1
		cre_item.floor_y = y+irandom_range(0,3);
		cre_item.hspeed = irandom_range(-10,10)/10
		cre_item.depth = -(cre_item.floor_y)
		cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
		cre_item.image_yscale = 0.18
		cre_item.a = irandom_range(9,15)
		cre_item.image_index = 44
		
		
		instance_destroy()
		}
	}
}