/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0 && instance_number(pl_rocket) = 0
{
destroy_++
}



w_alpha += (-0.01 - w_alpha)*0.1


if destroy_ > 220
{
	if destroy_ = 230
	{
		if co_op_code.is_server = true
		{
		var _bomb_ef_ = instance_create(x,y,bomb_fire_effect)
		_bomb_ef_.length = 48
		_bomb_ef_.received = 0
		_bomb_ef_.time = 0
		}
	instance_destroy()
	}
}


if image_xscale >= 1
{
image_xscale = 0.5
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


depth = -(y+12)




if global.obj_effect = 0 && instance_number(BG_blind) = 0
{
	for(var ii = 0; ii < choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,2,2); ii++)
	{
	///////////////먼지생성
	var movement_ef = instance_create(x+(irandom_range(-6,6)),y+(irandom_range(-3,3)),dust);
	movement_ef.ahspeed = irandom_range(-1,1)
	movement_ef.avspeed = irandom_range(-30,-1)/10
	movement_ef.depth = depth+choose(-1,1)
	movement_ef.received = 0
	}
}