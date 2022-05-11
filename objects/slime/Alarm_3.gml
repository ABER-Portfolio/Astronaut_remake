/// @description Insert description here
// You can write your code in this editor

t_speed = 0
target_x = x
target_y = y

if damage_gotten_by = 1
{
m_damaged(player,global.attack_damage_origin,70,image_blend,self,3,global.knockback)
}

if damage_gotten_by = 2
{
m_damaged(player_co_op,global.attack_damage_co_op,70,image_blend,self,3,global.knockback)
}

sp_dilay = 0
if hspeed > 1
{
hspeed = -hspeed
}
else
{
	if damage_gotten_by = 1
	{
		if x > player.x
		{
		hspeed = 1
		}
		else
		{
		hspeed = -1
		}
	}
	else
	{
		if x > player_co_op.x
		{
		hspeed = 1
		}
		else
		{
		hspeed = -1
		}
	}
}

damage_gotten_by = 0