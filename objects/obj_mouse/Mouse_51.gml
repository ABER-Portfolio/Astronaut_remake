/// @description Insert description here
// You can write your code in this editor
if global.inhand_item_type = spr_pickaxe && global.inhand_item = 75 && global.knocked_out = 0
{
telescope_disable = 0
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	if instance_number(target_) > 0
	{
		if point_distance(mouse_x,mouse_y,target_.x,target_.y) < 500
		{
		mx += (mouse_x - mx)*0.1
		my += (mouse_y - my)*0.1
		}
		else
		{
		mx += (mouse_x - mx)*0.04
		my += (mouse_y - my)*0.04
		}
		
		
		if point_distance(mx,my,target_.x,target_.y) < 500
		{
		b_mx = mouse_x
		b_my = mouse_y
		obj_camera.x = mx
		obj_camera.y = my
		
			if point_distance(mx,my,target_.x,target_.y) > obj_camera.tv_x
			{
			obj_camera.v_x = point_distance(mx,my,target_.x,target_.y)
			obj_camera.v_y = obj_camera.v_x/1280*720
			}
		}
		else
		{
		obj_camera.x = b_mx
		obj_camera.y = b_my
		mx += (b_mx - mx)*0.1
		my += (b_my - my)*0.1
		obj_camera.v_x = 500
		obj_camera.v_y = obj_camera.v_x/1280*720
		}
	}
}
else
{
telescope_disable = 1
}


if global.inhand_item_type = spr_only_items && global.inhand_item = 69
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
	if point_distance(target_.x,target_.y,x,y) < 16 && !position_meeting(x,y,fl_parents)
	{
	inventory_item_sub(item70,1,0)

	var cre_item = instance_create(target_.x,target_.y,obj_item_potion)
	cre_item.stucked_item_number = 1
	cre_item.image_index = 16
	cre_item.floor_y = target_.y+irandom_range(0,4);
	cre_item.y = cre_item.floor_y-2
	cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
	cre_item.received_item = 0
	}
}