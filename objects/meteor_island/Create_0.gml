/// @description Insert description here
// You can write your code in this editor
global.meteor_num ++
x = irandom_range(0,room_width)
y = irandom_range(0,room_width)

chat_buffer = buffer_create(2, buffer_grow, 1);


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

instance_activate_object(fl_parents)

for(var i = -2; i <= 2; i++)
{
	if !position_meeting(x+(i*32),y,floor_pl9)
	{
	var fl_block = instance_create(x+(i*32),y,floor_pl9)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
	if !position_meeting(x,y+(i*32),floor_pl9)
	{
	var fl_block = instance_create(x,y+(i*32),floor_pl9)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}

var fl_block = instance_create(x-32,y-32,floor_pl9)
if instance_exists(fl_block)
{
fl_block.received = 1
fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
}
var fl_block = instance_create(x+32,y-32,floor_pl9)
if instance_exists(fl_block)
{
fl_block.received = 1
fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
}

var fl_block = instance_create(x-32,y+32,floor_pl9)
if instance_exists(fl_block)
{
fl_block.received = 1
fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
}
var fl_block = instance_create(x+32,y+32,floor_pl9)
if instance_exists(fl_block)
{
fl_block.received = 1
fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
}


instance_activate_object(fl_parents)
for(var i = 0; i <= 16; i++)
{
var random_x = irandom_range(-6,6)
var random_y = irandom_range(-6,6)
	if !position_meeting(x+(random_x*32),y+(random_y*32),floor_pl9)
	{
	var fl_block = instance_create(x+(random_x*32),y+(random_y*32),floor_pl9)
		if instance_exists(fl_block)
		{
		fl_block.received = 1
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		}
	}
}


/////////////////구조물 생성///////////////////////

for(var i = -6; i < 6; i++)
{
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(-6*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(-6*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(-5*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(-5*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(-4*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(-4*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(-3*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(-3*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(-2*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(-2*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(-1*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(-1*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y,floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y,block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(1*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(1*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(2*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(2*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(3*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(3*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(4*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(4*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(5*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(5*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
	
	var random_var = percentage_k(70)
	if random_var = 1 && position_meeting(x+(i*32),y+(6*32),floor_pl9)
	{
	var c_ore = instance_create(x+(i*32),y+(6*32),block_ore)
	c_ore.block_num = -1
	c_ore.stone_color = 14
	c_ore.item_num = 16
	c_ore.received = 0
	created_ores ++
	}
}


if global.language = 0
{
var _text_bar = instance_create(x,y,draw_debug_text)
_text_bar.text = "Meteorite has fallen somewhere!"
}

if global.language = 1
{
var _text_bar = instance_create(x,y,draw_debug_text)
_text_bar.text = "어딘가에 운석이 떨어졌습니다!"
}

buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.METEORITE);
send_all(chat_buffer);

instance_destroy()
