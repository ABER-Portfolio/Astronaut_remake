///@description chunk(without)
//chunk(without)
///@param without
instance_activate_object(code)
instance_activate_object(draw_debug_text)
instance_activate_object(main_menu_dust)
if global.saving_data = 0 && instance_number(option_line_bar) = 0
{

instance_activate_object(code)

if instance_number(creating_maps) = 0
{
instance_deactivate_region(global._came_vx-256*1.2,global._came_vy-256,camera_get_view_width(view_camera[0])+256*2,camera_get_view_height(view_camera[0])+256*3, false, true);
}

instance_activate_object(code)
if global.draw_minimap = 1
{
instance_activate_region(global._came_vx-256*1.2-(global.draw_minimap*3*256),global._came_vy-256-(global.draw_minimap*256*4),camera_get_view_height(view_camera[0])+256*3+(global.draw_minimap*256*5.5), __view_get( e__VW.HView, 0 )+256*3+(global.draw_minimap*256*6.5), true);
}
else
{
instance_activate_region(global._came_vx-256*1.2,global._came_vy-256,camera_get_view_width(view_camera[0])+256*2,camera_get_view_height(view_camera[0])+256*3, true);
}

instance_activate_region(room_width*0.5-256,room_height*0.5-256,256*2,256*3, true);



instance_activate_object(code)

instance_activate_object(objLightManager)
instance_activate_object(objLightManager_building)
instance_activate_object(objLightParent)
instance_activate_object(pl_rocket)
instance_activate_object(co_op_code)
instance_activate_object(player_co_op)
instance_activate_object(pl_inhand_co_op)
instance_activate_object(player)
instance_activate_object(pl_inhand)
instance_activate_object(Lab_giant_door)
instance_activate_object(monster_parents)
instance_activate_object(fallen_scene)
instance_activate_object(draw_prolog_text)
instance_activate_object(block_home)
instance_activate_object(draw_choice_text)
instance_activate_object(island_biome_desert)
instance_activate_object(island_biome_ice)
instance_activate_object(island_biome_polluted)
instance_activate_object(island_biome_crimson)
instance_activate_object(river_creater)
instance_activate_object(destroy_floor)
with(monster_parents)
{
instance_activate_region(x-128,y-128,192,192,true);
}

with(Lab_giant_door)
{
instance_activate_region(x-320,y-320,320,320,true);
}

if global.co_op_mode > 0
{
var target_player = player
	if instance_number(co_op_code) > 0
	{
		if co_op_code.is_server = true
		{
		var target_player = player_co_op
		}
		else
		{
		var target_player = player
		}
	}
	
	if instance_number(target_player) > 0
	{
	instance_activate_region(target_player.x-256,target_player.y-256,512,512,true);
	}
}


instance_activate_object(objLightParent)
instance_activate_object(objLightManager)
instance_activate_object(objLightManager_building)
instance_activate_object(obj_camera)
instance_activate_object(select_map_button)
instance_activate_object(projectiles_parents)
instance_activate_object(create_cave)
instance_activate_object(create_lab)
instance_activate_object(fl_water)
instance_activate_object(fl_cave)
instance_activate_object(d_item_log)
instance_activate_object(capsule_p)

instance_activate_object(draw_boss_name)
instance_activate_object(block_furnace)
instance_activate_object(block_purificationer)

instance_activate_object(main_menu_title)
instance_activate_object(character_creator)
instance_activate_object(main_menu_button)
instance_activate_object(map_select_button)
instance_activate_object(map_select_button)
instance_activate_object(enter_map_name)
instance_activate_object(bomb_block)

instance_activate_object(obj_chatbar)
instance_activate_object(co_op_code)
instance_activate_object(obj_client_info)
instance_activate_object(obj_nope)
instance_activate_object(player_co_op)
instance_activate_object(pl_inhand_co_op)
instance_activate_object(objLight_for_obj)
instance_activate_object(objLight)
instance_activate_object(objLightManager_building)
instance_activate_object(item_info_log)

instance_activate_object(player)
instance_activate_object(block_laser)

instance_activate_object(objLightManager)
instance_activate_object(objLightManager_building)

instance_activate_object(objLight_building)
instance_activate_object(objLightParent)

instance_activate_object(BG_blind)
instance_activate_object(blinding)
instance_activate_object(pl_rocket)
instance_activate_object(obj_mouse)
instance_activate_object(creating_maps)
instance_activate_object(code)
instance_activate_object(create_island)
instance_activate_object(create_first_island)
instance_activate_object(meteor_island)
instance_activate_object(polluted_flower_boss_island)
instance_activate_object(effect_parents)
instance_activate_object(BT_inventory)
instance_activate_object(BT_crafting)
instance_activate_object(draw_hp_o2)
instance_activate_object(tool_inv_box)
instance_activate_object(monster_parents)
instance_activate_object(portal_gun_portal1)
instance_activate_object(portal_gun_portal2)
instance_activate_object(portal_ball)
instance_activate_object(obj_water_wave)
instance_activate_object(ui_buff)

instance_activate_object(ui_inv)
instance_activate_object(obj_queue_item)
instance_activate_object(obj_item_parents)
instance_activate_object(tnt_button)
instance_activate_object(tnt_button_only_ore)
instance_activate_object(tnt_button_biome_changer)
instance_activate_object(option_parents)
instance_activate_object(ingame_button_setting)
instance_activate_object(projectiles_parents)
instance_activate_object(message_log)
instance_activate_object(mid_massage_log)
instance_activate_object(pl_inhand)
instance_activate_object(chest)
instance_activate_object(build_system)
instance_activate_object(do_not_change_biome_here)
instance_activate_object(objLightManager_building)
instance_activate_object(tuto_log)
instance_activate_object(create_cave_blocks_here)
instance_activate_object(create_lab_blocks_here)
instance_activate_object(lab_hider)
instance_activate_object(lab_door)
instance_activate_object(lab_generater)

instance_activate_object(monster_creator)
instance_activate_object(obj_droped_item_parents)
instance_activate_object(worm_dig_point)
instance_activate_object(code)
instance_activate_object(fallen_scene)
}

//if instance_exists(floor_pl_parents)
//{
//floor_pl_parents.alarm[9] = 1
//}