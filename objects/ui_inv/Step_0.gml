
if global.chat_activity = false
{
//////인벤내 아이템 갯수를 전역변수로 보내기
//save_items_num_into_global_val()
//inv_draw()


#region//가우시안


if global.inv_open = 1 || global.inv_open = 2
{
	if global.draw_gausian != -1
	{
	global.draw_gausian = 1
	}
}
else
{
instance_destroy(obj_item_parents)
}

#endregion

#region//박스 사이즈 설정 및 뎁스 설정

//뎁스 설정
depth = -room_width*2.99
var xx_scale = (obj_camera.v_x/1280)/1.8
var yy_scale = (obj_camera.v_y/720)/1.8
var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-450*xx_scale
var yy = global._came_vy+camera_get_view_height(view_camera[0])

var win_hei = window_get_height()/1080

var box_size = 103

//가로 (32 픽셀)
inventory_cell_width = 99*xx_scale;

//세로 (32 픽셀)
inventory_cell_height = 99*yy_scale;

/* 아이템 사이의 간격 */
inventory_item_distance = 4*xx_scale;


/* 아이템을 드로우 할 시작위치 */

var xx = _xx+(_xxx)*0.5-530*xx_scale + (box_size*xx_scale)-((box_size*xx_scale)*0.5)
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
var win_height = window_get_height()/1080
if window_get_height() = 720
{
win_height = 0.4
}

var yyy = yy-(yy_scale*(64+160))-win_height*50-(inventory_item_distance+((inventory_cell_height)))*3 -((box_size*yy_scale)*0.5)

inventory_draw_x = xx
inventory_draw_y = yyy




//var xx = global._came_vx
var yy = global._came_vy

var dx_xx = _xx+100*xx_scale
var dx_yy = yy-(win_hei*yy_scale*(136+floor(crafting_scroll_y)))-((box_size*yy_scale)*0.5)


cr_inventory_draw_x = dx_xx+box_size*xx_scale*0.5
cr_inventory_draw_y = dx_yy+(750*yy_scale*win_hei)






var xx_scale = (obj_camera.v_x/1280)/1.8
var yy_scale = (obj_camera.v_y/720)/1.8

var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-530*xx_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

var box_size = 103

ch_inventory_draw_x = xx+(box_size*1.5*xx_scale)
ch_inventory_draw_y = yy-win_height*70-(yy_scale*(64*9+160))-yy_scale*box_size*1.5


#endregion




if global.inv_open = 1 || global.inv_open = 3
{	
	if ( mouse_check_button_pressed(mb_left)) && instance_number(BG_blind) = 0 && global.knocked_out = 0
	{
	
	var inv_check = inventory_point_get_index(mouse_x , mouse_y);
	
	if global.inv_open = 1
	{
	var inv_check2 = -1;
	}
	else
	{
	var inv_check2 = ch_inventory_point_get_index(mouse_x , mouse_y);
	}
	//인덱스 취득
	
		if inv_check != -1
		{
		var sound_effect = audio_play_sound(draging_item,1,false)
		audio_sound_gain(sound_effect,global.master_volume*global.sfx_volume*global.scene_volume*0.3,0)
		inv_drag_before = 1
		inv_change_click_index = inv_check
			if inv_change_click_index != -1 && (inv_change_click_index < inventory_width * inventory_height)
			{
			inv_change__use_item_index_ = inventory_item_find_by_index(inv_change_click_index,0);
				if (inv_change__use_item_index_ != -1) && (inv_change__use_item_index_ != noone)
				{
				var inst_id = instance_create(-100 , -100 , inv_change__use_item_index_);
				spr_ind_change_ = inst_id.sprite_index
				img_ind_change_ = inst_id.image_index
				instance_destroy(inst_id)
	
				inv_change__item_num_ = inventory_number_find_by_name(inv_change__use_item_index_,0)
				}
			}
		change_connection = 1
		}
		
		
		if inv_check2 != -1
		{
		var sound_effect = audio_play_sound(draging_item,1,false)
		audio_sound_gain(sound_effect,global.master_volume*global.sfx_volume*global.scene_volume*0.3,0)
		inv_drag_before = 2
		inv_change_click_index = inv_check2
			if inv_change_click_index != -1 && (inv_change_click_index < ch_inventory_width * ch_inventory_height)
			{
			inv_change__use_item_index_ = ch_inventory_item_find_by_index(inv_change_click_index,2);
				if (inv_change__use_item_index_ != -1) && (inv_change__use_item_index_ != noone)
				{
				var inst_id = instance_create(-100 , -100 , inv_change__use_item_index_);
				spr_ind_change_ = inst_id.sprite_index
				img_ind_change_ = inst_id.image_index
				instance_destroy(inst_id)
	
				inv_change__item_num_ = ch_inventory_number_find_by_name(inv_change__use_item_index_,2)
				}
			}
		change_connection = 1
		}
	}

	
	if ( mouse_check_button_released(mb_left)) && instance_number(BG_blind) = 0 && global.knocked_out = 0
	{
		if change_connection = 1
		{
			if can_des = 0
			{
				if (inv_change_click_index != -1)
				{
				var sound_effect = audio_play_sound(draged_item,1,false)
				audio_sound_gain(sound_effect,global.master_volume*global.sfx_volume*global.scene_volume*0.15,0)
				

					if inv_drag_before = 1 && (inv_change_click_index < inventory_width * inventory_height)
					{
						if inv_change_click_index != noone
						{
						inv_change_b_slot_item = inventory_item_equip[inv_change_click_index]
						inv_change_b_slot_item_num = inventory_num_equip[inv_change_click_index]
						}
					}
					
					if inv_drag_before = 2 && (inv_change_click_index < ch_inventory_width * ch_inventory_height)
					{
						if inv_change_click_index != noone
						{
						inv_change_b_slot_item = inventory_item_etc[inv_change_click_index]
						inv_change_b_slot_item_num = inventory_num_etc[inv_change_click_index]
						}
					}
				
					var check_inv = inventory_point_get_index(mouse_x , mouse_y);
					if global.inv_open = 1
					{
					var check_inv2 = -1;
					}
					else
					{
					var check_inv2 = ch_inventory_point_get_index(mouse_x , mouse_y);
					}
					///////////////////////////////////아이템 드랍하기//////////////////////////////////
					if check_inv = -1 && check_inv2 = -1
					{
					var item_empty = 1
						if inv_drag_before = 1 && (!keyboard_check(vk_control))
						{
							if inventory_spr[inv_change_click_index] = spr_accessories
							{
								if inventory_img_index[inv_change_click_index] = 19
								{
									if inventory_number_find_by_name(item600021,0) > 0
									{
										for(var i = 28; i < 36; i++)
										{
											if inventory_num_equip[i] != -1
											{
											item_empty = 0
											}
										}
									}
									else
									{
										for(var i = 10; i < 18; i++)
										{
											if inventory_num_equip[i] != -1
											{
											item_empty = 0
											}
										}
									}
								}
									
								if inventory_img_index[inv_change_click_index] = 20
								{
									if inventory_number_find_by_name(item600020,0) > 0
									{
										for(var i = 19; i < 36; i++)
										{
											if inventory_num_equip[i] != -1
											{
											item_empty = 0
											}
										}
									}
									else
									{
										for(var i = 10; i < 27; i++)
										{
											if inventory_num_equip[i] != -1
											{
											item_empty = 0
											}
										}
									}
								}
							}
						}
					
						if inv_change_click_index != -1 && item_empty = 1
						{
							if inv_drag_before = 1 && (!keyboard_check(vk_control))
							{
								var cre_item = noone
							    if inventory_spr[inv_change_click_index] = spr_inv_item || inventory_spr[inv_change_click_index] = spr_only_items
								{
								var cre_item = instance_create(player.x,player.y,obj_item)
								}
								
								if inventory_spr[inv_change_click_index] = spr_clothes_center_origin
								{
								var cre_item = instance_create(player.x,player.y,obj_item_clothes)
								}
								
								if inventory_spr[inv_change_click_index] = spr_pickaxe_center_origin
								{
								var cre_item = instance_create(player.x,player.y,obj_item_tools)
								}
								
								if inventory_spr[inv_change_click_index] = spr_placeable_center_origin
								{
								var cre_item = instance_create(player.x,player.y,obj_item_placeable)
								}
								
								if inventory_spr[inv_change_click_index] = spr_potion_center_origin
								{
								var cre_item = instance_create(player.x,player.y,obj_item_potion)
								}
								
								if inventory_spr[inv_change_click_index] = spr_accessories
								{
								var cre_item = instance_create(player.x,player.y,obj_item_accessories)
								}
								
								if cre_item != noone
								{
								cre_item.received_item = 0
								cre_item.stucked_item_number = inventory_num_equip[inv_change_click_index]
								cre_item.vspeed = -1
								if co_op_code.is_server = true
								{
								cre_item.floor_y = player.y+10;
								cre_item.hspeed = -player.image_xscale*1
								cre_item.x = player.x
								cre_item.y = player.y
								}
								else
								{
								cre_item.floor_y = player_co_op.y+10;
								cre_item.hspeed = -player_co_op.image_xscale*1
								cre_item.x = player_co_op.x
								cre_item.y = player_co_op.y
								}
								cre_item.depth = -(cre_item.floor_y)
								cre_item.image_xscale = (cre_item.hspeed/abs(cre_item.hspeed))*0.18
								cre_item.image_yscale = 0.18
								cre_item.a = irandom_range(9,15)
								cre_item.image_index = inventory_img_index[inv_change_click_index]
								}
								
	
							
							
							inventory_item_equip[inv_change_click_index] = noone
							inventory_num_equip[inv_change_click_index] = -1
							}
					
							if inv_drag_before = 2 && (!keyboard_check(vk_control))
							{
							inventory_item_etc[inv_change_click_index] = noone
							inventory_num_etc[inv_change_click_index] = -1
							}
						}
					}
					//////////////////////////////////////////////////////////////////////////////////
	
					var inv_change_click_index_2 = inventory_point_get_index(mouse_x , mouse_y);
	
					if check_inv != -1 && inv_drag_before = 1 && (!keyboard_check(vk_control))
					{
						var inv_change_click_index_2 = check_inv;
	
						if inv_change_click_index_2 != -1 && (inv_change_click_index_2 < inventory_width * inventory_height) && inv_change_click_index != noone && inv_change_click_index_2 != noone
						{
						var inv_change__use_item_index_2 = inventory_item_find_by_index(inv_change_click_index_2,0);
		
						var inv_change__item_num_2 = inventory_number_find_by_name(inv_change__use_item_index_2,0)
				
						inventory_item_equip[inv_change_click_index] = inv_change__use_item_index_2
						inventory_num_equip[inv_change_click_index] = inv_change__item_num_2

						inventory_item_equip[inv_change_click_index_2] = inv_change_b_slot_item
						inventory_num_equip[inv_change_click_index_2] = inv_change_b_slot_item_num
						}
					}
				
				
				
				
				
				if global.inv_open = 3
				{
					if keyboard_check(vk_control)
					{
						if inv_change_click_index != noone
						{
							if inv_drag_before = 1
							{
							var _check_empty_ = -1
								for(var i = 0; i < 14; i++)
								{
									if (_check_empty_ = -1) && (inventory_item_etc[i] = noone || inventory_num_etc[i] = -1)
									{
									_check_empty_ = i;
									};
								};
								
								if _check_empty_ != -1
								{
								inventory_item_equip[inv_change_click_index] = noone
								inventory_num_equip[inv_change_click_index] = -1
								
								inventory_item_etc[_check_empty_] = inv_change_b_slot_item
								inventory_num_etc[_check_empty_] = inv_change_b_slot_item_num
								}
							}
						
						
						
							if inv_drag_before = 2
							{
							var _check_empty_ = -1
								for(var i = 0; i < inventory_size(); i++)
								{
									if (_check_empty_ = -1) && (inventory_item_equip[i] = noone || inventory_num_equip[i] = -1)
									{
									_check_empty_ = i;
									};
								};
								
								if _check_empty_ != -1
								{
								inventory_item_etc[inv_change_click_index] = noone
								inventory_num_etc[inv_change_click_index] = -1
								
								inventory_item_equip[_check_empty_] = inv_change_b_slot_item
								inventory_num_equip[_check_empty_] = inv_change_b_slot_item_num
								};
							}
						}
					}
					else
					{
						if check_inv2 != -1 && inv_drag_before = 2
						{
							var inv_change_click_index_2 = check_inv2;
	
							if inv_change_click_index_2 != -1 && (inv_change_click_index_2 < ch_inventory_width * ch_inventory_height) && (inv_change_click_index < ch_inventory_width * ch_inventory_height) && inv_change_click_index != noone && inv_change_click_index_2 != noone
							{
							var inv_change__use_item_index_2 = ch_inventory_item_find_by_index(inv_change_click_index_2,2);
		
							var inv_change__item_num_2 = ch_inventory_number_find_by_name(inv_change__use_item_index_2,2)
				
							inventory_item_etc[inv_change_click_index] = inv_change__use_item_index_2
							inventory_num_etc[inv_change_click_index] = inv_change__item_num_2

							inventory_item_etc[inv_change_click_index_2] = inv_change_b_slot_item
							inventory_num_etc[inv_change_click_index_2] = inv_change_b_slot_item_num
							}
						}
				
				
				
				
				
						if (check_inv2 != -1 && inv_drag_before = 1)
						{
							var inv_change_click_index_2 = check_inv2;
	
							if inv_change_click_index_2 != -1 && (inv_change_click_index_2 < ch_inventory_width * ch_inventory_height) && inv_change_click_index != noone && inv_change_click_index_2 != noone
							{
							var inv_change__use_item_index_2 = ch_inventory_item_find_by_index(inv_change_click_index_2,2);
		
							var inv_change__item_num_2 = ch_inventory_number_find_by_name(inv_change__use_item_index_2,2)
				
							inventory_item_equip[inv_change_click_index] = inv_change__use_item_index_2
							inventory_num_equip[inv_change_click_index] = inv_change__item_num_2

							inventory_item_etc[inv_change_click_index_2] = inv_change_b_slot_item
							inventory_num_etc[inv_change_click_index_2] = inv_change_b_slot_item_num
							}
						}
				
				
				
				
				
				
						if (check_inv != -1 && inv_drag_before = 2)
						{
							var inv_change_click_index_2 = check_inv;
	
							if inv_change_click_index_2 != -1 && (inv_change_click_index_2 < inventory_width * inventory_height) && inv_change_click_index != noone && inv_change_click_index_2 != noone
							{
							var inv_change__use_item_index_2 = inventory_item_find_by_index(inv_change_click_index_2,0);
		
							var inv_change__item_num_2 = inventory_number_find_by_name(inv_change__use_item_index_2,0)
				
							inventory_item_etc[inv_change_click_index] = inv_change__use_item_index_2
							inventory_num_etc[inv_change_click_index] = inv_change__item_num_2
					
							inventory_item_equip[inv_change_click_index_2] = inv_change_b_slot_item
							inventory_num_equip[inv_change_click_index_2] = inv_change_b_slot_item_num
							}
						}
						
						
						if inv_change_click_index != -1 && inv_drag_before = 2
						{
						inv_change_click_index = -1
						inv_drag_before = 0
						}
					}
				}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
				}
			}
			else
			{
				if inv_change_click_index != -1
				{
				var item_empty = 1
					if inventory_spr[inv_change_click_index] = spr_accessories
					{
						if inventory_img_index[inv_change_click_index] = 19
						{
							if inventory_number_find_by_name(item600021,0) > 0
							{
								for(var i = 28; i < 36; i++)
								{
									if inventory_num_equip[i] != -1
									{
									item_empty = 0
									}
								}
							}
							else
							{
								for(var i = 10; i < 18; i++)
								{
									if inventory_num_equip[i] != -1
									{
									item_empty = 0
									}
								}
							}
						}
							
						if inventory_img_index[inv_change_click_index] = 20
						{
							if inventory_number_find_by_name(item600020,0) > 0
							{
								for(var i = 19; i < 36; i++)
								{
									if inventory_num_equip[i] != -1
									{
									item_empty = 0
									}
								}
							}
							else
							{
								for(var i = 10; i < 27; i++)
								{
									if inventory_num_equip[i] != -1
									{
									item_empty = 0
									}
								}
							}
						}
					}
					
					if item_empty = 1
					{
						if inv_drag_before = 1
						{
						inventory_item_equip[inv_change_click_index] = noone
						inventory_num_equip[inv_change_click_index] = -1
						}
					
						if inv_drag_before = 2
						{
						inventory_item_etc[inv_change_click_index] = noone
						inventory_num_etc[inv_change_click_index] = -1
						}
					}
				}
			}
		}
	}
	
	
	
	
	

}




if (mouse_check_button_released(mb_left))
{
#region
can_des = 0

inv_change_click_index = -1

inv_change__use_item_index_ = noone

inv_change__item_num_ = noone

inv_change_b_slot_item = noone

inv_change_b_slot_item_num = noone

spr_ind_change_ = none_sprite

img_ind_change_ = noone

change_connection = 0

inv_drag_before = 0
#endregion
}



if global.inv_open = 1
{
#region//아이템사용
if ( mouse_check_button_released(mb_left)) && instance_number(BG_blind) = 0 && global.inv_open = 1 && global.knocked_out = 0
{
	//인덱스 취득
	var click_index = inventory_point_get_index(mouse_x , mouse_y);

	 //아이템이 존재하면 아이템 사용
	if (click_index >= 0)
	{
	var sound_effect = audio_play_sound(draged_item,1,false)
	audio_sound_gain(sound_effect,global.master_volume*global.sfx_volume*global.scene_volume*0.15,0)
	
		var _use_item_index_ = inventory_item_find_by_index(click_index,0);
		
		if _use_item_index_ != -1 && _use_item_index_ != noone
		{
		inventory_item_use(click_index , 0);
		}
	}
}

































if ( mouse_check_button_released(mb_right)) && instance_number(BG_blind) = 0 && global.inv_open = 1 && global.knocked_out = 0
{
	//인덱스 취득
	var click_index = inventory_point_get_index(mouse_x , mouse_y);

	 //아이템이 존재하면 아이템 사용
	if (click_index >= 0)
	{
	var sound_effect = audio_play_sound(draged_item,1,false)
	audio_sound_gain(sound_effect,global.master_volume*global.sfx_volume*global.scene_volume*0.15,0)
	
		var _use_item_index_ = inventory_item_find_by_index(click_index,0);
		
		if _use_item_index_ != -1 && _use_item_index_ != noone
		{
			var inst_id = instance_create(-100 , -100 , _use_item_index_);
			if inst_id.sprite_index = spr_clothes_center_origin
			{
				if (!audio_is_playing(clothes_jacket))
				{
					var img_ind = inst_id.image_index
					var empty = inventory_empty_check(asset_get_index("item5000"+string(img_ind+1)),1,0)
					if empty = 1
					{
		
					var sf_ef = audio_play_sound(clothes_jacket,0,false)
					audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.6,0)
		

					inventory_item_add(asset_get_index("item5000"+string(global.hazmat+1)),1,0)
		
					global.hazmat = img_ind
					inventory_item_sub(asset_get_index("item5000"+string(img_ind+1)),1,0)
			
						if co_op_code.is_server = true
						{
						player.alarm[0] = 1
						}
						else
						{
						player_co_op.alarm[0] = 1
						}
					}
				}
			}
		}
	}
}
#endregion
}

