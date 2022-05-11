/// @description Insert description here
// You can write your code in this editor


if flower_boss_created = 0 && co_op_code.is_server = true && global.n_room <= 1 && instance_number(player) > 0 && instance_number(creating_maps) = 0
{
	if global.flower_boss_x != -1 && global.flower_boss_killed = 0 && instance_number(creating_maps) = 0 && instance_number(player) > 0 && global.black_blind = 0
	{
		if instance_number(flower_boss) = 0 && instance_number(creating_maps) = 0
		{
		flower_boss_created = 1
		var mob_ = instance_create(global.flower_boss_x,global.flower_boss_y,flower_boss)
		mob_.received = 1
		}
	}
}


if co_op_code.is_server = true && global.n_room <= 1 && instance_number(player) > 0 && instance_number(creating_maps) = 0
{
automatic_all_ore_respawn ++
automatic_stone_respawn ++


	if automatic_all_ore_respawn > max_automatic_all_ore_respawn
	{
	
	
		if global.saving_data >= 30
		{
		var ore_created = 0
			for(var i = 0; i < irandom_range(200,350); i++)
			{
			randomize()
			var random_x = (irandom_range(0,room_width/32)*32)
			var random_y = (irandom_range(0,room_width/32)*32)
	
				if position_meeting(x+random_x,y+random_y,fl_parents) && !place_meeting(x+random_x,y+random_y,all_blocks_parents) && !place_meeting(x+random_x,y+random_y,monster_parents) && !place_meeting(x+random_x,y+random_y,player) && !place_meeting(x+random_x,y+random_y,player_co_op)
				{
				var c_ore = instance_create(x+random_x,y+random_y,block_ore)
				ore_setting(c_ore)
				c_ore.block_num = -1
				c_ore.received = 0
				ore_created ++
				}
				
				if ore_created > 64
				{
				break;
				}
			}
			
		if global.dev_mode > 1
		{
		show_message("Total created : "+string(ore_created))
		}
		automatic_all_ore_respawn = 0
		max_automatic_all_ore_respawn = irandom_range(20800,35000)
		}
	}
	
	if automatic_stone_respawn > max_automatic_stone_respawn
	{
	var ore_created = 0
		for(var i = 0; i < choose(5,5,5,5,6,6,6,6,7,7,7,8,8,8); i++)
		{
		randomize()
		var random_x = floor((room_width/32)*0.5)+(irandom_range(-10,10)*32)
		var random_y = floor((room_height/32)*0.5)+(irandom_range(-10,10)*32)

			if position_meeting(x+random_x,y+random_y,fl_parents) && !place_meeting(x+random_x,y+random_y,all_blocks_parents) && !place_meeting(x+random_x,y+random_y,monster_parents) && !place_meeting(x+random_x,y+random_y,player) && !place_meeting(x+random_x,y+random_y,player_co_op)
			{
			var c_ore = instance_create(x+random_x,y+random_y,block_ore)
			c_ore.stone_color = 5
			c_ore.item_num = choose(0,7,8,7,7,7,8,0)
			c_ore.block_num = -1
			c_ore.received = 0
			ore_created ++
			}
		}
	
	if global.dev_mode > 1
	{
	show_message("Total created : "+string(ore_created))
	}
	automatic_stone_respawn = 0
	max_automatic_stone_respawn = irandom_range(10800,15000)
	}
}









