/// @description Insert description here
// You can write your code in this editor
var gl_is_size = global.island_size

random_value3 = round(irandom_range(-3,0))
random_value4 = round(irandom_range(0,3))
xx = random_value3

random_value1 = round(irandom_range(-3,0))
random_value2 = round(irandom_range(0,3))
yy = random_value1


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


alarm[4] = 30