if global.inv_open = 2
{
#region//아이템 클릭

		//아이템사용 (조합창)
		if ( mouse_check_button_pressed(mb_left)) && instance_number(BG_blind) = 0 && global.knocked_out = 0
		{
		    //인덱스 취득
    
			if mouse_y < yy-yy_scale*200 && mouse_y > global._came_vy+yy_scale*200
			{
			var cr_click_index = cr_inventory_point_get_index(mouse_x , mouse_y);
			}
			else
			{
			cr_click_index = noone
			}
	
		    //아이템이 존재하면 아이템 사용
		    if (cr_click_index >= 0) && instance_number(obj_queue_item) < 5
		    {
				
			if crafting_double_clicked_ind = cr_click_index
			{
			crafting_double_clicked ++
			}
			else
			{
			crafting_double_clicked = 1
			}
			alarm[0] = 24
			
			crafting_double_clicked_ind = cr_click_index
			
			var clicked_item_spr = cr_inventory_spr[cr_click_index];
			var clicked_item_img = cr_inventory_img_index[cr_click_index];

			//show_message(string(cr_click_index)+" "+string(clicked_item_spr)+" "+string(clicked_item_img))
			

				#region//아이템 조합하기
			
			
				crafting_(item37,3,item4,6,-1,-1,-1,-1,-1,-1,item10001,60,1,clicked_item_spr,clicked_item_img)//쇠망치
				crafting_(item37,3,item2,4,-1,-1,-1,-1,-1,-1,item10002,60,1,clicked_item_spr,clicked_item_img)//구리 곡괭이
				crafting_(item37,3,item4,4,-1,-1,-1,-1,-1,-1,item10003,60,1,clicked_item_spr,clicked_item_img)//철 곡괭이
				crafting_(item37,3,item6,4,-1,-1,-1,-1,-1,-1,item10004,60,1,clicked_item_spr,clicked_item_img)//금 곡괭이
				crafting_(item37,3,item8,4,-1,-1,-1,-1,-1,-1,item10005,60,1,clicked_item_spr,clicked_item_img)//티타늄 곡괭이
				crafting_(item37,3,item10,4,-1,-1,-1,-1,-1,-1,item10006,60,1,clicked_item_spr,clicked_item_img)//문스톤 곡괭이
				crafting_(item37,3,item12,4,-1,-1,-1,-1,-1,-1,item10007,60,1,clicked_item_spr,clicked_item_img)//코발트 곡괭이
				crafting_(item34,10,-1,-1,-1,-1,-1,-1,-1,-1,item10008,60,1,clicked_item_spr,clicked_item_img)//메테오 곡괭이
				crafting_(item23,30,-1,-1,-1,-1,-1,-1,-1,-1,item10009,60,1,clicked_item_spr,clicked_item_img)//프로즌 곡괭이
				crafting_(item20,10,-1,-1,-1,-1,-1,-1,-1,-1,item100010,60,1,clicked_item_spr,clicked_item_img)//오염된 테란 곡괭이
				crafting_(item4,10,-1,-1,-1,-1,-1,-1,-1,-1,item100011,60,1,clicked_item_spr,clicked_item_img)//아이언 드릴
				crafting_(item12,10,-1,-1,-1,-1,-1,-1,-1,-1,item100012,60,1,clicked_item_spr,clicked_item_img)//코발트 드릴
				crafting_(item14,10,-1,-1,-1,-1,-1,-1,-1,-1,item100013,60,1,clicked_item_spr,clicked_item_img)//테란 곡괭이
				crafting_(item22,10,-1,-1,-1,-1,-1,-1,-1,-1,item100014,60,1,clicked_item_spr,clicked_item_img)//크림슨 테란 곡괭이
				crafting_(item37,6,-1,-1,-1,-1,-1,-1,-1,-1,item100016,60,1,clicked_item_spr,clicked_item_img)//나무망치
				crafting_(item45,10,item57,4,-1,-1,-1,-1,-1,-1,item100017,60,1,clicked_item_spr,clicked_item_img)//플래쉬 라이트
				crafting_(item26,3,item8,3,-1,-1,-1,-1,-1,-1,item100018,60,1,clicked_item_spr,clicked_item_img)//크로퍼 곡괭이
				crafting_(item28,3,item8,3,-1,-1,-1,-1,-1,-1,item100019,60,1,clicked_item_spr,clicked_item_img)//올그리드 곡괭이
				crafting_(item30,3,item8,3,-1,-1,-1,-1,-1,-1,item100020,60,1,clicked_item_spr,clicked_item_img)//아이로직 곡괭이
				crafting_(item32,3,item8,3,-1,-1,-1,-1,-1,-1,item100021,60,1,clicked_item_spr,clicked_item_img)//코브 곡괭이
				crafting_(item2,3,item37,2,-1,-1,-1,-1,-1,-1,item100022,60,1,clicked_item_spr,clicked_item_img)//구리 단검
				crafting_(item6,3,item37,2,-1,-1,-1,-1,-1,-1,item100023,60,1,clicked_item_spr,clicked_item_img)//금 검
				crafting_(item4,3,item37,2,-1,-1,-1,-1,-1,-1,item100024,60,1,clicked_item_spr,clicked_item_img)//철 검
				crafting_(item8,3,item37,2,-1,-1,-1,-1,-1,-1,item100025,60,1,clicked_item_spr,clicked_item_img)//티타늄 검
				crafting_(item12,6,-1,-1,-1,-1,-1,-1,-1,-1,item100026,60,1,clicked_item_spr,clicked_item_img)//코발트 창
				crafting_(item34,7,-1,-1,-1,-1,-1,-1,-1,-1,item100027,60,1,clicked_item_spr,clicked_item_img)//메테오 창
				crafting_(item10,6,-1,-1,-1,-1,-1,-1,-1,-1,item100028,60,1,clicked_item_spr,clicked_item_img)//문스톤 창
				crafting_(item23,25,-1,-1,-1,-1,-1,-1,-1,-1,item100029,60,1,clicked_item_spr,clicked_item_img)//프로즌 검
				crafting_(item20,8,-1,-1,-1,-1,-1,-1,-1,-1,item100030,60,1,clicked_item_spr,clicked_item_img)//오염된 테란 낫
				crafting_(item14,4,-1,-1,-1,-1,-1,-1,-1,-1,item100031,60,1,clicked_item_spr,clicked_item_img)//테란 단검
				crafting_(item26,4,-1,-1,-1,-1,-1,-1,-1,-1,item100032,60,1,clicked_item_spr,clicked_item_img)//크로퍼 단검
				crafting_(item28,6,-1,-1,-1,-1,-1,-1,-1,-1,item100033,60,1,clicked_item_spr,clicked_item_img)//올그리드 낫
				crafting_(item32,8,-1,-1,-1,-1,-1,-1,-1,-1,item100034,60,1,clicked_item_spr,clicked_item_img)//코브 창
				crafting_(item2,4,item37,4,-1,-1,-1,-1,-1,-1,item100050,60,1,clicked_item_spr,clicked_item_img)//구리 도끼
				crafting_(item4,4,item37,4,-1,-1,-1,-1,-1,-1,item100051,60,1,clicked_item_spr,clicked_item_img)//철 도끼
				crafting_(item6,4,item37,4,-1,-1,-1,-1,-1,-1,item100052,60,1,clicked_item_spr,clicked_item_img)//금 도끼
				crafting_(item8,4,item37,4,-1,-1,-1,-1,-1,-1,item100053,60,1,clicked_item_spr,clicked_item_img)//티타늄 도끼
				crafting_(item10,4,item37,4,-1,-1,-1,-1,-1,-1,item100054,60,1,clicked_item_spr,clicked_item_img)//문스톤 도끼
				crafting_(item12,4,item37,4,-1,-1,-1,-1,-1,-1,item100055,60,1,clicked_item_spr,clicked_item_img)//코발트 도끼
				crafting_(item34,6,-1,-1,-1,-1,-1,-1,-1,-1,item100056,60,1,clicked_item_spr,clicked_item_img)//메테오 도끼
				crafting_(item23,23,-1,-1,-1,-1,-1,-1,-1,-1,item100057,60,1,clicked_item_spr,clicked_item_img)//프로즌 도끼
				crafting_(item20,6,-1,-1,-1,-1,-1,-1,-1,-1,item100058,60,1,clicked_item_spr,clicked_item_img)//오염된 테란 도끼
				crafting_(item14,6,-1,-1,-1,-1,-1,-1,-1,-1,item100059,60,1,clicked_item_spr,clicked_item_img)//테란 도끼
				crafting_(item22,6,-1,-1,-1,-1,-1,-1,-1,-1,item100060,60,1,clicked_item_spr,clicked_item_img)//크림슨 테란 도끼
				crafting_(item26,6,-1,-1,-1,-1,-1,-1,-1,-1,item100061,60,1,clicked_item_spr,clicked_item_img)//크로퍼 도끼
				crafting_(item28,6,-1,-1,-1,-1,-1,-1,-1,-1,item100062,60,1,clicked_item_spr,clicked_item_img)//올그리드 도끼
				crafting_(item30,6,-1,-1,-1,-1,-1,-1,-1,-1,item100063,60,1,clicked_item_spr,clicked_item_img)//아이로직 도끼
				crafting_(item32,6,-1,-1,-1,-1,-1,-1,-1,-1,item100064,60,1,clicked_item_spr,clicked_item_img)//코브 도끼
				crafting_(item4,5,item37,2,-1,-1,-1,-1,-1,-1,item100075,60,1,clicked_item_spr,clicked_item_img)//쇠 괭이
				crafting_(item57,5,item45,10,-1,-1,-1,-1,-1,-1,item46,60,1,clicked_item_spr,clicked_item_img)//화이트 키카드
				crafting_(item57,5,item45,20,-1,-1,-1,-1,-1,-1,item47,60,1,clicked_item_spr,clicked_item_img)//그린 키카드
				crafting_(item57,5,item45,25,-1,-1,-1,-1,-1,-1,item48,60,1,clicked_item_spr,clicked_item_img)//블루 키카드
				crafting_(item57,5,item45,35,-1,-1,-1,-1,-1,-1,item49,60,1,clicked_item_spr,clicked_item_img)//레드 키카드
				crafting_(item36,3,item55,3,-1,-1,-1,-1,-1,-1,item56,20,10,clicked_item_spr,clicked_item_img)//화약
				crafting_(item4,2,item56,5,-1,-1,-1,-1,-1,-1,item41,10,5,clicked_item_spr,clicked_item_img)//소총 탄약
				crafting_(item4,2,item56,5,-1,-1,-1,-1,-1,-1,item42,10,7,clicked_item_spr,clicked_item_img)//권총 탄약
				crafting_(item4,2,item56,5,-1,-1,-1,-1,-1,-1,item43,10,3,clicked_item_spr,clicked_item_img)//샷건 탄약
				crafting_(item2,1,item4,2,item6,1,-1,-1,-1,-1,item40001,50,1,clicked_item_spr,clicked_item_img)//산소 버튼    58
				crafting_(item2,2,item4,5,item6,1,-1,-1,-1,-1,item400013,50,1,clicked_item_spr,clicked_item_img)//정화기
				crafting_(item37,15,item4,1,-1,-1,-1,-1,-1,-1,item400015,50,1,clicked_item_spr,clicked_item_img)//나무상자
				crafting_(item37,15,item4,1,item6,2,-1,-1,-1,-1,item400017,50,1,clicked_item_spr,clicked_item_img)//금 나무상자
				crafting_(item52,1,item36,2,item56,250,-1,-1,-1,-1,item400030,90,1,clicked_item_spr,clicked_item_img)//TNT
				crafting_(item4,4,item36,4,item56,500,item45,3,-1,-1,item400031,90,1,clicked_item_spr,clicked_item_img)//C4
				crafting_(item4,6,item45,2,-1,-1,-1,-1,-1,-1,item400032,50,1,clicked_item_spr,clicked_item_img)//아이언 스프링클러
				crafting_(item20,6,item45,2,-1,-1,-1,-1,-1,-1,item400033,50,1,clicked_item_spr,clicked_item_img)//오염된 테란 스프링클러
				crafting_(item22,6,item45,2,-1,-1,-1,-1,-1,-1,item400034,50,1,clicked_item_spr,clicked_item_img)//크림슨 테란 스프링클러
				crafting_(item4,3,-1,-1,-1,-1,-1,-1,-1,-1,item60003,55,1,clicked_item_spr,clicked_item_img)//쇠반지
				crafting_(item4,2,item14,1,-1,-1,-1,-1,-1,-1,item60005,55,1,clicked_item_spr,clicked_item_img)//테란 반지
				crafting_(item4,2,item22,1,-1,-1,-1,-1,-1,-1,item60006,55,1,clicked_item_spr,clicked_item_img)//크림슨 테란 반지
				crafting_(item4,2,item20,1,-1,-1,-1,-1,-1,-1,item60007,55,1,clicked_item_spr,clicked_item_img)//오염된 테란 반지
				crafting_(item4,2,item34,1,-1,-1,-1,-1,-1,-1,item60008,55,1,clicked_item_spr,clicked_item_img)//메테오 반지
				crafting_(item4,2,item12,1,-1,-1,-1,-1,-1,-1,item600010,55,1,clicked_item_spr,clicked_item_img)//코발트 반지
				crafting_(item2,3,-1,-1,-1,-1,-1,-1,-1,-1,item600012,55,1,clicked_item_spr,clicked_item_img)//구리 반지
				crafting_(item23,15,-1,-1,-1,-1,-1,-1,-1,-1,item600013,55,1,clicked_item_spr,clicked_item_img)//프로즌 반지
				crafting_(item400025,4,-1,-1,-1,-1,-1,-1,-1,-1,item600014,55,1,clicked_item_spr,clicked_item_img)//그린 스플렌트 반지
				crafting_(item400026,4,-1,-1,-1,-1,-1,-1,-1,-1,item600015,55,1,clicked_item_spr,clicked_item_img)//크림슨 스플렌트 반지
				crafting_(item400027,4,-1,-1,-1,-1,-1,-1,-1,-1,item600016,55,1,clicked_item_spr,clicked_item_img)//오염된 스플렌트 반지
				crafting_(item400028,4,-1,-1,-1,-1,-1,-1,-1,-1,item600017,55,1,clicked_item_spr,clicked_item_img)//프로즌 스플렌트 반지
				crafting_(item400029,4,-1,-1,-1,-1,-1,-1,-1,-1,item600018,55,1,clicked_item_spr,clicked_item_img)//펀가이 스플렌트 반지
				crafting_(item4,4,item8,2,-1,-1,-1,-1,-1,-1,item600020,55,1,clicked_item_spr,clicked_item_img)//스몰 아이템 케이스
				crafting_(item2,2,item8,2,item12,1,item45,1,-1,-1,item50001,40,1,clicked_item_spr,clicked_item_img)//우주복
				crafting_(item2,2,item8,2,item12,1,item45,1,item22,2,item50002,40,1,clicked_item_spr,clicked_item_img)//방사능복
				crafting_(item2,2,item8,2,item12,1,item45,1,item400028,3,item50003,40,1,clicked_item_spr,clicked_item_img)//추위 방호복
				crafting_(item2,2,item8,2,item12,1,item45,1,item20,2,item50004,40,1,clicked_item_spr,clicked_item_img)//독 방호복
				crafting_(item2,2,item8,2,item12,1,item45,1,item34,2,item50005,40,1,clicked_item_spr,clicked_item_img)//열 방호복
				crafting_(item400026,2,item37,1,-1,-1,-1,-1,-1,-1,item400035,5,1,clicked_item_spr,clicked_item_img)//빨간색 페인트
				crafting_(item400025,1,item400026,1,item400028,1,item37,1,-1,-1,item400036,5,1,clicked_item_spr,clicked_item_img)//주황색 페인트
				crafting_(item400025,1,item400026,1,item37,1,-1,-1,-1,-1,item400037,5,1,clicked_item_spr,clicked_item_img)//노란색 페인트
				crafting_(item400025,2,item37,1,-1,-1,-1,-1,-1,-1,item400038,5,1,clicked_item_spr,clicked_item_img)//초록색 페인트
				crafting_(item400028,2,item37,1,-1,-1,-1,-1,-1,-1,item400039,5,1,clicked_item_spr,clicked_item_img)//파란색 페인트
				crafting_(item400029,2,item37,1,-1,-1,-1,-1,-1,-1,item400040,5,1,clicked_item_spr,clicked_item_img)//남색 페인트
				crafting_(item400027,2,item37,1,-1,-1,-1,-1,-1,-1,item400041,5,1,clicked_item_spr,clicked_item_img)//보라색 페인트
				crafting_(item400025,1,item400026,1,item400027,1,item400029,1,item37,1,item400042,5,1,clicked_item_spr,clicked_item_img)//검은색 페인트
				crafting_(item15,5,-1,-1,-1,-1,-1,-1,-1,-1,item400046,5,1,clicked_item_spr,clicked_item_img)//일반 바이옴 매립지
				crafting_(item15,5,item400026,1,-1,-1,-1,-1,-1,-1,item400047,5,1,clicked_item_spr,clicked_item_img)//크림슨 바이옴 매립지
				crafting_(item15,5,item400027,1,-1,-1,-1,-1,-1,-1,item400048,5,1,clicked_item_spr,clicked_item_img)//오염된 바이옴 매립지
				crafting_(item15,5,item400028,1,-1,-1,-1,-1,-1,-1,item400049,5,1,clicked_item_spr,clicked_item_img)//얼음 매립지
				crafting_(item15,5,-1,-1,-1,-1,-1,-1,-1,-1,item400050,5,1,clicked_item_spr,clicked_item_img)//사막 바이옴 매립지
				crafting_(item15,5,item400027,1,-1,-1,-1,-1,-1,-1,item400051,5,1,clicked_item_spr,clicked_item_img)//오염된 사막 바이옴 매립지
				crafting_(item15,5,item400026,1,-1,-1,-1,-1,-1,-1,item400052,5,1,clicked_item_spr,clicked_item_img)//크림슨 사막 바이옴 매립지
				crafting_(item15,5,item400027,1,item400028,1,-1,-1,-1,-1,item400053,5,1,clicked_item_spr,clicked_item_img)//오염된 얼음 바이옴 매립지
				crafting_(item15,5,item400026,1,item400028,1,-1,-1,-1,-1,item400054,5,1,clicked_item_spr,clicked_item_img)//크림슨 얼음 바이옴 매립지
				crafting_(item33,10,-1,-1,-1,-1,-1,-1,-1,-1,item400055,5,1,clicked_item_spr,clicked_item_img)//운석 바이옴 매립지
				crafting_(item15,10,-1,-1,-1,-1,-1,-1,-1,-1,item400056,5,1,clicked_item_spr,clicked_item_img)//콘크리트 매립지
				crafting_(item15,20,item17,10,-1,-1,-1,-1,-1,-1,item40007,55,1,clicked_item_spr,clicked_item_img)//용광로
				crafting_(item37,15,-1,-1,-1,-1,-1,-1,-1,-1,item60,15,1,clicked_item_spr,clicked_item_img)//나무 사다리
				crafting_(item37,20,-1,-1,-1,-1,-1,-1,-1,-1,item100016,40,1,clicked_item_spr,clicked_item_img)//나무 망치
				crafting_(item4,12,-1,-1,-1,-1,-1,-1,-1,-1,item400057,50,1,clicked_item_spr,clicked_item_img)//연구대
				crafting_(item37,35,-1,-1,-1,-1,-1,-1,-1,-1,item100078,50,1,clicked_item_spr,clicked_item_img)//나무 활
				crafting_(item38,35,-1,-1,-1,-1,-1,-1,-1,-1,item100079,50,1,clicked_item_spr,clicked_item_img)//크림슨 나무 활
				crafting_(item39,35,-1,-1,-1,-1,-1,-1,-1,-1,item100080,50,1,clicked_item_spr,clicked_item_img)//오염된 나무 활
				crafting_(item37,5,item4,8,-1,-1,-1,-1,-1,-1,item100081,50,1,clicked_item_spr,clicked_item_img)//급조 활
				crafting_(item37,5,item40,15,-1,-1,-1,-1,-1,-1,item100082,50,1,clicked_item_spr,clicked_item_img)//크리스탈 활
				crafting_(item37,20,item100078,1,-1,-1,-1,-1,-1,-1,item100083,50,1,clicked_item_spr,clicked_item_img)//나무 석궁
				crafting_(item38,20,item100079,1,-1,-1,-1,-1,-1,-1,item100084,50,1,clicked_item_spr,clicked_item_img)//크림슨 나무 석궁
				crafting_(item39,20,item100080,1,-1,-1,-1,-1,-1,-1,item100085,50,1,clicked_item_spr,clicked_item_img)//오염된 나무 석궁
				crafting_(item37,20,item100081,1,-1,-1,-1,-1,-1,-1,item100086,50,1,clicked_item_spr,clicked_item_img)//급조 석궁 석궁
				crafting_(item37,20,item100082,1,-1,-1,-1,-1,-1,-1,item100087,50,1,clicked_item_spr,clicked_item_img)//크리스탈 석궁
				crafting_(item37,3,-1,-1,-1,-1,-1,-1,-1,-1,item63,10,5,clicked_item_spr,clicked_item_img)//나무 화살
				crafting_(item37,3,item15,1,-1,-1,-1,-1,-1,-1,item64,10,5,clicked_item_spr,clicked_item_img)//돌 화살
				crafting_(item37,3,item4,1,-1,-1,-1,-1,-1,-1,item65,10,5,clicked_item_spr,clicked_item_img)//쇠 화살
				crafting_(item57,3,-1,-1,-1,-1,-1,-1,-1,-1,item66,10,5,clicked_item_spr,clicked_item_img)//플라스틱 화살
				crafting_(item37,3,item40,1,-1,-1,-1,-1,-1,-1,item67,10,5,clicked_item_spr,clicked_item_img)//크리스탈 화살
				crafting_(item64,1,item52,1,item56,50,item36,5,-1,-1,item68,10,1,clicked_item_spr,clicked_item_img)//폭발 화살
				crafting_(item37,15,item44,1,item59,5,-1,-1,-1,-1,item100088,30,1,clicked_item_spr,clicked_item_img)//횟불
				
		
				#endregion
			}
			
			if (cr_click_index >= 0) && instance_number(obj_queue_item) >= 5
			{
				if global.language = 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "Can not craft a lot at once"
				}
				
				if global.language = 1
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "한 번에 많이 조합 할 수 없습니다"
				}
			}
		}



		#endregion

	if ui_inv.inventory_change_check = true
	{
	}
}








}