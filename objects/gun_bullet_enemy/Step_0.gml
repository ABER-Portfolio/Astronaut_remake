/// @description Insert description here
// You can write your code in this editor


if instance_number(gun_bullet) < 42
{
	for(var i = 0; i < saved_speed; i += 0.1) 
	{
	x += lengthdir_x(i/25,direction)
	y += lengthdir_y(i/25,direction)
	}
}

if global.n_room > 1
{
	if !place_meeting(x,y,fl_parents)
	{
	instance_destroy()
	}
}


if _alpha > 0
{
_alpha -= 0.1
}
if _alpha <= 0.8
{
instance_destroy(light)
}



if image_alpha < 1
{
image_alpha += 0.1
}

if image_alpha >= 0.2
{
instance_destroy(light)
}

if instance_exists(light)
{
	if image_index = 0
	{
	light.lightcol = $FF99EFFF
	}
	
	if image_index = 1
	{
	light.lightcol = $FFFFD699
	}
	
	if image_index = 2
	{
	light.lightcol = $FF9D77EE
	}
	
	if image_index = 3
	{
	light.lightcol = $FF21FFD8
	}
}


if image_index = 10
{
des += 10
}
else
{
des ++
}


if des > 300
{
instance_destroy()
}

if can_des = 1
{
p_damaged(own_damage,false,10,30,false)
	
	if place_meeting(x,y,block_container) || place_meeting(x,y,block_container_vertical) || place_meeting(x,y,Lab_giant_door)
	{
	instance_destroy()
	}


	if global.co_op_mode = 1
	{
		if instance_number(player_co_op) > 0
		{
			if point_distance(player.x,player.y,x,y) >= 640 && point_distance(player_co_op.x,player_co_op.y,x,y) >= 640
			{
			instance_destroy()
			}
		}
	}
	else
	{
		if instance_number(player) > 0
		{
			if point_distance(player.x,player.y,x,y) >= 640
			{
			instance_destroy()
			}
		}
	}
}








if instance_number(BG_blind) = 0
{
	if surface_exists(global.lightsurf)
	{
	surface_set_target(global.lightsurf);
	gpu_set_blendmode(bm_add);
	var _x = x - __view_get( e__VW.XView, 0 )
	var _y = y - __view_get( e__VW.YView, 0 )
	draw_sprite_ext(sprite_index,4,_x,_y,image_xscale,image_yscale,image_angle,c_white, 0.9);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
}

