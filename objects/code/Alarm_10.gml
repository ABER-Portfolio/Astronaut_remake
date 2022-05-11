/// @description 데미지 닳았을때 이벤트

injured_effect += 1
if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
		if injured_effect%2 = 1
		{
		player.image_alpha = 0.3631683
		}
	
		if injured_effect%2 = 0
		{
		player.image_alpha = 1
		}
		
		if injured_effect = 1
		{
		var _i_ = 10 - (global.max_hp - global.hp)/5 + 5
			if _i_ <= 0
			{
			_i_ = 6
			}
		
		if instance_number(BG_blind) = 0
		{
		}
		
			if global.obj_effect = 0
			{
				for(var i = 0; i < irandom_range(5,9); i++)
				{
				var sl_ef = instance_create(player.x,player.y,slime_effect)
				sl_ef.image_blend = c_red
				sl_ef.image_xscale = 0.007
				sl_ef.image_yscale = 0.007
				sl_ef.ty = player.y+16
				}
			}
		}
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
		if injured_effect%2 = 1
		{
		player_co_op.image_alpha = 0.3631683
		}
	
		if injured_effect%2 = 0
		{
		player_co_op.image_alpha = 1
		}
		
		if injured_effect = 1
		{
		var _i_ = 10 - (global.max_hp - global.hp)/5 + 5
			if _i_ <= 0
			{
			_i_ = 6
			}
			
		if instance_number(BG_blind) = 0
		{
		}
		
			if global.obj_effect = 0
			{
				for(var i = 0; i < irandom_range(5,9); i++)
				{
				var sl_ef = instance_create(player_co_op.x,player_co_op.y,slime_effect)
				sl_ef.image_blend = c_red
				sl_ef.image_xscale = 0.007
				sl_ef.image_yscale = 0.007
				sl_ef.ty = player_co_op.y+16
				}
			}
		}
	}
}

if injured_effect <= 11
{
alarm[10] = 3
}
else
{
injured_effect = 0
}

