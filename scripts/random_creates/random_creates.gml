///@param chest_x
///@param chest_y


var _cre_x = argument0
var _cre_y = argument1

if !position_meeting(_cre_x,_cre_y,all_blocks_parents)
{
	if global.cave_floor = 0
	{
	var chest_ = instance_create(_cre_x,_cre_y,chest);
	chest_.received = 0
	chest_.locked = 1
	chest_.image_index = 1
	if position_meeting(_cre_x,_cre_y,floor_pl2)
	{
	chest_.image_index = 9
	}

	if position_meeting(_cre_x,_cre_y,floor_pl3)
	{
	chest_.image_index = 7
	}


	for(var i = 0; i < 14; i++)
	{
	chest_.chest_item[i] = noone;
	chest_.chest_item_num[i] = -1;
	};


	var now_item_slot_num = 0

	//주괴
	var random_item = percentage_k(50)
		if random_item = 1
		{
		var random_item_kind = choose(1,2,3,4,5)
			if random_item_kind = 1
			{
			chest_.chest_item[now_item_slot_num] = item2
			chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
			now_item_slot_num ++
			}
		
			if random_item_kind = 2
			{
			chest_.chest_item[now_item_slot_num] = item4
			chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
			now_item_slot_num ++
			}
		
			if random_item_kind = 3
			{
			chest_.chest_item[now_item_slot_num] = item6
			chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
			now_item_slot_num ++
			}
		
			if random_item_kind = 4
			{
			chest_.chest_item[now_item_slot_num] = item8
			chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
			now_item_slot_num ++
			}
		
			if random_item_kind = 5
			{
			chest_.chest_item[now_item_slot_num] = item44
			chest_.chest_item_num[now_item_slot_num] = irandom_range(1,3)
			now_item_slot_num ++
			}
		}
	
	
	//포션
	var random_item = percentage_k(50)
		if random_item = 1
		{
		var random_item_kind = choose(1,2,3,4,5)
			if random_item_kind = 1
			{
			chest_.chest_item[now_item_slot_num] = item20002
			chest_.chest_item_num[now_item_slot_num] = irandom_range(1,4)
			now_item_slot_num ++
			}
		
			if random_item_kind = 2
			{
			chest_.chest_item[now_item_slot_num] = item200019
			chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
			now_item_slot_num ++
			}
		
			if random_item_kind = 3
			{
			chest_.chest_item[now_item_slot_num] = item200017
			chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
			now_item_slot_num ++
			}
		
			if random_item_kind = 4
			{
			chest_.chest_item[now_item_slot_num] = item20004
			chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
			now_item_slot_num ++
			}
		
			if random_item_kind = 5
			{
			chest_.chest_item[now_item_slot_num] = item20006
			chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
			now_item_slot_num ++
			}
		}
	
	
	
	//도구
	var random_item = percentage_k(5)
		if random_item = 1
		{
		var random_item_kind = choose(1,2,3,4,5)
			if random_item_kind = 1
			{
			chest_.chest_item[now_item_slot_num] = item10001
			chest_.chest_item_num[now_item_slot_num] = 1
			now_item_slot_num ++
			}
		
			if random_item_kind = 2
			{
			chest_.chest_item[now_item_slot_num] = item10002
			chest_.chest_item_num[now_item_slot_num] = 1
			now_item_slot_num ++
			}
		
			if random_item_kind = 3
			{
			chest_.chest_item[now_item_slot_num] = item100022
			chest_.chest_item_num[now_item_slot_num] = 1
			now_item_slot_num ++
			}
		
			if random_item_kind = 4
			{
			chest_.chest_item[now_item_slot_num] = item100036
			chest_.chest_item_num[now_item_slot_num] = 1
			now_item_slot_num ++
			}
		
			if random_item_kind = 5
			{
			chest_.chest_item[now_item_slot_num] = item100050
			chest_.chest_item_num[now_item_slot_num] = 1
			now_item_slot_num ++
			}
		}
	}
	else
	{
		if global.n_room > 1 && global.n_room < 3
		{
			if global.cave_floor < 4
			{
			var chest_ = instance_create(_cre_x,_cre_y,chest);
			chest_.received = 0
			chest_.locked = 1
			chest_.image_index = choose(3,5)
			for(var i = 0; i < 14; i++)
			{
			chest_.chest_item[i] = noone;
			chest_.chest_item_num[i] = -1;
			};
		
		
			var now_item_slot_num = 0

			//주괴
			var random_item = percentage_k(50)
				if random_item = 1
				{
				var random_item_kind = choose(1,2,3,4,5,6,7,8)
					if random_item_kind = 1
					{
					chest_.chest_item[now_item_slot_num] = item4
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 2
					{
					chest_.chest_item[now_item_slot_num] = item6
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 3
					{
					chest_.chest_item[now_item_slot_num] = item8
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 4
					{
					chest_.chest_item[now_item_slot_num] = item12
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 5
					{
					chest_.chest_item[now_item_slot_num] = item36
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 6
					{
					chest_.chest_item[now_item_slot_num] = item44
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 7
					{
					chest_.chest_item[now_item_slot_num] = item55
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 8
					{
					chest_.chest_item[now_item_slot_num] = item56
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
				}
	
	
	
			//포션
			var random_item = percentage_k(50)
				if random_item = 1
				{
				var random_item_kind = choose(1,2,3,4,5,6)
					if random_item_kind = 1
					{
					chest_.chest_item[now_item_slot_num] = item20002
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,4)
					now_item_slot_num ++
					}
		
					if random_item_kind = 2
					{
					chest_.chest_item[now_item_slot_num] = item200019
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 3
					{
					chest_.chest_item[now_item_slot_num] = item200017
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 4
					{
					chest_.chest_item[now_item_slot_num] = item200013
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 5
					{
					chest_.chest_item[now_item_slot_num] = item200011
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 6
					{
					chest_.chest_item[now_item_slot_num] = item200010
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
				}
	
	
	
			//도구
			var random_item = percentage_k(13)
				if random_item = 1
				{
				var random_item_kind = choose(1,2,3,4,5)
					if random_item_kind = 1
					{
					chest_.chest_item[now_item_slot_num] = item100046
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 2
					{
					chest_.chest_item[now_item_slot_num] = item100047
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 3
					{
					chest_.chest_item[now_item_slot_num] = item100048
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 4
					{
					chest_.chest_item[now_item_slot_num] = item100049
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 5
					{
					chest_.chest_item[now_item_slot_num] = item100017
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
				}
			}
			else
			{
			var chest_ = instance_create(_cre_x,_cre_y,chest);
			chest_.received = 0
			chest_.locked = 1
			chest_.image_index = choose(3,5)
			for(var i = 0; i < 14; i++)
			{
			chest_.chest_item[i] = noone;
			chest_.chest_item_num[i] = -1;
			};
		
			var now_item_slot_num = 0

			//주괴
			var random_item = percentage_k(50)
				if random_item = 1
				{
				var random_item_kind = choose(1,2,3,4,5,6,7,8,9,10)
					if random_item_kind = 1
					{
					chest_.chest_item[now_item_slot_num] = item4
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 2
					{
					chest_.chest_item[now_item_slot_num] = item6
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 3
					{
					chest_.chest_item[now_item_slot_num] = item8
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 4
					{
					chest_.chest_item[now_item_slot_num] = item12
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 5
					{
					chest_.chest_item[now_item_slot_num] = item34
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 6
					{
					chest_.chest_item[now_item_slot_num] = item36
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 7
					{
					chest_.chest_item[now_item_slot_num] = item44
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 8
					{
					chest_.chest_item[now_item_slot_num] = item55
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
		
					if random_item_kind = 9
					{
					chest_.chest_item[now_item_slot_num] = item56
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
			
					if random_item_kind = 10
					{
					chest_.chest_item[now_item_slot_num] = item10
					chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
					now_item_slot_num ++
					}
				}
	
	
	
			//포션
			var random_item = percentage_k(50)
				if random_item = 1
				{
				var random_item_kind = choose(1,2,3,4,5,6,7,8,9)
					if random_item_kind = 1
					{
					chest_.chest_item[now_item_slot_num] = item20002
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,4)
					now_item_slot_num ++
					}
		
					if random_item_kind = 2
					{
					chest_.chest_item[now_item_slot_num] = item200019
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 3
					{
					chest_.chest_item[now_item_slot_num] = item200017
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 4
					{
					chest_.chest_item[now_item_slot_num] = item200013
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 5
					{
					chest_.chest_item[now_item_slot_num] = item200011
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
		
					if random_item_kind = 6
					{
					chest_.chest_item[now_item_slot_num] = item200010
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
			
					if random_item_kind = 7
					{
					chest_.chest_item[now_item_slot_num] = item200012
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
			
					if random_item_kind = 8
					{
					chest_.chest_item[now_item_slot_num] = item200018
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
			
					if random_item_kind = 9
					{
					chest_.chest_item[now_item_slot_num] = item200016
					chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
					now_item_slot_num ++
					}
				}
	
	
	
			//도구
			var random_item = percentage_k(13)
				if random_item = 1
				{
				var random_item_kind = choose(1,2,3,4,5,6,7,8,9,10,11,12)
					if random_item_kind = 1
					{
					chest_.chest_item[now_item_slot_num] = item100046
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 2
					{
					chest_.chest_item[now_item_slot_num] = item100047
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 3
					{
					chest_.chest_item[now_item_slot_num] = item100048
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 4
					{
					chest_.chest_item[now_item_slot_num] = item100049
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
		
					if random_item_kind = 5
					{
					chest_.chest_item[now_item_slot_num] = item100017
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
			
					if random_item_kind = 6
					{
					chest_.chest_item[now_item_slot_num] = item100037
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
			
					if random_item_kind = 7
					{
						if create_cave.cave_biome != 13
						{
						chest_.chest_item[now_item_slot_num] = item100038
						chest_.chest_item_num[now_item_slot_num] = 1
						now_item_slot_num ++
						}
						else
						{
						chest_.chest_item[now_item_slot_num] = item100039
						chest_.chest_item_num[now_item_slot_num] = 1
						now_item_slot_num ++
						}
					}
			
					if random_item_kind = 8
					{
					chest_.chest_item[now_item_slot_num] = item100040
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
			
					if random_item_kind = 9
					{
					chest_.chest_item[now_item_slot_num] = item100041
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
			
					if random_item_kind = 10
					{
						if create_cave.cave_biome != 12
						{
						chest_.chest_item[now_item_slot_num] = item100042
						chest_.chest_item_num[now_item_slot_num] = 1
						now_item_slot_num ++
						}
						else
						{
						chest_.chest_item[now_item_slot_num] = item100043
						chest_.chest_item_num[now_item_slot_num] = 1
						now_item_slot_num ++
						}
					}
			
					if random_item_kind = 11
					{
					chest_.chest_item[now_item_slot_num] = item100045
					chest_.chest_item_num[now_item_slot_num] = 1
					now_item_slot_num ++
					}
			
					if random_item_kind = 12
					{
						if create_cave.cave_biome != 13
						{
						chest_.chest_item[now_item_slot_num] = item100046
						chest_.chest_item_num[now_item_slot_num] = 1
						now_item_slot_num ++
						}
						else
						{
						chest_.chest_item[now_item_slot_num] = item10009
						chest_.chest_item_num[now_item_slot_num] = 1
						now_item_slot_num ++
						}
					}
				}
			}
		}
		else if global.n_room > 2 && global.n_room < 4
		{
		var chest_ = instance_create(_cre_x,_cre_y,chest);
		chest_.received = 0
		chest_.locked = 1
		chest_.image_index = 13
		for(var i = 0; i < 14; i++)
		{
		chest_.chest_item[i] = noone;
		chest_.chest_item_num[i] = -1;
		};
	
		var now_item_slot_num = 0

		//주괴
		var random_item = percentage_k(68)
			if random_item = 1
			{
			var random_item_kind = choose(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
				if random_item_kind = 1
				{
				chest_.chest_item[now_item_slot_num] = item4
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
	
				if random_item_kind = 2
				{
				chest_.chest_item[now_item_slot_num] = item6
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
	
				if random_item_kind = 3
				{
				chest_.chest_item[now_item_slot_num] = item8
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
	
				if random_item_kind = 4
				{
				chest_.chest_item[now_item_slot_num] = item12
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
	
				if random_item_kind = 5
				{
				chest_.chest_item[now_item_slot_num] = item36
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
	
				if random_item_kind = 6
				{
				chest_.chest_item[now_item_slot_num] = item44
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
	
				if random_item_kind = 7
				{
				chest_.chest_item[now_item_slot_num] = item55
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
	
				if random_item_kind = 8
				{
				chest_.chest_item[now_item_slot_num] = item56
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 9
				{
				chest_.chest_item[now_item_slot_num] = item2
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 10
				{
				chest_.chest_item[now_item_slot_num] = item14
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 11
				{
				chest_.chest_item[now_item_slot_num] = item20
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 12
				{
				chest_.chest_item[now_item_slot_num] = item22
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 13
				{
				chest_.chest_item[now_item_slot_num] = item26
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 14
				{
				chest_.chest_item[now_item_slot_num] = item28
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 15
				{
				chest_.chest_item[now_item_slot_num] = item30
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			
				if random_item_kind = 16
				{
				chest_.chest_item[now_item_slot_num] = item32
				chest_.chest_item_num[now_item_slot_num] = irandom_range(3,10)
				now_item_slot_num ++
				}
			}



		//포션
		var random_item = percentage_k(58)
			if random_item = 1
			{
			var random_item_kind = choose(1,2,3,4,5,6,7,8,9)
				if random_item_kind = 1
				{
				chest_.chest_item[now_item_slot_num] = item20002
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,4)
				now_item_slot_num ++
				}
	
				if random_item_kind = 2
				{
				chest_.chest_item[now_item_slot_num] = item200019
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
	
				if random_item_kind = 3
				{
				chest_.chest_item[now_item_slot_num] = item200017
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
	
				if random_item_kind = 4
				{
				chest_.chest_item[now_item_slot_num] = item200013
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
	
				if random_item_kind = 5
				{
				chest_.chest_item[now_item_slot_num] = item200011
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
	
				if random_item_kind = 6
				{
				chest_.chest_item[now_item_slot_num] = item200010
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
			
				if random_item_kind = 7
				{
				chest_.chest_item[now_item_slot_num] = item200014
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
			
				if random_item_kind = 8
				{
				chest_.chest_item[now_item_slot_num] = item200015
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
			
				if random_item_kind = 9
				{
				chest_.chest_item[now_item_slot_num] = item20008
				chest_.chest_item_num[now_item_slot_num] = irandom_range(1,2)
				now_item_slot_num ++
				}
			}



		//도구
		var random_item = percentage_k(23)
			if random_item = 1
			{
			var random_item_kind = choose(1,2,3,4,5,6,7,8,9,10,11)
				if random_item_kind = 1
				{
				chest_.chest_item[now_item_slot_num] = item100011
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
				}
	
				if random_item_kind = 2
				{
				chest_.chest_item[now_item_slot_num] = item100012
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
				}
	
				if random_item_kind = 3
				{
				chest_.chest_item[now_item_slot_num] = item100015
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
				}
	
				if random_item_kind = 4
				{
				chest_.chest_item[now_item_slot_num] = item100017
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
				}
	
				if random_item_kind = 5
				{
				chest_.chest_item[now_item_slot_num] = item100065
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
			
				chest_.chest_item[now_item_slot_num] = item42
				chest_.chest_item_num[now_item_slot_num] = irandom_range(25,50)
				now_item_slot_num ++
				}
			
				if random_item_kind = 6
				{
				chest_.chest_item[now_item_slot_num] = item100066
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
			
				chest_.chest_item[now_item_slot_num] = item42
				chest_.chest_item_num[now_item_slot_num] = irandom_range(25,50)
				now_item_slot_num ++
				}
			
				if random_item_kind = 7
				{
				chest_.chest_item[now_item_slot_num] = item100067
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
			
				chest_.chest_item[now_item_slot_num] = item42
				chest_.chest_item_num[now_item_slot_num] = irandom_range(25,50)
				now_item_slot_num ++
				}
			
				if random_item_kind = 8
				{
				chest_.chest_item[now_item_slot_num] = item100068
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
			
				chest_.chest_item[now_item_slot_num] = item42
				chest_.chest_item_num[now_item_slot_num] = irandom_range(25,50)
				now_item_slot_num ++
				}
			
				if random_item_kind = 9
				{
				chest_.chest_item[now_item_slot_num] = item100069
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
			
				chest_.chest_item[now_item_slot_num] = item41
				chest_.chest_item_num[now_item_slot_num] = irandom_range(25,50)
				now_item_slot_num ++
				}
			
				if random_item_kind = 10
				{
				chest_.chest_item[now_item_slot_num] = item100076
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
				}
			
				if random_item_kind = 11
				{
				chest_.chest_item[now_item_slot_num] = item100072
				chest_.chest_item_num[now_item_slot_num] = 1
				now_item_slot_num ++
			
				chest_.chest_item[now_item_slot_num] = item43
				chest_.chest_item_num[now_item_slot_num] = irandom_range(15,40)
				now_item_slot_num ++
				}
			}
		}
	}


	if chest_.chest_item[0] = noone
	{
	instance_destroy(chest_)
	random_creates(_cre_x,_cre_y)
	}
}