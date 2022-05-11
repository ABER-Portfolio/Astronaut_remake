/// @description Insert description here
// You can write your code in this editor

t_x = x-640
t_y = y-320

chat_buffer = buffer_create(2, buffer_grow, 1);

image_yscale = 0.4

light = instance_create(x,y,objLight_for_obj)
light.alpha = 0.7
light.lightcol = c_white
light.lightxs = image_xscale*64
light.lightys = image_yscale*64


p_1_place_met = 0
p_2_place_met = 0

image_alpha = 0
instance_activate_all()

///총 해당섬에서 생성된 광물 갯수
created_ores = 0

//플레이어와 부딛힘(쿨타임)
dilay = 0

next_page = 0

go_back = 0

x_line = -448
y_line = -448

chest_cave = percentage_k(10)

if global.saved_cave_biome = 0
{
cave_biome = 0

	if global.biome_real = "normal"
	{
	cave_biome = 10;
	}
	else if global.biome_real = "bloody" || global.biome_real = "bloody_ice" || global.biome_real = "bloody_desert"
	{
	cave_biome = 11;
	}
	else if global.biome_real = "polluted" || global.biome_real = "polluted_ice" || global.biome_real = "polluted_desert"
	{
	cave_biome = 12;
	}
	else if global.biome_real = "ice"
	{
	cave_biome = 13;
	}
	else if global.biome_real = "desert"
	{
	cave_biome = 14;
	}
	else
	{
	cave_biome = 10;
	}
	
global.saved_cave_biome = cave_biome;
}
else
{
cave_biome = global.saved_cave_biome
}

var __mush_room_biome = percentage_k(4)

if __mush_room_biome = 1
{
cave_biome = 16;
	if global.npc_event[1] = 2.5
	{
	global.found_fungi_biome = 1
	var _text_bar = instance_create(x,y,draw_debug_text)
		if global.language = 0
		{
		_text_bar.text = "Found fungi area"
		}
		if global.language = 1
		{
		_text_bar.text = "균사 지형을 발견했습니다"
		}
	}
};

global.b_smog = global.smog
global.smog = percentage_k(40)



