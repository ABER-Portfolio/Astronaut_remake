/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
t_speed = 0
target_x = x
target_y = y
m_damaged(self,5,50,c_white,self,1,1)
}




if global.co_op_mode = 0
{
	if global.knocked_out > 0 && global.knocked_out_co_op > 0 && global.knocked_out_origin > 0
	{
		if obj_camera.draw_time_left_alpha >= 1
		{
		instance_destroy()
		}
	}
}
else
{
	if global.knocked_out > 0
	{
		if obj_camera.draw_time_left_alpha >= 1
		{
		instance_destroy()
		}
	}
}




hp_t += (hp - hp_t)*0.1

if instance_exists(light)
{
light.x = x
light.y = y
light.lightxs = 96
light.lightys = 96
light.lightcol = $ffffff
light.alpha = 0.7
}

if co_op_code.is_server = true
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}

	image_speed = speed*2.7

	depth = -(y+17)




	speed += (t_speed - speed)*0.066

	if found_human = 1
	{
		if dilay = 0
		{
			if point_distance(speed,0,0,0) <= 0.1
			{

			var p_1 = point_distance(x,y,player.x,player.y)
				if global.co_op_mode = true
				{
				var p_2 = point_distance(x,y,player_co_op.x,player_co_op.y)
					if p_1 < p_2
					{
					target_p = player
						if global.knocked_out_origin > 0
						{
						target_p = player_co_op
						}
					}
					else
					{
					target_p = player_co_op
						if global.knocked_out_co_op > 0
						{
						target_p = player
						}
					}
				}
				else
				{
				target_p = player
				}


			if instance_exists(target_p)
			{
			target_x = target_p.x
			target_y = target_p.y
			}
			else
			{
			target_x = x
			target_y = y
			}


			image_index = 0
			move_towards_point(target_x,target_y,speed)
			t_speed = 1.5
			}

			if point_distance(target_x,target_y,x,y) <= 1
			{
			t_speed = 0
			}
		}
	}








	if sp_dilay = 0
	{
		if !position_meeting(x,y+12,fl_parents) || !position_meeting(x,y-5,fl_parents) || !position_meeting(x+5,y,fl_parents) || !position_meeting(x-5,y,fl_parents) || place_meeting(x,y,block_hole) || place_meeting(x,y,block_noclip) || place_meeting(x,y,monster_parents)
		{
			var px_dis = point_distance(target_x,0,x,0)
			var py_dis = point_distance(target_y,0,y,0)
			if px_dis < py_dis
			{
			vspeed = -(vspeed/2)
			hspeed = -(hspeed/1.5)
			}
			else
			{
			vspeed = -(vspeed/1.5)
			hspeed = -(hspeed/2)
			}
		sp_dilay = 1
		alarm[11] = 5
		}
	}

	if dilay = 2
	{
	dilay = 0
	}




	if global.killed_scientist >= 1
	{
	found_human = 1
		if global.co_op_mode = true
		{
			if point_distance(x,y,player.x,player.y) <= 128 || point_distance(x,y,player_co_op.x,player_co_op.y) <= 128 || global.killed_scientist = 1
			{
			var target__ = choose(player,player_co_op)
			target_x = target__.x
			target_y = target__.y
			}
		}
		else
		{
			if point_distance(x,y,player.x,player.y) <= 128 || global.killed_scientist = 1
			{
			target_x = player.x
			target_y = player.y
			}
		}
	}




	if target_p != noone
	{
	var angle_ = 360+point_direction(target_p.x,target_p.y+5,x,y)
	t_weapon_angle = angle_

		if angle_ > 450 && angle_ <= 630
		{
		image_xscale = abs(image_xscale)*(-1)
		gun_yscale = -0.3
		}
		else
		{
		image_xscale = abs(image_xscale)
		gun_yscale = 0.3
		}
	}

	if found_human = 0
	{
		if point_distance(speed,0,0,0) <= 0.1
		{
		image_index = 0
		}
	}
}