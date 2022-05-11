/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0
{
		if image_index = 2
		{
		url_open("https://discord.gg/DVxD4VF")
		}

		if image_index = 3
		{
			if des = 0
			{
			game_end()
			}
			else
			{
			main_menu_button.des = -1
			}
			
			with(main_menu_button)
			{
			can_click = 1	
			}
		}

		if image_index = 0
		{
		//instance_create(0,0,BG_blind)
		//BG_title.alarm[3] = 3
		main_menu_title.t_y -= 820
			with(main_menu_button)
			{
				if image_index != 3
				{
				touched = 2
				}
			self.t_y -= 820
			}
			
			with(main_menu_dust)
			{
			self.t_y -= 820
			}
		alarm[1] = 100
		global.now_loading = 1
		}
		
		if image_index = 4
		{
		main_menu_button.des = 1
		
		var button_ =  instance_create(x,y,main_menu_button)
		button_.image_index = 5
		
		var button_ =  instance_create(x+370,y,main_menu_button)
		button_.image_index = 6
		
			with(main_menu_button)
			{
			can_click = 1	
			}
		}
		
		if image_index = 5
		{
		global.co_op_mode = 1
		global.server_open = true
		is_server = true;

		main_menu_title.t_y -= 820
		
			with(main_menu_dust)
			{
			self.t_y -= 820
			}

			with(main_menu_button)
			{
			self.t_y -= 820
			}
			
			if global.character_created = 0
			{
			alarm[1] = 100
			}
			else
			{
			alarm[5] = 100
			alarm[7] = 100
			}
		global.now_loading = 1
		}
		
		
		
		
		
		
		if image_index = 6
		{
			if global.character_created >= 1
			{
			global.co_op_mode = 1
			alarm[9] = 100
			//co_op_code.alarm[2] = 1
			main_menu_title.t_y -= 820

				with(main_menu_button)
				{
				self.t_y -= 820
				}	
				
				with(main_menu_dust)
				{
				self.t_y -= 820
				}
			}
			else
			{
			global.co_op_mode = 1
			main_menu_title.t_y -= 820

				with(main_menu_button)
				{
				self.t_y -= 820
				}
				
				with(main_menu_dust)
				{
				self.t_y -= 820
				}
			alarm[11] = 100
			}
		global.now_loading = 1
		}
		
		
		
		
		

		if image_index = 7
		{
		main_menu_title.alarm[2] = 100
		global.now_loading = 1
		}
		
		if image_index = 11
		{
		global.character_created = 1
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

		main_menu_title.t_y -= 820
		character_creator.t_y -= 820
		character_creator.p_t_x -= 1280
		option_set_nickname.t_y -= 820
		option_charater_s.t_y -= 820
		
			with(main_menu_dust)
			{
			self.t_y -= 820
			}

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
		alarm[5] = 100
		//instance_create(0,0,BG_blind)
		//BG_title.alarm[3] = 3
		//alarm[4] = 1
		}
	global.now_loading = 1
}