if chest_cave = 1
{
	for(var i = 0; i < 25; i++)
	{
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+256+i*32,t_y+384-32,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+256+i*32,t_y+384,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+256-32,t_y+384,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+256+800,t_y+384,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+256+i*32,t_y+384+32,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	}

	for(var i = 1; i < 8; i++)
	{
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+608,t_y+256+32*i,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+640,t_y+256+32*i,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+672,t_y+256+32*i,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	
		instance_activate_object(fl_parents)
		var fl_block = instance_create(t_x+704,t_y+256+32*i,asset_get_index("floor_pl"+string(cave_biome)));
		if instance_exists(fl_block)
		{
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		fl_block.received = 1
		}
	
	}


	instance_activate_object(fl_parents)
	var fl_block = instance_create(t_x+576,t_y+288+32,asset_get_index("floor_pl"+string(cave_biome)));
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}


	instance_activate_object(fl_parents)
	var fl_block = instance_create(t_x+736,t_y+288+32,asset_get_index("floor_pl"+string(cave_biome)));
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}


	instance_activate_object(fl_parents)
	var fl_block = instance_create(t_x+576,t_y+480-32,asset_get_index("floor_pl"+string(cave_biome)));
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}


	instance_activate_object(fl_parents)
	var fl_block = instance_create(t_x+736,t_y+480-32,asset_get_index("floor_pl"+string(cave_biome)));
	if instance_exists(fl_block)
	{
	fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
	fl_block.received = 1
	}



	instance_activate_object(block_ore)
	ore_ = instance_create(t_x+256+15*32,t_y+384+32,block_ore);
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	
	
	ore_ = instance_create(t_x+256+14*32,t_y+384-32+32,block_ore);
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	
	
	instance_activate_object(block_ore)
	ore_ = instance_create(t_x+256+11*32,t_y+384-32,block_ore);
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	
	
	instance_activate_object(block_ore)
	ore_ = instance_create(t_x+256+20*32,t_y+384-32,block_ore);
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	
	
	instance_activate_object(block_ore)
	ore_ = instance_create(t_x+256+3*32,t_y+384+32,block_ore);
	instance_activate_object(block_ore)
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	
	
	ore_ = instance_create(t_x+256+1*32,t_y+384+32,block_ore);
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	
	
	ore_ = instance_create(t_x+256+2*32,t_y+384-32+32,block_ore);
	cave_set_ore_color(ore_)
	cave_set_ore_kind()
	




	instance_activate_object(chest)
	var random_chest_create = percentage_k(50)

	if random_chest_create = 1
	{
	instance_activate_object(chest)
	var cre_bl = instance_create(t_x+256+25*32-50,t_y+384,choose(skeleton,skeleton_flame))
	cre_bl.received = 0
	
	random_creates(t_x+256+25*32,t_y+384);
	};


	var random_chest_create = percentage_k(50)

	if random_chest_create = 1
	{
	instance_activate_object(chest)
	var cre_bl = instance_create(t_x+256+32+50,t_y+384,choose(skeleton,skeleton_flame))
	cre_bl.received = 0


	random_creates(t_x+256+32,t_y+384)
	}
	instance_activate_all()
	global.go_to_other_room = 0
}
else
{
	randomize()
	var _cre_bl_here = instance_create(x,y,create_cave_blocks_here)
	
	if global.cave_floor < 10
	{
	var _scale_cave_fl = global.cave_floor*16
	}
	else
	{
	var _scale_cave_fl = 160
	}
	
	
	randomize()
	_cre_bl_here.image_xscale = (1/288)*irandom_range(288+_scale_cave_fl,400+_scale_cave_fl)
	randomize()
	_cre_bl_here.image_yscale = (1/288)*irandom_range(288+_scale_cave_fl,400+_scale_cave_fl)
	
	for(var i = 0; i < choose(1,2,2,2,2,3,3,3,4,4); i++)
	{
	randomize()
	var _cre_bl_here = instance_create(x+irandom_range(-320,320),y+irandom_range(-320,320),create_cave_blocks_here)
	
	randomize()
	_cre_bl_here.image_xscale = (1/288)*irandom_range(128+_scale_cave_fl,320+_scale_cave_fl)
	randomize()
	_cre_bl_here.image_yscale = (1/288)*irandom_range(128+_scale_cave_fl,320+_scale_cave_fl)
	}
	
	for(var i = 0; i < 5000; i++)
	{
		if position_meeting(x+x_line,y+y_line,create_cave_blocks_here) && !position_meeting(x+x_line,y+y_line,fl_parents)
		{
		instance_activate_object(fl_parents)
		instance_create(x+x_line,y+y_line,asset_get_index("floor_pl"+string(cave_biome)));
		
		var random_cre_ore = percentage_k(8)
			if random_cre_ore = 1
			{
			ore_ = instance_create(x+x_line,y+y_line,block_ore);
			cave_set_ore_color(ore_)
			cave_set_ore_kind()
			}

			
			
			
		if cave_biome = 16
		{
		var random_cre_ore = percentage_k(5)
		}
		else
		{
		var random_cre_ore = percentage_k(10-global.cave_floor)
		}
		
		instance_activate_object(all_blocks_parents)
			if random_cre_ore = 1 && !position_meeting(x+x_line,y+y_line,all_blocks_parents)
			{
			var splant_ = instance_create(x+x_line,y+y_line,block_splant);
			splant_.received = 1
				if cave_biome = 10
				{
				splant_.image_index = choose(0,1)
				}
				if cave_biome = 11
				{
				splant_.image_index = choose(2,3)
				}
				if cave_biome = 12
				{
				splant_.image_index = choose(4,5)
				}
				if cave_biome = 13
				{
				splant_.image_index = 6
				}
				if cave_biome = 14
				{
				instance_destroy(splant_)
				}
				if cave_biome = 16
				{
				splant_.image_index = choose(7,8)
				}
			}
		}
		
	x_line += 32
		if x_line > 448
		{
		x_line = -448
		y_line += 32
		}
		
		
	}
	
	
	
	instance_activate_all()
	instance_destroy(create_cave_blocks_here)
	instance_activate_all()
	instance_destroy(create_cave_blocks_here)
	instance_activate_all()
	global.go_to_other_room = 0
	
	floor_pl_parents.alarm[9] = 2
	floor_pl_parents.alarm[10] = 2
}

