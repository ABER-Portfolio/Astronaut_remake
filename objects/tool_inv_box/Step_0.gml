/// @description Insert description here
// You can write your code in this editor
var x_scale = (obj_camera.v_x/1280)/1.8
var y_scale = (obj_camera.v_y/720)/1.8
var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-530*x_scale
var yy = global._came_vy_p_h
var yyy = global._came_vy

//var xxx = global._came_vx_p_w
//var yyy = global._came_vy_p_h

var box_size = 103


image_xscale = xx_scale*x_scale
image_yscale = yy_scale*y_scale

x = xx+(box_size*x_scale*box_num)

if global.ui_loc = 0
{
y = yy-(y_scale*box_size*0.8)
}
else
{
y = yyy+(y_scale*box_size*0.8)
}








if instance_number(ui_inv) > 0
{
var spr_ = ui_inv.inventory_spr[box_num-1] 
if spr_ = -1 || spr_ = noone
{
spr_ = none_sprite
}
item_spr = spr_
item_real_spr = spr_


item_num = ui_inv.inventory_img_index[box_num-1]

if global.tool_inv_box_choose = box_num
{
	if item_num = -1
	{
	global.inhand_item = noone;
	}
global.inhand_item = item_num;
}


var num_ = ui_inv.inventory_num_equip[box_num-1]
if num_ <= 0 || num_ = noone
{
num_ = -1
}
item_having_num = num_;
};

























if global.tool_inv_box_choose = box_num
{
depth = -room_width*3.1
xx_scale += (1.2 - xx_scale)*0.2
yy_scale += (1.2 - yy_scale)*0.2
alpha = 1

	if item_real_spr = spr_pickaxe_center_origin
	{
	global.inhand_item_type = spr_pickaxe
	}
	else if item_real_spr = spr_potion_center_origin
	{
	global.inhand_item_type = spr_potion_only
	}
	else if item_real_spr = spr_placeable_center_origin
	{
	global.inhand_item_type = spr_placeable
	}
	else if item_real_spr = spr_clothes_center_origin
	{
	global.inhand_item_type = spr_clothes_center_origin
	}
	else if (item_real_spr = spr_only_items || item_real_spr = spr_inv_item)
	{
	global.inhand_item_type = spr_only_items
	}
	else
	{
	global.inhand_item_type = none_sprite
	}
}
else
{
depth = -room_width*3.01
xx_scale += (1 - xx_scale)*0.2
yy_scale += (1 - yy_scale)*0.2
alpha = 0
}

