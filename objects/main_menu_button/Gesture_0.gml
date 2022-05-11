/// @description Insert description here
// You can write your code in this editor

if touched < 2 && can_click = 1
{
	with(main_menu_button)
	{
	can_click = 0
	}
	
	
	if (des = 0 || image_index = 3)
	{
	image_xscale = 0.8
	image_yscale = 0.8
	step_for_scale_shake = 0
	w_alpha = 1
	touched = 2
	}

	if (des = 0 || image_index = 3)
	{
	console = 0
	alarm[2] = 1
	}

	if des = 1
	{
		if image_index = 5 || image_index = 6 || image_index = 3
		{
		console = 0
		alarm[2] = 1
		}
	}

	if image_index = 10
	{
	global.co_op_mode = 0
		if instance_number(map_select_button) = 0
		{
		global.now_loading = 1
		alarm[3] = 100
		main_menu_title.alarm[0] = 60
		}
		else
		{
		global.now_loading = 1
		alarm[6] = 100
		}
		
	main_menu_title.t_y += 820
	character_creator.t_y += 820
	character_creator.p_t_x += 1280
	option_set_nickname.t_y += 820
	option_charater_s.t_y += 820

	option_goggles_R.t_y += 820
	option_goggles_G.t_y += 820
	option_goggles_B.t_y += 820
	option_suit_R.t_y += 820
	option_suit_G.t_y += 820
	option_suit_B.t_y += 820
	option_o2_tank_R.t_y += 820
	option_o2_tank_G.t_y += 820
	option_o2_tank_B.t_y += 820
	
		if instance_number(map_select_button) > 0
		{
		map_select_button.t_y += 820
		map_select_button.des = 1
		}
		
		with(main_menu_dust)
		{
		self.t_y += 820
		}

		with(main_menu_button)
		{
		self.t_y += 820
		}
	}
	
	
	
	
	
	
	if image_index = 16
	{
	enter_map_name.t_y += 820
	map_select_button.t_y += 820
	map_select_button.des = 1
	with(main_menu_button)
	{
	self.t_y += 820
	}
	
	with(main_menu_dust)
	{
	self.t_y += 820
	}
	main_menu_title.t_y += 820
	map_select_button.alarm[3] = 100
	option_map_size.t_y += 820
	option_island_size.t_y += 820
	character_creator.t_y += 820
	}
	
	
	
	if image_index = 17
	{
	enter_map_name.des = 1
	map_select_button.alarm[5] = 1
	}
	
	
	
	
	
	
	if image_index = 1
	{
	global.co_op_mode = 0

	main_menu_title.t_y -= 820

		with(main_menu_button)
		{
		self.t_y -= 820
		}
		
		with(main_menu_dust)
		{
		self.t_y -= 820
		}
	alarm[5] = 100
	alarm[7] = 100
	global.now_loading = 1
	//instance_create(0,0,BG_blind)
	//BG_title.alarm[3] = 3
	//alarm[4] = 1
	}
	
	
	
	
	
	if image_index = 14
	{
	instance_destroy(option_charater_s)

	instance_destroy(option_goggles_R)
	instance_destroy(option_goggles_G)
	instance_destroy(option_goggles_B)
	instance_destroy(option_suit_R)
	instance_destroy(option_suit_G)
	instance_destroy(option_suit_B)
	instance_destroy(option_o2_tank_R)
	instance_destroy(option_o2_tank_G)
	instance_destroy(option_o2_tank_B)
	
	global.co_op_mode = 1
	global.n_room = 1
	instance_create(0,0,BG_blind);
	instance_destroy(blinding)
	co_op_code.alarm[5] = 1;
	alarm[10] = 100
	global.now_loading = 1
	}
	
	
	
	
	
	if image_index = 15
	{
	global.character_created = 1
	global.co_op_mode = 0
	
	if global.nickname = "???"
	{
	global.hazmat = irandom_range(0,4)
	}
	
	if global.nickname = "ABER" || global.nickname = "시발"
	{
	inventory_item_add(item2,irandom_range(3,12),0)
	}
	
	if global.nickname = "GMS2"
	{
	inventory_item_add(item1,irandom_range(3,12),0)
	}
	
	inventory_item_add(item40001,1,0)
	inventory_item_add(item10001,1,0)
	inventory_item_add(item60001,1,0)
	

	main_menu_title.t_y -= 820
	character_creator.t_y -= 820
	character_creator.p_t_x -= 1280
	option_set_nickname.t_y -= 820
	option_charater_s.t_y -= 820

	option_goggles_R.t_y -= 820
	option_goggles_G.t_y -= 820
	option_goggles_B.t_y -= 820
	option_suit_R.t_y -= 820
	option_suit_G.t_y -= 820
	option_suit_B.t_y -= 820
	option_o2_tank_R.t_y -= 820
	option_o2_tank_G.t_y -= 820
	option_o2_tank_B.t_y -= 820
		
		with(main_menu_button)
		{
		self.t_y -= 820
		}
		
		with(main_menu_dust)
		{
		self.t_y -= 820
		}
	alarm[9] = 100
	global.now_loading = 1
	//instance_create(0,0,BG_blind)
	//BG_title.alarm[3] = 3
	//alarm[4] = 1
	}
	
	
	
	
	

	if image_index = 13
	{
	global.co_op_mode = 0
	main_menu_title.alarm[0] = 60
	alarm[6] = 100
	alarm[3] = 100
	alarm[8] = 90
	global.now_loading = 1
	
	var _bai_ = 1
	if instance_number(character_creator) > 0
	{
	_bai_ = 2
	}

	main_menu_title.t_y += 820*_bai_
	
	
	if _bai_ = 2
	{
	character_creator.t_y += 820*_bai_
	character_creator.p_t_x += 1280*_bai_
	option_set_nickname.t_y += 820*_bai_
	option_charater_s.t_y += 820*_bai_

	option_goggles_R.t_y += 820*_bai_
	option_goggles_G.t_y += 820*_bai_
	option_goggles_B.t_y += 820*_bai_
	option_suit_R.t_y += 820*_bai_
	option_suit_G.t_y += 820*_bai_
	option_suit_B.t_y += 820*_bai_
	option_o2_tank_R.t_y += 820*_bai_
	option_o2_tank_G.t_y += 820*_bai_
	option_o2_tank_B.t_y += 820*_bai_
	}
	
	if instance_number(enter_ip) > 0
	{
	enter_ip.t_y += 820*_bai_
	enter_port.t_y += 820*_bai_
	}
	
	with(main_menu_dust)
	{
	self.t_y += 820*_bai_
	}
	
		if instance_number(map_select_button) > 0
		{
		map_select_button.t_y += 820*_bai_
		map_select_button.des = 1
		}

		with(main_menu_button)
		{
		self.t_y += 820*_bai_
		}
	}
}