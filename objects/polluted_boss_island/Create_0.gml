/// @description Insert description here
// You can write your code in this editor
var gl_is_size = 20

///총 해당섬에서 생성된 광물 갯수
created_ores = 0

move_snap(32, 32)
////////////////////광석 생성///////////////////////////
ore_xx = -100-gl_is_size
ore_yy = -100-gl_is_size





/////////////////////지형생성/////////////////////////


random_value3 = -10
random_value4 = 10
xx = random_value3

random_value1 = -10
random_value2 = 10
yy = random_value1


for(var i = -6; i <= 6; i++)
{
	if !position_meeting(x+(i*32),y,fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y,floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x,y+(i*32),fl_parents)
	{
	var fl_block = instance_create(x,y+(i*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}
//////////////////////////////////////
for(var i = -6; i <= 6; i++)
{
	if !position_meeting(x+(i*32),y+(1*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(1*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x+(i*32),y+(-1*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(-1*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}

for(var i = -5; i <= 5; i++)
{
	if !position_meeting(x+(i*32),y+(2*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(2*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x+(i*32),y+(-2*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(-2*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}

for(var i = -4; i <= 4; i++)
{
	if !position_meeting(x+(i*32),y+(3*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(3*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x+(i*32),y+(-3*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(-3*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}

for(var i = -3; i <= 3; i++)
{
	if !position_meeting(x+(i*32),y+(4*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(4*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x+(i*32),y+(-4*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(-4*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}

for(var i = -2; i <= 2; i++)
{
	if !position_meeting(x+(i*32),y+(5*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(5*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x+(i*32),y+(-5*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(-5*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}

for(var i = -1; i <= 1; i++)
{
	if !position_meeting(x+(i*32),y+(6*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(6*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x+(i*32),y+(-6*32),fl_parents)
	{
	var fl_block = instance_create(x+(i*32),y+(-6*32),floor_pl2)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}




for(var i = 0; i < 3; i++)
{
var random_x = irandom_range(-5,5)
var random_y = irandom_range(-5,5)

	if place_meeting(x+(random_x*32),y+(random_y*32),floor_pl1) && !place_meeting(x+(random_x*32),y+(random_y*32),all_blocks_parents)
	{
	instance_create(x+(random_x*32),y+(random_y*32),block_portal)
	}
}



/////////////////구조물 생성///////////////////////
var gl_is_size = 20

var r_abs_island_size = round(abs(-70-(gl_is_size*1.5)))
var m_seven_island_size = -70-(gl_is_size*1.5)
var m_seven_island_size2 = -70-(gl_is_size)

ore_xx = m_seven_island_size
ore_yy = m_seven_island_size


for(var i = 0; i < 99999; i++)
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
		if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),block_ore)
		{
			var random_create = irandom_range(0,100)
			
			if random_create >= 100
			{
			instance_activate_object(fl_water)
			instance_activate_object(fl_parents)
			instance_activate_object(block_ore)

			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_ore)
			c_ore.received = 1
			var random_var = percentage_k(40)
			if random_var = 1
			{
			c_ore.block_num = choose(0,1)
			}
			else
			{
			c_ore.block_num = -1
			}
			ore_setting(c_ore)
			created_ores ++
			instance_activate_object(fl_water)
			instance_activate_object(fl_parents)
			instance_activate_object(block_ore)
			}
		}
	}
}






alarm[1] = 11
