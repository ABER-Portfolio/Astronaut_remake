/// @description 광석 종류

var random_be_the_tree = percentage_k(10)
if random_be_the_tree = 1
{
sprite_index = spr_tree
}
else
{
sprite_index = item_sp
}


if sprite_index = item_sp
{
	

var in = item_num
var bn = block_num

var pl_meet_pl = place_meeting(x,y,floor_pl0)
var pl_meet_pl1 = place_meeting(x,y,floor_pl1)
var pl_meet_pl2 = place_meeting(x,y,floor_pl2)
var pl_meet_pl3 = place_meeting(x,y,floor_pl3)
var pl_meet_pl4 = place_meeting(x,y,floor_pl4)
var pl_meet_pl5 = place_meeting(x,y,floor_pl5)
var pl_meet_pl6 = place_meeting(x,y,floor_pl6)
var pl_meet_pl7 = place_meeting(x,y,floor_pl7)
var pl_meet_pl8 = place_meeting(x,y,floor_pl8)


block_num = -1


if bn <= -1
{
			if pl_meet_pl
			{
			stone_color = 5
				if in = 6
				{
				item_num = 6
				}
			}

			if pl_meet_pl1
			{
			stone_color = 6
				if in = 6
				{
				item_num = 10
				}
			}

			if pl_meet_pl2
			{
			stone_color = 7
				if in = 6
				{
				item_num = 9
				}
			}
			
			if pl_meet_pl3
			{
			stone_color = 8
			item_num = 11
			}
			
			if pl_meet_pl4
			{
			stone_color = 9
			item_num = choose(0,0,1,2,2,7,8,8,17,17,17,17)
			}
			
			if pl_meet_pl5
			{
			stone_color = 12
			item_num = 11
			}
			
			if pl_meet_pl6
			{
			stone_color = 10
			item_num = choose(0,0,0,0,1,1,7,8,7,8,7,8,7,8,7,8,7,7)
			}
			
			if pl_meet_pl7
			{
			stone_color = 13
			item_num = 11
			}
			
			if pl_meet_pl8
			{
			stone_color = 11
			item_num = choose(0,0,0,0,1,1,7,8,7,8,7,8,7,8,7,8,7,7)
			}
}


alarm[1] = 4
}
else if sprite_index = spr_tree
{
	var pl_meet_pl = place_meeting(x,y,floor_pl0)
	var pl_meet_pl1 = place_meeting(x,y,floor_pl1)
	var pl_meet_pl2 = place_meeting(x,y,floor_pl2)
	
	if pl_meet_pl
	{
	image_index = 3+irandom_range(0,2)
	}
	else if pl_meet_pl1
	{
	image_index = 3+irandom_range(3,5)
	}
	else if pl_meet_pl2
	{
	image_index = 3+irandom_range(6,8)
	}
	else
	{
	sprite_index = item_sp
	alarm[2] = 1
	}
}