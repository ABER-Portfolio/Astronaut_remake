/// @description Insert description here
// You can write your code in this editor
if global.dev_mode > 0
{
var cre_item = instance_create(mouse_x,mouse_y,obj_item_tools)
cre_item.stucked_item_number = 1
cre_item.hspeed = irandom_range(-20,20)*0.1
cre_item.vspeed = -irandom_range(0,20)*0.1
cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
cre_item.image_yscale = 0.18
cre_item.image_index = 0
cre_item.floor_y = mouse_y+20
cre_item.depth = -(depth+1)
cre_item.received_item = 0

var cre_item = instance_create(mouse_x,mouse_y,obj_item_placeable)
cre_item.stucked_item_number = 1
cre_item.image_index = 0
cre_item.received_item = 0
cre_item.hspeed = irandom_range(-200,200)*0.01;
cre_item.floor_y = mouse_y+irandom_range(0,8);
cre_item.a = irandom_range(9,15)
}