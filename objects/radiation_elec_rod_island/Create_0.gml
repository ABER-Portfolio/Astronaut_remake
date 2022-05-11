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

var fl_n = instance_create(x+224,y+32,do_not_cre_floor_here)



for(var i = -5; i <= 5; i++)
{
	for(var ii = -3; ii <= 7; ii++)
	{
	instance_activate_object(fl_parents)
		if !position_meeting(x+(i*32),y+(ii*32),floor_pl17) && !position_meeting(x+(i*32),y+(ii*32),do_not_cre_floor_here)
		{
		var fl_block = instance_create(x+(i*32),y+(ii*32),floor_pl17)
			if instance_exists(fl_block)
			{
			fl_block.received = 1
			fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
			}
		}
	}
}

instance_destroy(fl_n)

//var fl_n = instance_create(x+192,y,block_oil_rig)


var door_ = instance_create(x-64,y-64,block_container_vertical)
door_.image_index = irandom_range(0,2)


var door_ = instance_create(x-128,y+96,block_container_vertical)
door_.image_index = irandom_range(0,2)

var door_ = instance_create(x+64,y+96,block_container)
door_.image_index = irandom_range(0,2)

var door_ = instance_create(x+64,y+160,block_container)
door_.image_index = irandom_range(0,2)


var door_ = instance_create(x+128,y-64,block_recycler)
door_.received = 0

var door_ = instance_create(x-128,y-96,block_refinery)
door_.received = 0



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

			instance_create(x+(ore_xx*32),y+(ore_yy*32),block_barrel)
			}
		}
	}
}



instance_destroy()