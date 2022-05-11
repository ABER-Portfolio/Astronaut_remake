/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);
depth = room_width*1.5-y-1



light.x = x
light.y = y
	
light.lightxs = 48
light.lightys = 48
light.lightcol = $FFBEFDFD
light.alpha = 0.7




if co_op_code.is_server = true
{
	if place_meeting(x,y,player) && dilay = 0
	{
		if instance_number(portal_gun_portal1) > 0
		{
		portal_gun_portal1.dilay = 1
		portal_gun_portal1.alarm[1] = 60
		}
		if instance_number(portal_gun_portal2) > 0
		{
		portal_gun_portal2.dilay = 1
		portal_gun_portal2.alarm[1] = 60
		}

			if global.knocked_out = 0 && global.do_not_move = 0
			{
				if instance_number(portal_gun_portal1) > 0
				{
				player.x = portal_gun_portal1.x
				player.y = portal_gun_portal1.y-8
				obj_camera.setting_blind = 1;
				}
			}
	}
}
else
{
	if place_meeting(x,y,player_co_op) && dilay = 0
	{
		if instance_number(portal_gun_portal1) > 0
		{
		portal_gun_portal1.dilay = 1
		portal_gun_portal1.alarm[1] = 60
		}
		if instance_number(portal_gun_portal2) > 0
		{
		portal_gun_portal2.dilay = 1
		portal_gun_portal2.alarm[1] = 60
		}

			if global.knocked_out = 0 && global.do_not_move = 0
			{
				if instance_number(portal_gun_portal1) > 0
				{
				player_co_op.x = portal_gun_portal1.x
				player_co_op.y = portal_gun_portal1.y-8
				obj_camera.setting_blind = 1;
				}
			}
	}
}

image_xscale += (0.35 - image_xscale)/15
image_yscale += (0.35 - image_yscale)/15