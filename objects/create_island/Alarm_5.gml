/// @description Insert description here
// You can write your code in this editor
var gl_is_size = global.island_size
var r_abs_island_size = round(abs(-70-(gl_is_size*1.5)))
var m_seven_island_size = -70-(gl_is_size*1.5)
var m_seven_island_size2 = -70-gl_is_size


/////////////////구조물 생성///////////////////////
ore_xx = m_seven_island_size
ore_yy = m_seven_island_size
for(var i = 0; i < 9999; i++)
{
	if !(ore_yy >= r_abs_island_size)
	{
	ore_xx ++
		if (ore_xx > r_abs_island_size)
		{
		ore_xx = m_seven_island_size2
		ore_yy ++
		}
		
		
		instance_activate_object(all_blocks_parents)
		if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
		{
			var random_create = irandom_range(0,100)
			
			if random_create >= 99
			{
			instance_activate_object(fl_water)
			instance_activate_object(fl_parents)
			instance_activate_object(block_ore)
			instance_activate_object(block_splant)

			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_splant)
			c_ore.received = 1
			created_ores ++

			}
		}
	}
}










var gl_is_size = global.island_size
var r_abs_island_size = round(abs(-70-(gl_is_size*1.5)))
var m_seven_island_size = -70-(gl_is_size*1.5)
var m_seven_island_size2 = -70-gl_is_size


/////////////////구조물 생성///////////////////////
ore_xx = m_seven_island_size
ore_yy = m_seven_island_size
for(var i = 0; i < 9999; i++)
{
	if !(ore_yy >= r_abs_island_size)
	{
	ore_xx ++
		if (ore_xx > r_abs_island_size)
		{
		ore_xx = m_seven_island_size2
		ore_yy ++
		}
		
		
		if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
		{
			var random_create = irandom_range(0,120)
			
			if random_create = 100
			{
			instance_activate_object(fl_water)
			instance_activate_object(fl_parents)
			instance_activate_object(block_ore)
			instance_activate_object(block_splant)

			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_barrel)
			c_ore.received = 1
			created_ores ++

			}
		}
	}
}











var gl_is_size = global.island_size
var r_abs_island_size = round(abs(-70-(gl_is_size*1.5)))
var m_seven_island_size = -70-(gl_is_size*1.5)
var m_seven_island_size2 = -70-gl_is_size


/////////////////구조물 생성///////////////////////
ore_xx = m_seven_island_size
ore_yy = m_seven_island_size
for(var i = 0; i < 0; i++)
{
	if !(ore_yy >= r_abs_island_size)
	{
	ore_xx ++
		if (ore_xx > r_abs_island_size)
		{
		ore_xx = m_seven_island_size2
		ore_yy ++
		}
		
		
		if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
		{
			var random_create = irandom_range(0,105)
			
			if random_create >= 100
			{
			instance_activate_object(fl_water)
			instance_activate_object(fl_parents)
			instance_activate_object(block_ore)
			instance_activate_object(block_telephone_pole)

			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),choose(block_telephone_pole,block_barrel,block_barrel))
			c_ore.image_index = choose(0,1,2)
			c_ore.received = 1
			created_ores ++

			}
		}
	}
}





instance_destroy()