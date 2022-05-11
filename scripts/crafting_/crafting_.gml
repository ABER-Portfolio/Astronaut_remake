///item_crafting()
///@param stuff_1
///@param stuff_1_num
///@param stuff_2
///@param stuff_2_num
///@param stuff_3
///@param stuff_3_num
///@param stuff_4
///@param stuff_4_num
///@param stuff_5
///@param stuff_5_num
///@param result_item
///@param crafting_time
///@param result_item_num
///@param result_item_spr
///@param result_item_ind


if object_exists(argument10) //result_item
{
var _obj_ind = instance_create(-100,-100,argument10);
var checked_spr_ind = _obj_ind.sprite_index
var checked_img_ind = _obj_ind.image_index
instance_destroy(_obj_ind)
}


if argument13 = checked_spr_ind && argument14 = checked_img_ind
{
//show_message("clicked")

if inv_tuto_mes = 0
{
	if global.language = 0
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "Double click to craft"
	}
				
	if global.language = 1
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "더블 클릭 하여 조합 할 수 있습니다"
	}
inv_tuto_mes = 1
}

var item_stuff = 0
var item_stuff_num = 0
	for(var i = 1; i < 5; i++)
	{
	item_stuff[i] = 0
	item_stuff_num[i] = 0
	}

item_stuff[1] = argument0;
global.craft_item_stuff_origin_id[1] = argument0;
item_stuff[2] = argument2;
global.craft_item_stuff_origin_id[2] = argument2;
item_stuff[3] = argument4;
global.craft_item_stuff_origin_id[3] = argument4;
item_stuff[4] = argument6;
global.craft_item_stuff_origin_id[4] = argument6;
item_stuff[5] = argument8;
global.craft_item_stuff_origin_id[5] = argument8;

item_stuff_num[1] = argument1;
global.craft_item_stuff_num[1] = argument1;
item_stuff_num[2] = argument3;
global.craft_item_stuff_num[2] = argument3;
item_stuff_num[3] = argument5;
global.craft_item_stuff_num[3] = argument5;
item_stuff_num[4] = argument7;
global.craft_item_stuff_num[4] = argument7;
item_stuff_num[5] = argument9;
global.craft_item_stuff_num[5] = argument9;

for(var i = 1; i < 6; i++)
{
	if global.craft_item_stuff_origin_id[i] != noone && global.craft_item_stuff_origin_id[i] != -1
	{
	var _obj_ind = instance_create(-100,-100,global.craft_item_stuff_origin_id[i]);
	global.craft_item_stuff[i] = _obj_ind.sprite_index;
	global.craft_item_stuff_img[i] = _obj_ind.image_index;
	global.craft_item_stuff_name[i] = k_item_info_log(_obj_ind.sprite_index,_obj_ind.image_index,true);
	instance_destroy(_obj_ind)
	}
}


var _ins_s_ = instance_create(-100,-100,argument10)
var ins_spr = _ins_s_.sprite_index
var ins_img = _ins_s_.image_index
instance_destroy(_ins_s_)

if ins_spr = argument13 && ins_img = argument14
{


var need_more_items = 0

if ui_inv.crafting_double_clicked <= 1
{
need_more_items = 1
}
else
{
	for(var i = 1; i < 5; i++)
	{
		if item_stuff[i] != noone && item_stuff[i] != -1
		{
			if inventory_number_find_by_name(item_stuff[i],0) < item_stuff_num[i]
			{
			need_more_items = 1;
			};
		};
	};
}

if need_more_items = 1
{
//show_message("Need stuff")
}


if need_more_items = 0
{
	for(var i = 1; i < 5; i++)
	{
		if item_stuff[i] != noone && item_stuff[i] != -1
		{
		inventory_item_sub(item_stuff[i],item_stuff_num[i],0);
		};
	};
inventory_item_queue(argument10,argument12,0,argument11);
};

}
}
