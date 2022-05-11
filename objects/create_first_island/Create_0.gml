/// @description Insert description here
// You can write your code in this editor
var gl_is_size = global.island_size
instance_create(room_width/2,room_height/2,do_not_change_biome_here)




move_snap(32, 32)
////////////////////광석 생성///////////////////////////
ore_xx = -100-gl_is_size
ore_yy = -100-gl_is_size





/////////////////////지형생성/////////////////////////
own_biome = 0


random_value3 = round(irandom_range(-40,0))
random_value4 = round(irandom_range(0,40))
xx = random_value3

random_value1 = round(irandom_range(-40,0))
random_value2 = round(irandom_range(0,40))
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


///총 해당섬에서 생성된 광물 갯수
created_ores = 0

alarm[1] = 1
