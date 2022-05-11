/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

#region//플레이어 근처가 아닌경우 노클립 블럭 비활성화
if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
		if point_distance(x,y,player.x,player.y) > 128
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
		if point_distance(x,y,player_co_op.x,player_co_op.y) > 128
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




move_snap(32,32);


if instance_exists(noclip_block)
{
noclip_block.image_xscale = 0.85
noclip_block.image_yscale = 0.72
noclip_block.x = x
noclip_block.y = y+4
}

depth = -(y + 24)



if door_t_y = 0
{
double_chat_c = 0
}

if global.co_op_mode = false
{
	if instance_number(player) > 0
	{
		if door_t_y != 0
		{
			if point_distance(x,y,player.x,player.y) > 35 || y+2 > player.y || opened = 0
			{
			door_t_y = 0
			}
		}
	}
}
else
{
	if instance_number(player) > 0
	{
		if door_t_y != 0
		{
			if (point_distance(x,y,player.x,player.y) > 35 || y+2 > player.y) && (point_distance(x,y,player_co_op.x,player_co_op.y) > 35 || y+2 > player_co_op.y) || opened = 0
			{
			door_t_y = 0
			}
		}
	}
}

door_y += (door_t_y - door_y)*0.08

if created_potal = 1
{
door_t_y = -30
}

if instance_number(player) > 0
{
	if opened = 1
	{
		if global.co_op_mode = false
		{
			if point_distance(x,y,player.x,player.y) <= 35 && y+2 < player.y
			{
				if created_potal = 0
				{
					if door_y < -28
					{
					var cre_bl = instance_create(player.x,player.y,block_hole_lab)
					cre_bl.received = 1
					cre_bl.image_alpha = 0
					created_potal = 1
					}
				}
			door_t_y = -30
			}
		}
		else
		{
		var sticked_together = 0
			if point_distance(x,y,player.x,player.y) > 35 || y+2 < player.y
			{
			sticked_together = 1
			}
		
			if point_distance(x,y,player_co_op.x,player_co_op.y) > 35 || y+2 < player_co_op.y
			{
			sticked_together = 1
			}
		
			if sticked_together = 1
			{
				if double_chat_c = 0
				{
					if co_op_code.is_server = true
					{
						if point_distance(x,y,player.x,player.y) <= 35 && y+2 < player.y
						{
						chat_up("Can not go alone",1)
						double_chat_c = 1
						}
					}
					else
					{
						if point_distance(x,y,player_co_op.x,player_co_op.y) <= 35 && y+2 < player_co_op.y
						{
						chat_up("Can not go alone",1)
						double_chat_c = 1
						}
					}
				door_t_y = -30
				}
			}
			else
			{
				if created_potal = 0 && door_y < -28
				{
				var cre_bl = instance_create(player.x,player.y,block_hole_lab)
				cre_bl.received = 1
				cre_bl.image_alpha = 0
				created_potal = 1
			
				var cre_bl = instance_create(player_co_op.x,player_co_op.y,block_hole_lab)
				cre_bl.received = 1
				cre_bl.image_alpha = 0
				created_potal = 1
				door_t_y = -30
				}
			}
		}
	}
}



if created_potal = 1 && instance_number(block_hole_lab) > 0
{
opened = 0
created_potal = 0
double_chat_c = 0
}