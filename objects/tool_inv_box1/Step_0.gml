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









//만약 인벤토리 내 도구를 선택했을때
if check > 0
{
	//선택한 순간에 해당 박스가 선택되어있을때
	if global.tool_inv_box_choose = box_num
	{
	/////////////////////도구의 스프라이트와 이미지인덱스값, 갯수를 불러옴///////////////////
	var click_index = inventory_point_get_index(mouse_x , mouse_y);
	//체크 인덱스를 저장
	saved_click_index = click_index
	var _use_item_index_ = inventory_item_find_by_index(click_index,0)
	
		/* 인벤토리에 아이템이 존재하는지 검사 */
		if ( _use_item_index_ != noone )
		{
		    //지정 아이템 생성후 사용
			var inst_id = instance_create(-100 , -100 , _use_item_index_);
			item_spr = inst_id.sprite_index
			item_num = inst_id.image_index
			var item_numbers = inventory_number_find_by_index(click_index,0)
			item_having_num = item_numbers
			instance_destroy(inst_id)

		}
	/////////////////////////////////////////////////////////////////////////////

	//만약 불러온값이 도구아이템인경우 불러온 값을 적용하여 곡괭이를 손에 듬
	item_real_spr = item_spr
	if (item_real_spr = spr_pickaxe_center_origin || item_real_spr = spr_potion_center_origin || item_real_spr = spr_placeable_center_origin || item_real_spr = spr_inv_item || item_real_spr = spr_only_items)
	{
	global.inhand_item = item_num
	}
	else //아닌경우 플레어아가 도구를 들지않은상태로 변경
	{
	global.inhand_item = noone
	}
	
	//만약 자신을 제외한 칸중에 중복되는 아이템이 있다면
	with(tool_inv_box)
	{
		if(id != other.id)
		{
			if item_spr = other.item_spr && item_num = other.item_num && click_index = saved_click_index
			{
			item_spr = none_sprite
			item_num = noone
			item_having_num = noone
			}
		}
	}

	}
	
	
/////얘는 그냥 고정/////
check = 0
}






///////////////////////////////////////////////////////////////////////////////////////////

if saved_click_index != noone
{
var _item_num_ = inventory_number_find_by_index(saved_click_index,0)
	if _item_num_ > 0
	{
	item_having_num = _item_num_
	}
	else
	{
	item_having_num = noone
	item_spr = noone
	item_num = noone
	}
}






















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


	//만약 불러온값이 도구아이템인경우 불러온 값을 적용
	if (item_real_spr = spr_pickaxe_center_origin || item_real_spr = spr_potion_center_origin || item_real_spr = spr_placeable_center_origin || item_real_spr = spr_inv_item || item_real_spr = spr_only_items || item_real_spr = spr_clothes_center_origin)
	{
	global.inhand_item = item_num
	}
	else
	{
	global.inhand_item = noone
	}
}
else
{
depth = -room_width*3.01
xx_scale += (1 - xx_scale)*0.2
yy_scale += (1 - yy_scale)*0.2
alpha = 0
}

