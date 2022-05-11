/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);
depth = -(y+14)

if instance_exists(noclip_block)
{
noclip_block.image_xscale = 1.1/1.9
noclip_block.image_yscale = 0.6*0.125
noclip_block.x = x
noclip_block.y = y
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