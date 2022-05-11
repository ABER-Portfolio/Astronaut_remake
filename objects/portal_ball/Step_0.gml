/// @description Insert description here
// You can write your code in this editor



x += (t_x - x)/3.5
y += (t_y - y)/3.5
move_towards_point(t_x,t_y,1)
image_angle = point_direction(x,y,t_x,t_y)

if point_distance(x,y,t_x,t_y) < 1
{
	if image_index = 0
	{
		if position_meeting(x,y,fl_parents)
		{
		instance_destroy(portal_gun_portal1)
		p_portal = instance_create(x,y,portal_gun_portal1)
		p_portal.received = 0
			if co_op_code.is_server = true
			{
			p_portal.depth = player.depth
			}
			else
			{
			p_portal.depth = player_co_op.depth
			}
		}
		
		if place_meeting(x,y,portal_gun_portal2)
		{
		instance_destroy(portal_gun_portal2)
		}
		
		if place_meeting(x,y,portal_gun_portal3)
		{
		instance_destroy(portal_gun_portal3)
		}
		
		if place_meeting(x,y,portal_gun_portal4)
		{
		instance_destroy(portal_gun_portal4)
		}
	}
	else if image_index = 1
	{
		if position_meeting(x,y,fl_parents)
		{
		instance_destroy(portal_gun_portal2)
		p_portal = instance_create(x,y,portal_gun_portal2)
		p_portal.received = 0
			if co_op_code.is_server = true
			{
			p_portal.depth = player.depth
			}
			else
			{
			p_portal.depth = player_co_op.depth
			}
		}
		
		if place_meeting(x,y,portal_gun_portal1)
		{
		instance_destroy(portal_gun_portal1)
		}
		
		if place_meeting(x,y,portal_gun_portal3)
		{
		instance_destroy(portal_gun_portal3)
		}
		
		if place_meeting(x,y,portal_gun_portal4)
		{
		instance_destroy(portal_gun_portal4)
		}
	}
	else if image_index = 2
	{
		if position_meeting(x,y,fl_parents)
		{
		instance_destroy(portal_gun_portal3)
		p_portal = instance_create(x,y,portal_gun_portal3)
		p_portal.received = 0
			if co_op_code.is_server = true
			{
			p_portal.depth = player.depth
			}
			else
			{
			p_portal.depth = player_co_op.depth
			}
		}
		
		if place_meeting(x,y,portal_gun_portal1)
		{
		instance_destroy(portal_gun_portal1)
		}
		
		if place_meeting(x,y,portal_gun_portal2)
		{
		instance_destroy(portal_gun_portal2)
		}
		
		if place_meeting(x,y,portal_gun_portal4)
		{
		instance_destroy(portal_gun_portal4)
		}
	}
	else if image_index = 3
	{
		if position_meeting(x,y,fl_parents)
		{
		instance_destroy(portal_gun_portal4)
		p_portal = instance_create(x,y,portal_gun_portal4)
		p_portal.received = 0
			if co_op_code.is_server = true
			{
			p_portal.depth = player.depth
			}
			else
			{
			p_portal.depth = player_co_op.depth
			}
		}
		
		if place_meeting(x,y,portal_gun_portal1)
		{
		instance_destroy(portal_gun_portal1)
		}
		
		if place_meeting(x,y,portal_gun_portal2)
		{
		instance_destroy(portal_gun_portal2)
		}
		
		if place_meeting(x,y,portal_gun_portal3)
		{
		instance_destroy(portal_gun_portal3)
		}
	}
	instance_destroy()
}











if instance_exists(light)
{
	light.x = x
	light.y = y
	
	if image_index = 0
	{
	light.lightcol = $FFFFFFC9
	}
	
	if image_index = 1
	{
	light.lightcol = $FFBEFDFD
	}
	
	if image_index = 2
	{
	light.lightcol = $FFCC6966
	}
	
	if image_index = 3
	{
	light.lightcol = $FF864CFF
	}
}