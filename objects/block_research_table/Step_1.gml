/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);

if place_meeting(x,y,bomb_site)
{
instance_destroy()
}



if d_ore_bar_ready != 0 && furnacing_ore = noone && furnacing_time <= 0
{
d_ore_bar_ready.des = 1
d_ore_bar_ready = 0
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

