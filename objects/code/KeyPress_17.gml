/// @description Insert description here
// You can write your code in this editor


if global.dev_mode > 0
{

global.o_exp_white = 1
global.r_exp_white = 1

global.to_exp = global.max_o_exp
global.tr_exp = global.max_r_exp
}

if global.dev_mode = 1
{
var cre_item = instance_create(mouse_x,mouse_y,obj_item_tools)
cre_item.stucked_item_number = 1
cre_item.hspeed = irandom_range(-20,20)*0.1
cre_item.vspeed = -irandom_range(0,20)*0.1
cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
cre_item.image_yscale = 0.18
cre_item.image_index = irandom_range(0,48)
cre_item.floor_y = mouse_y+20
cre_item.depth = -(depth+1)
cre_item.received_item = 0

var cre_item = instance_create(mouse_x,mouse_y,obj_item_tools)
cre_item.stucked_item_number = 1
cre_item.hspeed = irandom_range(-20,20)*0.1
cre_item.vspeed = -irandom_range(0,20)*0.1
cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
cre_item.image_yscale = 0.18
cre_item.image_index = irandom_range(14,17)
cre_item.floor_y = mouse_y+20
cre_item.depth = -(depth+1)
cre_item.received_item = 0

var cre_item = instance_create(mouse_x,mouse_y,obj_item_tools)
cre_item.stucked_item_number = 1
cre_item.hspeed = irandom_range(-20,20)*0.1
cre_item.vspeed = -irandom_range(0,20)*0.1
cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
cre_item.image_yscale = 0.18
cre_item.image_index = irandom_range(74,78)
cre_item.floor_y = mouse_y+20
cre_item.depth = -(depth+1)
cre_item.received_item = 0

for(var i = 1; i < 9; i++)
{
var cre_item = instance_create(mouse_x,mouse_y,obj_item)
cre_item.stucked_item_number = 99
cre_item.image_index = 62+i
cre_item.received_item = 0
cre_item.hspeed = irandom_range(-200,200)*0.01;
cre_item.floor_y = mouse_y+irandom_range(0,8);
cre_item.a = irandom_range(9,15)
}

var cre_item = instance_create(mouse_x,mouse_y,obj_item_tools)
cre_item.stucked_item_number = 1
cre_item.hspeed = irandom_range(-20,20)*0.1
cre_item.vspeed = -irandom_range(0,20)*0.1
cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
cre_item.image_yscale = 0.18
cre_item.image_index = irandom_range(49,63)
cre_item.floor_y = mouse_y+20
cre_item.depth = -(depth+1)
cre_item.received_item = 0

var cre_item = instance_create(mouse_x,mouse_y,obj_item_clothes)
cre_item.stucked_item_number = 1
cre_item.vspeed = -irandom_range(0,20)*0.1
cre_item.image_xscale = 0.3
cre_item.image_yscale = 0.3
cre_item.image_index = irandom_range(0,4)
cre_item.floor_y = mouse_y+20
cre_item.depth = -(depth+1)
cre_item.received_item = 0

}