/// @description Insert description here
// You can write your code in this editor

x = room_width-2624+1600+32
y = 150+1077

chat_buffer = buffer_create(2, buffer_grow, 1);

image_yscale = 0.4

light = instance_create(x,y,objLight_for_obj)
light.alpha = 0.7
light.lightcol = c_white
light.lightxs = image_xscale*64
light.lightys = image_yscale*64


exit_time = 0
lab_generator = 0
gene_block_num = 0

var _lab_map_ = instance_create(room_width-2624-16,64+16,create_lab_blocks_here)
_lab_map_.image_xscale = 4
_lab_map_.image_yscale = 4

var _lab_map_ = instance_create(room_width-2624-16,64+16,create_lab_ore_blocks_here)
_lab_map_.image_xscale = 4
_lab_map_.image_yscale = 4

var _lab_map_ = instance_create(room_width-2624-16,64+16,create_lab_generator_blocks_here)
_lab_map_.image_xscale = 4
_lab_map_.image_yscale = 4

var _lab_map_ = instance_create(room_width-2624-16,64+16,create_lab_barrelblocks_here)
_lab_map_.image_xscale = 4
_lab_map_.image_yscale = 4



var _lab_door_ = instance_create(6876-5760+global.room_size,1402,lab_door)
_lab_door_.door_keycard = 2
_lab_door_.image_index = 4
_lab_door_.image_angle = 90

var _lab_door_ = instance_create(6717-5760+global.room_size,1243-64,lab_door)
_lab_door_.door_keycard = 2
_lab_door_.image_index = 1
_lab_door_.image_angle = 0


var _lab_door_ = instance_create(6752-5760+global.room_size,731,lab_door)
_lab_door_.door_keycard = 3
_lab_door_.image_index = 4
_lab_door_.image_angle = 270


var _lab_door_ = instance_create(6847-5760+global.room_size,697-96,lab_door)
_lab_door_.door_keycard = noone
_lab_door_.image_index = 3
_lab_door_.image_angle = 0




var _lab_door_ = instance_create(7744-5760+global.room_size,858+64,lab_door)
_lab_door_.door_keycard = 1
_lab_door_.image_index = 0
_lab_door_.image_angle = 0

var _lab_door_ = instance_create(7808-5760+global.room_size,570-64,lab_door)
_lab_door_.door_keycard = 1
_lab_door_.image_index = 0
_lab_door_.image_angle = 0






for(var i = 1; i < 32; i++)
{
var _hider_ = instance_create(room_width-2624-16,64+16,lab_hider)
_hider_.image_index = i
_hider_.image_xscale = 4
_hider_.image_yscale = 4
}






light_turnoff_time = 0
light_turnon_time = 0
p_1_place_met = 0
p_2_place_met = 0
random_val = 0
saved_light_alpha = 0

image_alpha = 0
instance_activate_all()

///총 해당섬에서 생성된 광물 갯수
created_ores = 0

//플레이어와 부딛힘(쿨타임)
dilay = 0

next_page = 0

go_back = 0

x_line = -2560
y_line = -2560

special_ore = percentage_k(4)


light_ = array_create(25,0)



///////////////////////////////무기방//////////////////////////////////////////////
var _chest = instance_create(8353-6400+global.room_size,1336,chest)
_chest.received = 0
_chest.locked = 1
_chest.image_index = 19 //17
for(var i = 0; i < 14; i++)
{
_chest.chest_item[i] = noone;
_chest.chest_item_num[i] = -1;
};


var _random_val2 = choose(65,65,65,65,65,66,66,67,67,68,69,69,72,72,72,72,72)
_chest.chest_item[0] = asset_get_index("item1000"+string(_random_val2));
_chest.chest_item_num[0] = 1;

if _random_val2 = 65 || _random_val2 = 66 || _random_val2 = 67
{
_chest.chest_item[0] = item42
_chest.chest_item_num[0] = irandom_range(20,30);
}

if _random_val2 = 68 || _random_val2 = 69
{
_chest.chest_item[0] = item41
_chest.chest_item_num[0] = irandom_range(20,40);
}

if _random_val2 = 72
{
_chest.chest_item[0] = item43
_chest.chest_item_num[0] = irandom_range(12,24);
}


