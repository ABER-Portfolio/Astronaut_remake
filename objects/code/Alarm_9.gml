/// @description 부활

//방사능
global.radiation = 0
//독중독
global.poisoning = 0
//불에탐
global.burning = 0
//불에탐
global.temperature = 26


global.fighting_now = 0
global.flower_boss_raid_start = 0
if instance_number(flower_boss) > 0
{
flower_boss.searched = 0
flower_boss.woke_up = 0
}

//var slot_size = ui_inv.inventory_width*ui_inv.inventory_height
//var random_drop_item = irandom_range(0,slot_size)


//var slot = irandom_range(0,slot_size)
//for(var i = 0; i < random_drop_item; i++)
//{
//randomize()
//var random_sl = irandom_range(0,slot)
//ui_inv.inventory_item_equip[random_sl] = noone
//ui_inv.inventory_num_equip[random_sl] = -1
//ui_inv.inventory_spr[random_sl] = none_sprite
//ui_inv.inventory_img_index[random_sl] = noone
//}

if inventory_number_find_by_name(item10001,0) = 0
{
inventory_item_add(item10001,1,0)
}


if global.n_room = 2
{	
instance_destroy(fl_cave)
instance_destroy(create_cave)
for(var i = 10; i < 14; i++)
{
instance_destroy(asset_get_index("floor_pl"+string(i)))
}
	
	
global.black_blind = 1
global.change_map_to = 1
global.go_to_other_room = 1
obj_camera.b_blind = 1.5

room_width = last_room_width
}






if global.n_room = 3
{	
instance_destroy(fl_cave)
instance_destroy(create_cave)
for(var i = 10; i < 14; i++)
{
instance_destroy(floor_pl15)
}
	
	
global.black_blind = 1
global.change_map_to = 1
global.go_to_other_room = 1
obj_camera.b_blind = 1.5

room_width = last_room_width
}




auto_heal = 0
injured_effect = 0
double_knocked_out_cancle = 0
revived_by_astronaut = 0

injured_effect = 1
alarm[10] = 1

instance_activate_object(Lab_giant_door)
var res_x = Lab_giant_door.x-32
var res_y = Lab_giant_door.y+128

var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}


target_.damage_dilay = 0
target_.move_released = 1
target_.hmove_released = 1
target_.move_direction = 0


if co_op_code.is_server = true
{
player.x = res_x+48
player.y = res_y
player.image_xscale = -abs(player.image_xscale)
}
else
{
player_co_op.x = res_x+32
player_co_op.y = res_y
player_co_op.image_xscale = -abs(player_co_op.image_xscale)
}

global.time += (3333)*irandom_range(2,5)


global.hp = 2
global.o2 = 2
global.stemina = 1.02
global.do_not_move = 0
global.ghost_mode = 1
global.knocked_out = 0




target_.chunk_loading_time = 999999999
target_.hurted_alpha = 0




if instance_number(all_blocks_parents) > 0
{
all_blocks_parents.alarm[11] = 1
}


if co_op_code.is_server = true
{
pl_inhand.cool_time = 0
}
else
{
pl_inhand_co_op.cool_time = 0
}
////////////////////////////////////////////////////////////////

obj_camera.x = target_.x
obj_camera.y = target_.y
obj_camera.tv_x = 1280/(4-(global.sight*2))
obj_camera.tv_y = 720/(4-(global.sight*2))

global.revived_now = 1
