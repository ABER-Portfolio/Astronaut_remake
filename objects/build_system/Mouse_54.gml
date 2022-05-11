/// @description Insert description here
// You can write your code in this editor
var gl_it = global.inhand_item
var gl_cp = global.cannot_place

if gl_cp = 0 && global.inv_open = 0 && player.spin = 0 && global.stemina > 0
{
	if co_op_code.is_server = true
	{
		if instance_number(pl_inhand) > 0
		{
			if global.inhand_item_type = spr_pickaxe
			{
				if gl_it = 14 && pl_inhand.cool_time = 0 && instance_number(portal_ball) = 0
				{
				global.cannot_place = 1
				var p_ball = instance_create(player.x,player.y,portal_ball)
				p_ball.t_x = x
				p_ball.t_y = y
				p_ball.image_index = 1
				pl_inhand.alarm[3] = 1
				}
			}
		}
	}
	else
	{
		if instance_number(pl_inhand_co_op) > 0
		{
			if global.inhand_item_type = spr_pickaxe
			{
				if gl_it = 14 && pl_inhand.cool_time = 0 && instance_number(portal_ball) = 0
				{
				global.cannot_place = 1
				var p_ball = instance_create(player_co_op.x,player_co_op.y,portal_ball)
				p_ball.t_x = x
				p_ball.t_y = y
				p_ball.image_index = 3
				pl_inhand_co_op.alarm[3] = 1
				}
			}
		}
	}
}




if global.playing_scene = 1
{
	if global.guide_massage = 0 && gl_cp = 1
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "Can not place in there"
	}
}