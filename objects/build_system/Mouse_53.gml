/// @description Insert description here
// You can write your code in this editor
//var gl_sbt = global.set_build_things
var gl_cp = global.cannot_place
var gl_it = global.inhand_item

var _target = pl_inhand

if co_op_code.is_server = false
{
_target = pl_inhand_co_op
}



if _target.cool_time = 0 && gl_cp = 0 && instance_number(creating_maps) > 0 && global.inv_open = 0 && player.spin = 0 && global.stemina > 0
{
	if global.inhand_item_type = spr_pickaxe && global.inhand_item = 74
	{
	var _block_ = instance_create(x,y,grill_floor);
	_block_.received = 0
	}
	
	for(var i = 45; i < 55; i++)
	{
		if !position_meeting(x,y,fl_parents) && global.inhand_item_type = spr_placeable && global.inhand_item = i
		{
		var fl_block = instance_create(x,y,asset_get_index("floor_pl"+string(i-45)));
		fl_block.received = 0
		fl_block.draw_tiles_on_the_floor = irandom_range(0,15)
		inventory_item_sub(asset_get_index("item4000"+string(i+1)),1,0)
		
			if instance_number(floor_pl_parents) > 0
			{
			floor_pl_parents.alarm[9] = 1
			}
		}
	}
	
	if global.inhand_item_type = spr_pickaxe
	{
		if gl_it = 14 && instance_number(portal_ball) = 0
		{
			if co_op_code.is_server = true
			{
			global.cannot_place = 1
			var p_ball = instance_create(player.x,player.y,portal_ball)
			p_ball.t_x = x
			p_ball.t_y = y
			p_ball.image_index = 0
			}
			else
			{
			global.cannot_place = 1
			var p_ball = instance_create(player_co_op.x,player_co_op.y,portal_ball)
			p_ball.t_x = x
			p_ball.t_y = y
			p_ball.image_index = 2
			}
		}
	}
	else
	{
		if gl_it = 0
		{
		var cre_bl = instance_create(x,y,o2_cable)
		cre_bl.received = 0
		inventory_item_sub(item40001,1,0)
		}
	
		if gl_it = 5
		{
		var cre_bl = instance_create(x,y,block_workbench)
		cre_bl.received = 0
		inventory_item_sub(item40006,1,0)
		}
	
		if gl_it = 6
		{
		var cre_bl = instance_create(x,y,block_furnace)
		cre_bl.received = 0
		inventory_item_sub(item40007,1,0)
		}
		
		if gl_it = 12
		{
		var cre_bl = instance_create(x,y,block_purificationer)
		cre_bl.received = 0
		inventory_item_sub(item400013,1,0)
		}
		
		if gl_it = 13
		{
		var cre_bl = instance_create(x,y,block_recycler)
		cre_bl.received = 0
		inventory_item_sub(item400014,1,0)
		}
		
		if gl_it = 29
		{
		var cre_bl = instance_create(x,y,bomb_block)
		cre_bl.image_index = 0
		cre_bl.received = 0
		inventory_item_sub(item400030,1,0)
		}
		
		if gl_it = 30
		{
		var cre_bl = instance_create(x,y,bomb_block)
		cre_bl.image_index = 1
		cre_bl.received = 0
		inventory_item_sub(item400031,1,0)
		}
		
		if gl_it = 31
		{
		var cre_bl = instance_create(x,y,block_sprinkler)
		cre_bl.image_index = 0
		cre_bl.received = 0
		inventory_item_sub(item400032,1,0)
		}
		
		if gl_it = 32
		{
		var cre_bl = instance_create(x,y,block_sprinkler)
		cre_bl.image_index = 1
		cre_bl.received = 0
		inventory_item_sub(item400033,1,0)
		}
		
		if gl_it = 33
		{
		var cre_bl = instance_create(x,y,block_sprinkler)
		cre_bl.image_index = 2
		cre_bl.received = 0
		inventory_item_sub(item400034,1,0)
		}
		
		
		for(var i = 34; i < 42; i++)
		{
			if gl_it = i
			{
			var cre_bl = instance_create(x,y,paint_block)
			cre_bl.image_index = (i-34)*15
			cre_bl.received = 0
			inventory_item_sub(asset_get_index("item4000"+string(i+1)),1,0)
			}
		}
		
		
		
		for(var i = 14; i < 24; i++)
		{
			if gl_it = i
			{
			inventory_item_sub(asset_get_index("item4000"+string(i+1)),1,0)
			var cre_bl = instance_create(x,y,chest)
			cre_bl.received = 0
			cre_bl.image_index = (1+(i-14)*2)
				for(var i = 0; i < 14; i++)
				{
				cre_bl.chest_item[i] = noone
				cre_bl.chest_item_num[i] = -1
				}
			
			break;
			}
		}

	
		if (gl_it >= 7 && gl_it <= 9) || (gl_it >= 42 && gl_it <= 44) || (gl_it >= 24 && gl_it <= 28)
		{
			if place_meeting(x,y,grill_floor)
			{
			var tree_s = instance_create(x,y,tree_seed)
				if (gl_it = 7 || gl_it = 8 || gl_it = 9)
				{
				tree_s.image_index = gl_it-7
				}
				else if (gl_it >= 24 && gl_it <= 28)
				{
				tree_s.image_index = gl_it-21
				}
				else
				{
				tree_s.image_index = gl_it-34
				}
			tree_s.received = 0
			inventory_item_sub(asset_get_index("item4000"+string(gl_it+1)),1,0)
			}
			else
			{
			global.cannot_place = 1
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