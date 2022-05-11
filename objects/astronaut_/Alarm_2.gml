/// @description Insert description here
// You can write your code in this editor
if found_human = 1
{
t_speed = 0
	if global.co_op_mode = true
	{
		if point_distance(x,y,player.x,player.y) <= 190 || point_distance(x,y,player_co_op.x,player_co_op.y) <= 190
		{
		var _bullet_ = instance_create(x,y,gun_bullet_enemy)
		_bullet_.received = 0
		_bullet_.image_angle = t_weapon_angle+180
		_bullet_.direction = t_weapon_angle+180
		_bullet_.speed = 9
		_bullet_.image_index = 0
		_bullet_.depth = depth+1
		_bullet_.image_xscale = 0.32
		_bullet_.image_yscale = 0.32
		_bullet_.own_damage = 2
		bullet_shoot_count ++
		}
	}
	else
	{
		if point_distance(x,y,player.x,player.y) <= 190
		{
		var _bullet_ = instance_create(x,y,gun_bullet_enemy)
		_bullet_.received = 0
		_bullet_.image_angle = t_weapon_angle+180
		_bullet_.direction = t_weapon_angle+180
		_bullet_.image_index = 0
		_bullet_.speed = 9
		_bullet_.depth = depth+1
		_bullet_.image_xscale = 0.32
		_bullet_.image_yscale = 0.32
		_bullet_.own_damage = 2
		bullet_shoot_count ++
		}
	}

	if bullet_shoot_count < 2
	{
	alarm[2] = 10
	}
	else
	{
	bullet_shoot_count = 0
	alarm[2] = 220
	}
}
else
{
alarm[2] = 1
}