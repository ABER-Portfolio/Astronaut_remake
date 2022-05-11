/// @description Insert description here
// You can write your code in this editor

light.x = x
light.y = y
light.x2 = x2
light.y2 = y2
light.width = width
light.self_scaling = self_scaling

scaling_time ++

if scaling_time > 33
{
self_scaling += 0.004
}
else
{
self_scaling -= 0.004
}

if scaling_time >= 66
{
scaling_time = 0
}

depth = -(y2+10)


image_xscale = width*0.4
image_yscale = width*0.55


var max_length = room_width
for(var i = 0; i < max_length; i++)
{
x2 = x + lengthdir_x(i,direction)
y2 = y + lengthdir_y(i,direction)

length_laser = i

	if collision_point(x2,y2,monster_parents,true,0) || collision_point(x2,y2,chest,0,0) || collision_point(x2,y2,block_noclip,true,0)
	{
	var _cm_ = collision_point(x2,y2,monster_parents,true,0)
		if _cm_
		{
		m_damaged(self,5,0,c_white,_cm_,10,10)
			if _cm_.object_index = astronaut_ || _cm_.object_index = green_alien || _cm_.object_index = red_alien
			{
			_cm_.alarm[1] = 1
			}
		}
	break;
	}
	
	if global.n_room > 1 && !collision_point(x2,y2+8,fl_parents,true,0)
	{
	break;
	}
	
	
	if (instance_number(player) > 0 && collision_point(x2,y2,player,true,0) && global.knocked_out <= 0)
	{
	p_damaged(5,true,12,12,true);
	
	break;
	}
	
	if (instance_number(player_co_op) > 0 && collision_point(x2,y2,player_co_op,true,0) && global.knocked_out <= 0)
	{
	p_damaged(5,true,12,12,true);
	
	break;
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
	var _xx = x2 - __view_get( e__VW.XView, 0 )
	var _yy = y2 - __view_get( e__VW.YView, 0 )
	
	draw_set_color($FF5B14EE)
	draw_set_alpha(image_alpha*0.6)
	draw_line_width(_x,_y,_xx,_yy,width*1.4*global.light_scaling*self_scaling)
	draw_set_color($FF5B14EE)
	draw_set_alpha(image_alpha*0.6)
	draw_circle(_xx,_yy,1.9*width*global.light_scaling*self_scaling*0.92,false)


	draw_set_color(c_white)
	draw_set_alpha(image_alpha*0.6)
	draw_line_width(_x,_y,_xx,_yy,width*global.light_scaling*self_scaling*0.5)
	draw_set_color(c_white)
	draw_set_alpha(image_alpha*0.6)
	draw_circle(_xx,_yy,1.5*width*global.light_scaling*self_scaling*0.7,false)

	draw_set_color(c_white)
	draw_set_alpha(image_alpha*0.9)
	draw_line_width(_x,_y,_xx,_yy,width*global.light_scaling*self_scaling*0.27)
	draw_set_color(c_white)
	draw_set_alpha(image_alpha*0.9)
	draw_circle(_xx,_yy,1.5*width*global.light_scaling*self_scaling*0.53,false)
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}
}