///////////////////////////////그린방//////////////////////////////////////////////
for(var a = 0; a < 2; a++)
{
var _chest = instance_create(8356-6400+global.room_size+32*a,629,chest)
_chest.received = 0
_chest.locked = 1
_chest.image_index = 19 //17
for(var i = 0; i < 14; i++)
{
_chest.chest_item[i] = noone;
_chest.chest_item_num[i] = -1;
};


var _random_val2 = choose(65,65,65,65,65,66,66,67,67,68,69,69,72,72,72,72,72)
_chest.chest_item[0] = asset_get_index("item1000"+string(_random_val2));
_chest.chest_item_num[0] = 1;

if _random_val2 = 65 || _random_val2 = 66 || _random_val2 = 67
{
_chest.chest_item[0] = item42
_chest.chest_item_num[0] = irandom_range(20,30);
}

if _random_val2 = 68 || _random_val2 = 69
{
_chest.chest_item[0] = item41
_chest.chest_item_num[0] = irandom_range(20,40);
}

if _random_val2 = 72
{
_chest.chest_item[0] = item43
_chest.chest_item_num[0] = irandom_range(12,24);
}
}


///////////////////////////////레드방//////////////////////////////////////////////
for(var a = 0; a < 2; a++)
{
	if a = 2
	{
	var _chest = instance_create(7008-6400+global.room_size+96,375,chest)
	_chest.received = 0
	_chest.locked = 1
	_chest.image_index = 19 //17
	for(var i = 0; i < 14; i++)
	{
	_chest.chest_item[i] = noone;
	_chest.chest_item_num[i] = -1;
	};


	var _random_val2 = choose(65,65,65,65,65,66,66,67,67,68,69,69,72,72,72,72,72)
	_chest.chest_item[0] = asset_get_index("item1000"+string(_random_val2));
	_chest.chest_item_num[0] = 1;

	if _random_val2 = 65 || _random_val2 = 66 || _random_val2 = 67
	{
	_chest.chest_item[0] = item42
	_chest.chest_item_num[0] = irandom_range(20,30);
	}

	if _random_val2 = 68 || _random_val2 = 69
	{
	_chest.chest_item[0] = item41
	_chest.chest_item_num[0] = irandom_range(20,40);
	}

	if _random_val2 = 72
	{
	_chest.chest_item[0] = item43
	_chest.chest_item_num[0] = irandom_range(12,24);
	}
	}
	else
	{
	var slot_ = 0
	var _chest = instance_create(7008-6400+global.room_size+32*a,375,chest)
	_chest.received = 0
	_chest.locked = 1
	_chest.image_index = 19 //17
	for(var i = 0; i < 14; i++)
	{
	_chest.chest_item[i] = noone;
	_chest.chest_item_num[i] = -1;
	};

	var random_slot_fill = choose(0,1,1,1,1,2,2,2,3,3,4)
	
		for(var b = 0; b < random_slot_fill; b++)
		{
		var _random_val2 = choose(33,34,35,36,55,56,400030,400031)
		_chest.chest_item[slot_] = asset_get_index("item"+string(_random_val2));
		_chest.chest_item_num[slot_] = 1;
		slot_++
		}
	}
}






///////////////////////////////블랙방//////////////////////////////////////////////
for(var a = 0; a < 1; a++)
{
	var slot_ = 0
	var _chest = instance_create(7425-6400+global.room_size+32*a,150,chest)
	_chest.received = 0
	_chest.locked = 1
	_chest.image_index = 19 //17
	for(var i = 0; i < 14; i++)
	{
	_chest.chest_item[i] = noone;
	_chest.chest_item_num[i] = -1;
	};

	var random_slot_fill = choose(0,1,1,1,1,2,2,2,3,3,4)
	
		for(var b = 0; b < random_slot_fill; b++)
		{
		var _random_val2 = choose(44,45,52,57,55,56,100076)
		_chest.chest_item[slot_] = asset_get_index("item"+string(_random_val2));
		if _random_val2 = 100076
		{
		_chest.chest_item_num[slot_] = 1;
		}
		else
		{
		_chest.chest_item_num[slot_] = irandom_range(2,8);
		}
		slot_++
		}
}



















var ii = 0

