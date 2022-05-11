/// @description Insert description here
// You can write your code in this editor
var gl_is_size = global.island_size

random_value3 = round(irandom_range(-(13+gl_is_size),0))
random_value4 = round(irandom_range(0,(13+gl_is_size)))
xx = random_value3

random_value1 = round(irandom_range(-(13+gl_is_size),0))
random_value2 = round(irandom_range(0,13+(gl_is_size)))
yy = random_value1


var r_abs_island_size = round(abs(-70-(gl_is_size*1.5)))
var m_seven_island_size = -70-(gl_is_size*1.5)


for(var i = 0; i < 99999; i++)
{
	if xx < random_value4
	{
	yy ++
		var fl_block = instance_create(x+((xx+gl_is_size)*32),y+((yy+gl_is_size)*32),asset_get_index("floor_pl"+string(own_biome)))
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
		
		
		if yy > random_value2
		{
		var pre_random_value1
		pre_random_value1 = random_value1
		
		var pre_random_value2
		pre_random_value2 = random_value2
		random_value1 = round(irandom_range(pre_random_value1+irandom_range(-5,5),0))
		random_value2 = round(irandom_range(pre_random_value2+irandom_range(-5,5),0))
		yy = random_value1
		xx ++
		}
	}
}




with(all)
{
	if x > room_width || x < 0
	{
		if y > room_height || y < 0
		{
		instance_destroy()
		}
	}
}


/////////////////광석생성///////////////////////
ore_xx = m_seven_island_size
ore_yy = m_seven_island_size


for(var i = 0; i < 99999; i++)
{
	if !(ore_yy >= r_abs_island_size)
	{
	ore_xx ++
		if (ore_xx > r_abs_island_size)
		{
		ore_xx = m_seven_island_size
		ore_yy ++
		}
		
		instance_activate_object(all_blocks_parents)
		if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
		{
			var random_create = irandom_range(0,100)
			
			if random_create >= 94
			{
			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_ore)
			ore_setting(c_ore)
			c_ore.block_num = -1
			c_ore.received = 1
			created_ores ++
			}
		}
	}
}


if created_ores <= 6
{
	ore_xx = m_seven_island_size
	ore_yy = m_seven_island_size
	for(var i = 0; i < 99999; i++)
	{
		if !(ore_yy >= r_abs_island_size)
		{
		ore_xx ++
			if (ore_xx > r_abs_island_size)
			{
			ore_xx = m_seven_island_size
			ore_yy ++
			}
		
		
			instance_activate_object(all_blocks_parents)
			if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
			{
				var random_create = irandom_range(0,100)
			
				if random_create >= 94
				{
				var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_ore)
				ore_setting(c_ore)
				c_ore.block_num = -1
				c_ore.received = 1
				created_ores ++
				}
			}
		}
	}
}

alarm[7] = 3