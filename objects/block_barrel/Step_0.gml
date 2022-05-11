/// @description Insert description here
// You can write your code in this editor



if instance_number(creating_maps) > 0 && (place_meeting(x,y,block_container) || place_meeting(x,y,block_container_vertical) || place_meeting(x,y,Lab_giant_door) || place_meeting(x,y,block_home))
{
instance_destroy()
instance_activate_object(noclip_block)
	if instance_exists(noclip_block)
	{
	instance_destroy(noclip_block)
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