light_[ii] = instance_create(7969-5760+global.room_size,1144,objLight_for_obj)
light_[ii].lightxs = 96
light_[ii].lightys = 96
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7840-5760+global.room_size,1129,objLight_for_obj)
light_[ii].lightxs = 48
light_[ii].lightys = 48
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7728-5760+global.room_size,1147,objLight_for_obj)
light_[ii].lightxs = 64
light_[ii].lightys = 64
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7613-5760+global.room_size,1147,objLight_for_obj)
light_[ii].lightxs = 64
light_[ii].lightys = 64
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7491-5760+global.room_size,1147,objLight_for_obj)
light_[ii].lightxs = 64
light_[ii].lightys = 64
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7760-5760+global.room_size,1263,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7758-5760+global.room_size,1355,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7728-5760+global.room_size,1020,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7728-5760+global.room_size,918,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7472-5760+global.room_size,1015,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7440-5760+global.room_size,873,objLight_for_obj)
light_[ii].lightxs = 80
light_[ii].lightys = 80
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7504-5760+global.room_size,1256,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7504-5760+global.room_size,1385,objLight_for_obj)
light_[ii].lightxs = 85
light_[ii].lightys = 85
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7344-5760+global.room_size,1416,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++
light_[ii] = instance_create(7056-5760+global.room_size,1416,objLight_for_obj)
light_[ii].lightxs = 70
light_[ii].lightys = 70
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7216-5760+global.room_size,1416,objLight_for_obj)
light_[ii].lightxs = 70
light_[ii].lightys = 70
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(6976-5760+global.room_size,1033,objLight_for_obj)
light_[ii].lightxs = 40
light_[ii].lightys = 40
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7136-5760+global.room_size,1114,objLight_for_obj)
light_[ii].lightxs = 45
light_[ii].lightys = 45
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7136-5760+global.room_size,1032,objLight_for_obj)
light_[ii].lightxs = 45
light_[ii].lightys = 45
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7136-5760+global.room_size,938,objLight_for_obj)
light_[ii].lightxs = 45
light_[ii].lightys = 45
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7136-5760+global.room_size,782,objLight_for_obj)
light_[ii].lightxs = 64
light_[ii].lightys = 64
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.6
ii++

light_[ii] = instance_create(7136-5760+global.room_size,619,objLight_for_obj)
light_[ii].lightxs = 23
light_[ii].lightys = 23
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++

light_[ii] = instance_create(7215-5760+global.room_size,506,objLight_for_obj)
light_[ii].lightxs = 100
light_[ii].lightys = 100
light_[ii].lightcol = $FFFFFDDB
light_[ii].alpha = 0.35
ii++









	
	for(var i = 0; i < 30000; i++)
	{
		if place_meeting(x+x_line,y+y_line,create_lab_blocks_here) && !position_meeting(x+x_line,y+y_line,fl_parents)
		{
		instance_activate_object(fl_parents)
		instance_create(x+x_line,y+y_line,floor_pl15);
			if co_op_code.is_server = true
			{
				if position_meeting(x+x_line,y+y_line,create_lab_ore_blocks_here)
				{
				var random_cre_ore = percentage_k(40)
					if random_cre_ore = 1
					{
					var ore_ = instance_create(x+x_line,y+y_line,block_ore);
					ore_.block_num = -1
					ore_.received = 0
					ore_.stone_color = irandom_range(6,9)
					ore_.image_index = irandom_range(31,50)
					if ore_.image_index = 49
					{
					ore_.image_index = irandom_range(51,50)
					}
					ore_.item_num = ore_.image_index-31
					}
				}
			}
			
			if position_meeting(x+x_line,y+y_line,create_lab_generator_blocks_here)
			{
			var random_cre_ore = percentage_k(30)
				if random_cre_ore = 1
				{
					if gene_block_num = 0
					{
					var ore_ = instance_create(x+x_line,y+y_line,lab_generater);
					gene_block_num++
					}
					else if gene_block_num < 3 && gene_block_num != 0
					{
					var _rod_ = instance_create(x+x_line,y+y_line,electric_rod)
					_rod_.received = 0
					gene_block_num++
					}
				}
			}
			
			if position_meeting(x+x_line,y+y_line,create_lab_barrelblocks_here)
			{
			var random_cre_ore = percentage_k(23)
				if random_cre_ore = 1
				{
				var ore_ = instance_create(x+x_line,y+y_line,block_barrel);
				ore_.received = 0
				}
			}
		}
		
	x_line += 32
		if x_line > 2560
		{
		x_line = -2560
		y_line += 32
		}
		
		
	}
	
	
	
	instance_activate_all()
	instance_destroy(create_lab_generator_blocks_here)
	instance_destroy(create_lab_ore_blocks_here)
	instance_destroy(create_lab_barrelblocks_here)
	instance_activate_all()
	instance_destroy(create_lab_generator_blocks_here)
	instance_destroy(create_lab_ore_blocks_here)
	instance_destroy(create_lab_barrelblocks_here)
	instance_activate_all()
	
	
	global.go_to_other_room = 0