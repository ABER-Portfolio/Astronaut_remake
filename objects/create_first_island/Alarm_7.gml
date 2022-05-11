
/////////////////구조물 생성///////////////////////
var gl_is_size = global.island_size

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
		if position_meeting(x+(ore_xx*32),y+(ore_yy*32),fl_parents) && !place_meeting(x+(ore_xx*32),y+(ore_yy*32),all_blocks_parents)
		{
			var random_create = irandom_range(0,100)
			
			if random_create >= 100
			{
			instance_activate_object(fl_water)
			instance_activate_object(fl_parents)
			instance_activate_object(block_ore)
			instance_activate_object(block_splant)

			var c_ore = instance_create(x+(ore_xx*32),y+(ore_yy*32),block_splant)
			c_ore.image_index = irandom_range(0,8)
			c_ore.received = 1

			
			
			created_ores ++

			}
		}
	}
}





for(var i = -7; i <= 7; i++)
{
instance_activate_object(fl_parents)
var fl_block = instance_create(x+(i*32),y-64,asset_get_index("floor_pl"+string(own_biome)))
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}
var fl_block = instance_create(x+(i*32),y-32,asset_get_index("floor_pl"+string(own_biome)))
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}
var fl_block = instance_create(x+(i*32),y,asset_get_index("floor_pl"+string(own_biome)))
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}
var fl_block = instance_create(x+(i*32),y+32,asset_get_index("floor_pl"+string(own_biome)))
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}
var fl_block = instance_create(x+(i*32),y+64,asset_get_index("floor_pl"+string(own_biome)))
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}
}


var _stone_num = 0
repeat(999)
{
var random_x = irandom_range(room_width-128,room_width-256)
var random_y = irandom_range(room_height-160,room_height+160)

	instance_activate_object(all_blocks_parents)
	if position_meeting(x+random_x,y+random_y,fl_parents) && !place_meeting(x+random_x,y+random_y,all_blocks_parents)
	{
	var c_ore = instance_create(x+random_x,y+random_y,block_ore)
	c_ore.image_index = choose(38,38,38,31,39,39,32,48)
	c_ore.stone_color = 5
	c_ore.item_num = 7
	c_ore.block_num = -1
	c_ore.received = 1
	_stone_num ++
	}
	
	if _stone_num > 3
	{
	_stone_num = 0
	break;
	}
}


instance_destroy()