var gl_is_size = global.island_size
var r_abs_island_size = round(abs(-30-(gl_is_size*1.5)))
var m_seven_island_size = -30-(gl_is_size*1.5)
var m_seven_island_size2 = -30-gl_is_size


instance_activate_object(fl_water)
instance_activate_object(fl_parents)
instance_activate_object(obj_water_wave)
instance_activate_object(block_ore)

/////////////////광석생성///////////////////////

ore_xx = m_seven_island_size
ore_yy = m_seven_island_size
for(var i = 0; i < 99999; i++)
{
	instance_activate_object(all_blocks_parents)
	if (position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents)) && (!position_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents))
	{
		var random_create = irandom_range(0,100)
			
		if random_create >= 94
		{
		instance_activate_object(fl_water)
		instance_activate_object(fl_parents)
		instance_activate_object(obj_water_wave)
		instance_activate_object(block_ore)
		var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_ore)
		c_ore.received = 1
		ore_setting(c_ore)
		c_ore.block_num = -1
		created_ores ++
		
		}
	}
	
	
	if !(ore_yy >= r_abs_island_size)
	{
	ore_xx ++
		if (ore_xx > r_abs_island_size)
		{
		ore_xx = m_seven_island_size2
		ore_yy ++
		}
		
	}
}

alarm[5] = 3