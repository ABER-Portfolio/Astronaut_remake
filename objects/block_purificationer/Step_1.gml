/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);

if place_meeting(x,y,bomb_site)
{
instance_destroy()
}


if furnacing_time <= 0
{
image_index = 0
furnacing_time = 0
image_xscale = 0.5
image_yscale = 0.5
}
else
{

scale_plus_time++


if scale_plus_time > 80
{
scale_plus ++
scale_plus_time = 0
}

if scale_plus > 1
{
scale_plus = 0
}

	if scale_plus = 1
	{
	image_xscale += 0.001
	image_yscale += 0.001
	}
	else
	{
	image_xscale -= 0.001
	image_yscale -= 0.001
	}
}

if furnacing_ore != noone && furnacing_time <= 0
{
	if d_ore_bar_ready = 0
	{
		if furnacing_ore != -1
		{
		var _item_ = instance_create(-100,-100,furnacing_ore)
		d_ore_bar_ready = instance_create(x,y-16,d_item_log)
		d_ore_bar_ready.sprite = _item_.sprite_index
		d_ore_bar_ready.ind = _item_.image_index
		d_ore_bar_ready.depth = depth-1
		d_ore_bar_ready.depth_target = noone
		instance_destroy(_item_)
		}
		else
		{
		furnacing_ore = noone
		}
	}
}



#region//플레이어 근처가 아닌경우 노클립 블럭 비활성화
if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
		if point_distance(x,y,player.x,player.y) > 64
		{
		instance_deactivate_object(noclip_block)
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
		if point_distance(x,y,player_co_op.x,player_co_op.y) > 64
		{
		instance_deactivate_object(noclip_block)
		}
		else
		{
		instance_activate_object(noclip_block)
		}
	}
}

#endregion

