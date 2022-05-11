/// @description Insert description here
// You can write your code in this editor
if global.inhand_item_type = spr_potion_only && global.inhand_item = 15
{
var target_ = player
	if global.co_op_mode = 1 && co_op_code.is_server = false
	{
	target_ = player_co_op
	}
	
	if point_distance(x,y,target_.x,target_.y) < 16
	{
	watered_alpha = (1 - watered_alpha+watered_alpha_polluted+watered_alpha_crimson)
	inventory_item_sub(item200016,1,0)
	}
}