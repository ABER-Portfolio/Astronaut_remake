/// @description Insert description here
// You can write your code in this editor
/////////////////크리스탈 생성///////////////////////
var gl_is_size = 15

var r_abs_island_size = round(abs(-15-(gl_is_size*1.5)))
var m_seven_island_size = -15-(gl_is_size*1.5)
var m_seven_island_size2 = -15-(gl_is_size)


for(var i = 0; i < 3; i++)
{
var random_x = irandom_range(-5,5)
var random_y = irandom_range(-5,5)

	if place_meeting(x+(random_x*32),y+(random_y*32),floor_pl1) && !place_meeting(x+(random_x*32),y+(random_y*32),all_blocks_parents)
	{
	instance_create(x+(random_x*32),y+(random_y*32),block_portal)
	}
}


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
		
		instance_activate_object(floor_pl2)
		if place_meeting(x+(ore_xx*32),y+(ore_yy*32),floor_pl1) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
		{
			var random_create = irandom_range(0,100)
			
			instance_activate_object(block_portal)
			if random_create >= 100 && instance_number(block_portal) <= 12
			{
			instance_activate_object(fl_parents)
			instance_activate_object(all_blocks_parents)
			instance_create(x+(ore_xx*32),y+(ore_yy*32),block_portal)
			}
		}
	}
}


instance_activate_object(block_portal)
if instance_number(block_portal) > 3
{
instance_destroy()
}
else
{
alarm[1] = 1
}