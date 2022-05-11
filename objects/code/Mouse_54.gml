/// @description Insert description here
// You can write your code in this editor


if global.dev_mode > 0
{
	if keyboard_check(ord("Q"))
	{
	var random_block_cre = percentage_k(50)
		if random_block_cre = 1
		{
		var cre_bl = instance_create(mouse_x,mouse_y,block_hole)
		cre_bl.received = 0
		}
		else
		{
		var ore_ = instance_create(mouse_x,mouse_y,block_research_table);
		ore_.received = 0
		}
	}
	
	if keyboard_check(ord("W"))
	{
		for(var i = 0; i < 10; i++)
		{
		var cre_item = instance_create(mouse_x,mouse_y,obj_item_placeable)
		cre_item.stucked_item_number = 99
		cre_item.image_index = (34+i)
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = mouse_y+irandom_range(0,8);
		cre_item.a = irandom_range(9,15)
		}
	}
	
	if keyboard_check(ord("E"))
	{
	var cre_bl = instance_create(mouse_x,mouse_y,choose(astronaut_,red_alien))
	cre_bl.received = 0
	}
	
	if keyboard_check(ord("R"))
	{
	//속도 저하
	global.slow_movement = 10

	//이동 플립
	global.flip_movement = 10
	
	player.alarm[0] = 1
	//player_co_op.alarm[0] = 1
	}
	
	if keyboard_check(ord("T"))
	{
	var _rod = instance_create(mouse_x,mouse_y,Lab_giant_door)
	_rod.received = 0
	}
	
	
	if keyboard_check(ord("U"))
	{
	var _mob_ = instance_create(mouse_x,mouse_y,grill_floor);
	_mob_.received = 0
	}
	
	if keyboard_check(ord("B"))
	{
	global.rainy ++
		if global.rainy > 1
		{
		global.rainy = 0
		}
	}
	
	if keyboard_check(ord("N"))
	{
	//현재 시간
	global.time = 6000
	objLightManager.day_light_alpha = 1
	objLightManager.sun_light_alpha = 0
	objLightManager.flash_light_alpha = 0
	objLightManager.moon_light_alpha = 0
	}
	
	if keyboard_check(ord("M"))
	{
	//현재 시간
	global.time = 66666
	objLightManager.day_light_alpha = 0
	objLightManager.sun_light_alpha = 0
	objLightManager.moon_light_alpha = 0
	objLightManager.flash_light_alpha = 0
	}

	
	if keyboard_check(ord("F"))
	{
	var a = instance_create(mouse_x,mouse_y,chest)
	a.image_index = irandom_range(0,12)
	a.received = 0
	a.locked = 0
		for(var i = 0; i < 14; i++)
		{
		a.chest_item[i] = noone
		a.chest_item_num[i] = -1
		}
	}
	
	
	
	//if keyboard_check(vk_escape)
	//{
	//game_restart()
	//}
	
	

	if keyboard_check(vk_space)
	{
	var a = instance_create(mouse_x,mouse_y,block_laser)
	a.received = 0
	a.width = 3.5
	var _x2 = player.x
	var _y2 = player.y
	a.x2 = _x2
	a.y2 = _y2
	a.direction = point_direction(x,y,_x2,_y2)
	a.own_damage = 1
	}
	
	
	if keyboard_check(ord("L"))
	{
		for(var i = 40; i < 55; i++)
		{
		var cre_item = instance_create(mouse_x,mouse_y,obj_item)
		cre_item.stucked_item_number = 99
		cre_item.image_index = (i)
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = mouse_y+irandom_range(0,8);
		cre_item.a = irandom_range(9,15)
		}
	}
	
	
	if keyboard_check(vk_shift)
	{
	var random_obj = choose(obj_item_potion,obj_item_accessories)
		for(var i = 0; i < 21; i++)
		{
		var cre_item = instance_create(mouse_x,mouse_y,random_obj)
		cre_item.stucked_item_number = 1
		cre_item.image_index = i
		cre_item.floor_y = mouse_y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		}
	}
	
	if keyboard_check(vk_enter)
	{
		if(co_op_code.is_server == false)
		{
		player_co_op.x = mouse_x
		player_co_op.y = mouse_y
		}
		else
		{
		player.x = mouse_x
		player.y = mouse_y
		}
	}
	
	if keyboard_check(vk_alt)
	{
		if(co_op_code.is_server == false)
		{
		player_co_op.x = player.x
		player_co_op.y = player.y
		}
		else
		{
			if instance_number(player_co_op) > 0
			{
			player.x = player_co_op.x
			player.y = player_co_op.y
			}
		}
	}
	
	
	if keyboard_check(vk_tab)
	{
	draw_all_map ++

		if draw_all_map > 1
		{
		draw_all_map = 0
		}

		if draw_all_map = 1
		{
		var gl_rm_size = global.room_size
		
		obj_camera.v_x = gl_rm_size
		obj_camera.v_y = gl_rm_size
		obj_camera.tv_x = gl_rm_size
		obj_camera.tv_y = gl_rm_size
		}
		else
		{
		obj_camera.v_x = 1280/(4-(global.sight*2))
		obj_camera.v_y = 720/(4-(global.sight*2))
		obj_camera.tv_x = 1280/(4-(global.sight*2))
		obj_camera.tv_y = 720/(4-(global.sight*2))
		}
	}
	
	
	if keyboard_check(ord("1"))
	{
	var _block = instance_create(mouse_x,mouse_y,block_furnace)
	_block.received = 0
	}
	
	if keyboard_check(ord("2"))
	{
	var _block = instance_create(mouse_x,mouse_y,block_purificationer)
	_block.received = 0
	}
	
	if keyboard_check(ord("3"))
	{
	instance_create(player.x-64,player.y,choose(slime,bat))
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////

