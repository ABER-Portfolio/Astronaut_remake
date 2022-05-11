/// @description Insert description here
// You can write your code in this editor
ini_open("Astronaut_map_pro_"+string(global.map_num)+".ini")
//바닥 로드
global.fl_block_all_num = ini_read_real("fl_ins_num","a",0)

//광석 블럭 로드
global.ore_block_all_num = ini_read_real("bl_ins_num","a1",0)

//벽 블럭 로드
global.wall_block_all_num = ini_read_real("bl_ins_num","a2",0)

//나머지 블럭 로드
global.block_all_num = ini_read_real("bl_ins_num","a3",0)

//용광로 블럭 로드
global.furnace_block_all_num = ini_read_real("bl_ins_num","a4",0)

//상자 블럭 로드
global.chest_block_all_num = ini_read_real("bl_ins_num","a5",0)

global.meteor_num = ini_read_real("meteor_num","a",0)
global.new_map = ini_read_real("new_map_check","a",0)
global.room_size = ini_read_real("map_size","a",7040)
ini_close()









//바닥 로드
global._object_index = array_create(global.fl_block_all_num,0)

global._x1 = array_create(global.fl_block_all_num,0)
global._y1 = array_create(global.fl_block_all_num,0)



//광석 블럭 로드
global._image_index = array_create(global.ore_block_all_num,0)
global._sprite_index = array_create(global.ore_block_all_num,0)

global._x2 = array_create(global.ore_block_all_num,0)
global._y2 = array_create(global.ore_block_all_num,0)


global._block_num = array_create(global.ore_block_all_num,0)
global._item_num = array_create(global.ore_block_all_num,0)
global._stone_color = array_create(global.ore_block_all_num,0)
global._xscale = array_create(global.ore_block_all_num,0)
global._yscale = array_create(global.ore_block_all_num,0)



//벽 블럭 로드
global._object_index2 = array_create(global.wall_block_all_num,0)

global._x3 = array_create(global.wall_block_all_num,0)
global._y3 = array_create(global.wall_block_all_num,0)

global._image_angle = array_create(global.wall_block_all_num,0)

//나머지 블럭 로드
global._image_index2 = array_create(global.block_all_num,0)
global._object_index3 = array_create(global.block_all_num,0)

global._x4 = array_create(global.block_all_num,0)
global._y4 = array_create(global.block_all_num,0)