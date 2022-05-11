/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,bomb_site)
{
t_speed = 0
target_x = x
target_y = y
m_damaged(self,5,50,c_white,self,1,1)
}


if global.co_op_mode = 1
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
if image_index > 3
{
image_index = 0
}

if co_op_code.is_server = true
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}

	image_speed = speed*2.7

	depth = -(y+38*image_yscale)



	if dilay = 0
	{
	speed += (t_speed - speed)*0.066


		if point_distance(speed,0,0,0) <= 0.1
		{
		target_p = player
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
		move_towards_point(target_x,target_y+3,speed)
			if t_speed = 0
			{
			t_speed = irandom_range(7,10)*0.1
			}
		}

		if point_distance(target_x,target_y,x,y) <= 1 && cool_time_cre = 1
		{
		t_speed = 0
		}
	}

	if instance_exists(target_p)
	{
		if x > target_p.x
		{
		image_xscale = abs(image_xscale)
		}
		else
		{
		image_xscale = -abs(image_xscale)
		}
	}









	if sp_dilay = 0
	{
		if !position_meeting(x,y+12,fl_parents) || !position_meeting(x,y-5,fl_parents) || !position_meeting(x+5,y,fl_parents) || !position_meeting(x-5,y,fl_parents) || place_meeting(x,y,block_hole) || place_meeting(x,y,block_noclip)
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
}