if instance_number(player) > 0 && co_op_code.is_server = true && instance_number(creating_maps) = 0 && global.flower_boss_raid_start = 0
{
	if global.n_room <= 1
	{
		if global.npc_event[97] = 5
		{
		monster_create_cooltime += 3
		monster_create_cooltime_cp += 3
		}
		else
		{
		monster_create_cooltime += 1 + global.in_monument_now
		monster_create_cooltime_cp += 1 + global.in_monument_now_co_op
		}
		
			var _cheking_cool_time_owner = 0
			var _cheking_max_cool_time_owner = 0
			var max_mob_num_owner = 0
			for(var i = 0; i < 1; i++)
			{
			_cheking_cool_time_owner[i] = 0
			_cheking_max_cool_time_owner[i] = 0
			max_mob_num_owner[i] = 0
			}
			_cheking_cool_time_owner[0] = monster_create_cooltime
			_cheking_max_cool_time_owner[0] = max_monster_create_cooltime
			max_mob_num_owner[0] = max_mob_num
			_cheking_cool_time_owner[1] = monster_create_cooltime_cp
			_cheking_max_cool_time_owner[1] = max_monster_create_cooltime_cp
			max_mob_num_owner[1] = max_mob_num_cp
			
			for(var i = 0; i < 1; i++)
			{
				move_snap(32,32);
				if instance_number(player) > 0
				{
				var target_ = player
					if global.co_op_mode = 1
					{
						if i = 1
						{
						target_ = player_co_op
						}
					}
				x = target_.x
				y = target_.y
				}
				move_snap(32,32);
				
				var can_spawn = 1
				if i = 0 && global.safe_zone_origin = 1
				{
				can_spawn = 0
				monster_create_cooltime = 0
				}
				if i = 1 && global.safe_zone_co_op = 1
				{
				can_spawn = 0
				monster_create_cooltime_cp = 0
				}
				
				
				if _cheking_cool_time_owner[i] > _cheking_max_cool_time_owner[i] && can_spawn = 1
				{
				var biome = global.biome_real
			
				randomize()
				repeat(max_mob_num_owner[i]-choose(0,0,0,0,1,1,1,1,2))
				{
				var random_mob = percentage_k(85)
				var repeat_time = 0
					repeat(9999)
					{
					repeat_time ++
					randomize()
					var random_x = choose(-6,-5,-4,-3,3,4,5,6)
					var random_y = choose(-6,-5,-4,-3,3,4,5,6)
				
						if repeat_time > 128
						{
						var random_x = irandom_range(-6,6)
						var random_y = irandom_range(-6,6)
						}
			
						if position_meeting(x+random_x*32,y+random_y*32,fl_parents)
						{
						break;
						}
					}
			
				if biome = "normal"
				{
				random_mob = 1
				}
				
				var _random_cre_outlaw = 0
				if global.survived_days >= 5
				{
				_random_cre_outlaw = percentage_k(30)
				}
				
					if _random_cre_outlaw = 1
					{
					random_mob = -1
					
						if global.survived_days >= 5 && global.survived_days < 12
						{
						var _mob = instance_create(x+random_x*32,y+random_y*32,choose(outlaw_with_low_quality_melee,outlaw_bow))
						_mob.received = 0
						}
						
						if global.survived_days >= 12 && global.survived_days < 17
						{
						var _mob = instance_create(x+random_x*32,y+random_y*32,choose(outlaw_with_low_quality_melee,outlaw_with_high_quality_melee,outlaw_bow))
						_mob.received = 0
						}
						
						if global.survived_days >= 17 && global.survived_days < 23
						{
						var _mob = instance_create(x+random_x*32,y+random_y*32,choose(outlaw_with_low_quality_melee,outlaw_with_high_quality_melee,outlaw_bow,outlaw_low_quality_gun))
						_mob.received = 0
						}
						
						if global.survived_days >= 23 && global.survived_days < 28
						{
						var _mob = instance_create(x+random_x*32,y+random_y*32,choose(outlaw_with_low_quality_melee,outlaw_with_high_quality_melee,outlaw_bow,outlaw_low_quality_gun,outlaw_medium_quality_gun))
						_mob.received = 0
						}
						
						if global.survived_days >= 28
						{
						var _mob = instance_create(x+random_x*32,y+random_y*32,choose(outlaw_with_low_quality_melee,outlaw_with_high_quality_melee,outlaw_bow,outlaw_low_quality_gun,outlaw_medium_quality_gun,outlaw_high_quality_gun))
						_mob.received = 0
						}
					}
			
					if random_mob = 1
					{
					var _mob = instance_create(x+random_x*32,y+random_y*32,slime)
					_mob.received = 0
					}
					else
					{
						if random_mob != -1
						{
							if biome = "bloody" || biome = "bloody_ice"
							{
							var _mob = instance_create(x+random_x*32,y+random_y*32,choose(skeleton_flame,skeleton_with_bone,skeleton_with_bone,skeleton_with_bone))
							_mob.received = 0
							}
					
							if biome = "polluted" || biome = "polluted_ice"
							{
							var _mob = instance_create(x+random_x*32,y+random_y*32,choose(worm_small_head,tiny_slime,tiny_slime))
							_mob.received = 0
							}
					
							if biome = "bloody_desert" || biome = "polluted_desert" || biome = "desert"
							{
							var _mob = instance_create(x+random_x*32,y+random_y*32,choose(skeleton_with_bone,skeleton_with_bone,skeleton,skeleton,skeleton,skeleton_flame))
							_mob.received = 0
							}
					
							if biome = "ice"
							{
							var _mob = instance_create(x+random_x*32,y+random_y*32,choose(slime,slime,tiny_slime,tiny_slime,slime))
							_mob.received = 0
							}
						}
					}
				}
				
				randomize()
					if i = 0
					{
					monster_create_cooltime = 0
					max_monster_create_cooltime = irandom_range(10800,15000)
					}
					else
					{
					monster_create_cooltime_cp = 0
					max_monster_create_cooltime_cp = irandom_range(10800,15000)
					}
				}
			}
	}





	if global.n_room = 2
	{
	monster_create_cooltime ++
	monster_create_cooltime_cp ++
		
			var _cheking_cool_time_owner = 0
			var _cheking_max_cool_time_owner = 0
			var max_mob_num_owner = 0
			for(var i = 0; i < 1; i++)
			{
			_cheking_cool_time_owner[i] = 0
			_cheking_max_cool_time_owner[i] = 0
			max_mob_num_owner[i] = 0
			}
			_cheking_cool_time_owner[0] = monster_create_cooltime
			_cheking_max_cool_time_owner[0] = max_monster_create_cooltime
			max_mob_num_owner[0] = max_mob_num
			_cheking_cool_time_owner[1] = monster_create_cooltime_cp
			_cheking_max_cool_time_owner[1] = max_monster_create_cooltime_cp
			max_mob_num_owner[1] = max_mob_num_cp
			
			for(var i = 0; i < 1; i++)
			{
				move_snap(32,32);
				if instance_number(player) > 0
				{
				var target_ = player
					if global.co_op_mode = 1
					{
						if i = 1
						{
						target_ = player_co_op
						}
					}
				x = target_.x
				y = target_.y
				}
				move_snap(32,32);
				
				
				var can_spawn = 1
				if i = 0 && global.safe_zone_origin = 1
				{
				can_spawn = 0
				monster_create_cooltime = 0
				}
				if i = 1 && global.safe_zone_co_op = 1
				{
				can_spawn = 0
				monster_create_cooltime_cp = 0
				}
				
				if _cheking_cool_time_owner[i] > _cheking_max_cool_time_owner[i] && can_spawn = 1
				{
				var biome = global.biome_real
			
				randomize()
				repeat(max_mob_num_owner[i]-choose(0,0,0,0,1,1,1,1,2))
				{
				randomize()
				var random_mob = percentage_k(60)
					if random_mob = 1
					{
					randomize()
					var random_x = choose(-10,-9,-8,-7,7,8,9,10)
					var random_y = choose(-10,-9,-8,-7,7,8,9,10)
			

					var _mob = instance_create(x+random_x*32,y+random_y*32,bat)
					_mob.received = 0
					}
					else
					{
					var repeat_time = 0
						repeat(9999)
						{
						repeat_time ++
						randomize()
						var random_x = choose(-6,-5,-4,-3,3,4,5,6)
						var random_y = choose(-6,-5,-4,-3,3,4,5,6)
						
							if repeat_time > 128
							{
							var random_x = irandom_range(-6,6)
							var random_y = irandom_range(-6,6)
							}
					
							if position_meeting(x+random_x*32,y+random_y*32,fl_parents)
							{
							break;
							}
						}
			

					var _mob = instance_create(x+random_x*32,y+random_y*32,choose(slime,slime,slime,tiny_slime))
					_mob.received = 0
					}
				}
				
				randomize()
					if i = 0
					{
					monster_create_cooltime = 0
					max_monster_create_cooltime = irandom_range(10800,15000)
					}
					else
					{
					monster_create_cooltime_cp = 0
					max_monster_create_cooltime_cp = irandom_range(10800,15000)
					}
				}
			}
	}
}