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

global.flower_boss_x = x
global.flower_boss_y = y





for(var i = -5; i <= 5; i++)
{
	for(var ii = -5; ii <= 5; ii++)
	{
	instance_activate_object(fl_parents)
		if !position_meeting(x+(i*32),y+(ii*32),fl_parents) && !position_meeting(x+(i*32),y+(ii*32),do_not_cre_floor_here)
		{
		var fl_block = instance_create(x+(i*32),y+(ii*32),floor_pl2) //2
			if instance_exists(fl_block)
			{
			fl_block.received = 1
			fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
			}
		}
	}
}


instance_destroy()

