/// @description Insert description here
// You can write your code in this editor
depth = -(y+7.5)
move_snap(32,32);


if !position_meeting(x,y,grill_floor)
{
instance_destroy()
}

if co_op_code.is_server = true
{
	if image_index = 0 || image_index = 3 || image_index = 6 || image_index = 7 || image_index = 8
	{
		if position_meeting(x,y,watered_area)
		{
		grow ++
		}
	}


	if image_index = 1 || image_index = 4 || image_index = 9
	{
		if position_meeting(x,y,watered_crimson_area)
		{
		grow ++
		}
	}


	if image_index = 2 || image_index = 5 || image_index = 10
	{
		if position_meeting(x,y,watered_polluted_area)
		{
		grow ++
		}
	}



if instance_number(player) > 0
{
	if !place_meeting(x,y,player) && grow > 500
	{
	var random_var = percentage_k(1)
		if random_var = 1
		{
			if image_index <= 2
			{
			instance_destroy()
			var tree = instance_create(x,y,block_ore)
			tree.sprite_index = spr_tree
			tree.block_num = 0
			tree.item_num = 0
			tree.stone_color = 0
			tree.received = 0
				if image_index = 0
				{
				tree.image_index = irandom_range(3,5)
				}
				if image_index = 1
				{
				tree.image_index = irandom_range(6,8)
				}
				if image_index = 2
				{
				tree.image_index = irandom_range(9,11)
				}
			}
			else
			{
			instance_destroy()
			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_splant)
			c_ore.received = 0
				if image_index = 3
				{
				c_ore.image_index = choose(0,1)
				}
				if image_index = 4
				{
				c_ore.image_index = choose(2,3)
				}
				if image_index = 5
				{
				c_ore.image_index = choose(4,5)
				}
				if image_index = 6
				{
				c_ore.image_index = choose(6,7)
				}
				if image_index = 7
				{
				c_ore.image_index = 8
				}
				if image_index = 8
				{
				c_ore.image_index = choose(11,12)
				}
				if image_index = 9
				{
				c_ore.image_index = choose(13,14)
				}
				if image_index = 10
				{
				c_ore.image_index = choose(15,16)
				}
			}
		}
		else
		{
		grow = 0
		}
	}
}

}

