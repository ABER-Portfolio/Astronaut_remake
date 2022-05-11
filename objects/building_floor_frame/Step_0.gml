/// @description Insert description here
// You can write your code in this editor
image_speed = 0
move_snap(32, 32);


#region //업그래이드창

if co_op_code.is_server = true
{
	if mouse_check_button(mb_right) && place_meeting(x,y,obj_mouse) && point_distance(x,y,player.x,player.y) < 96
	{
		if global.selected_up_bl = 0
		{
		global.selected_up_bl = 1
			if global.inhand_item = 15 && global.knocked_out = 0 && instance_number(build_selector_ui) = 0 && pl_inhand.cool_time = 0
			{
			var sel = instance_create(x,y,build_selector_ui)
			sel.selector_kind = 1
			sel.get_frame_id = id
			}
		}
	}
	else
	{
	global.selected_up_bl = 0
	}
}
else
{
	if mouse_check_button(mb_right) && place_meeting(x,y,obj_mouse) && point_distance(x,y,player_co_op.x,player_co_op.y) < 96
	{
		if global.selected_up_bl = 0
		{
		global.selected_up_bl = 1
			if global.inhand_item = 15 && global.knocked_out = 0 && instance_number(build_selector_ui) = 0 && pl_inhand_co_op.cool_time = 0
			{
			var sel = instance_create(x,y,build_selector_ui)
			sel.selector_kind = 1
			sel.get_frame_id = id
			}
		}
	}
	else
	{
	global.selected_up_bl = 0
	}
}

#endregion


#region //물 흔들림\

if instance_number(BG_blind) = 0
{
//////////////////////////////////////////////////////////////////////////////////////////////////////


water_shake += (t_water_shake - water_shake)*0.01


angle += (t_angle - angle)/30


if instance_number(obj_water_wave) > 0
{
	if place_meeting(x,0,obj_water_wave)
	{
	t_angle = -(point_distance(water_shake,0,0.42,0))*25
	t_water_shake = 0.55
	}
	else
	{
	t_angle = (point_distance(water_shake,0,0.42,0))*25
	t_water_shake = 0.44
	}
}
else
{
t_water_shake = 0.3
}


if global.biome = 0
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}
if global.biome = 1
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}
if global.biome = 2
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}

if global.biome = 3
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}

if global.biome = 4
{
	alpha1 += (1.1 - alpha1)/15
	alpha2 += (-0.1 - alpha2)/15
	alpha3 += (-0.1 - alpha3)/15
	alpha4 += (-0.1 - alpha4)/15
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
}

#endregion