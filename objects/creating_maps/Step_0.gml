/// @description Insert description here
// You can write your code in this editor
instance_destroy(main_menu_dust)

global.saving_data = -1
title_alpha += (0.7 - title_alpha)/15

if co_op_code.is_server = false
{
new_map = 2
}


var xx = global._came_vx_p_w
var yy = global._came_vy_p_h
depth = -(room_width*5.2)

if global.dev_mode != 1
{
obj_camera.v_x = 1280
obj_camera.v_y = 720
obj_camera.tv_x = 1280
obj_camera.tv_y = 720
}

x = xx*0.5
y = yy*0.5

////////////////////////////////////////////////////////////////////////////


if deactive = 0
{
instance_activate_object(obj_chatbar)
instance_activate_object(co_op_code)
instance_activate_object(obj_client_info)
instance_activate_object(obj_nope)
	
	
instance_deactivate_object(pl_rocket)
instance_deactivate_object(player)
instance_activate_object(player_co_op)
instance_activate_object(creating_maps)
instance_activate_object(code)




instance_activate_object(obj_camera)
instance_activate_object(BG_blind)
instance_activate_object(blinding)
instance_activate_object(obj_mouse)
instance_activate_object(create_island)
instance_activate_object(create_first_island)
instance_activate_object(fl_water)
instance_activate_object(fl_parents)
instance_activate_object(block_ore)
instance_activate_object(objLightParent)
}

if deactive = 1
{
	
instance_deactivate_region(__view_get( e__VW.XView, 0 )-32, __view_get( e__VW.YView, 0 )-32, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 )+32, false, true);
instance_activate_region(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 )-32, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 )+32, true);
instance_activate_object(co_op_code)
instance_activate_object(obj_camera)
instance_activate_object(objLightParent)
instance_activate_object(creating_maps)
instance_activate_object(code)

instance_activate_object(obj_chatbar)
instance_activate_object(co_op_code)
instance_activate_object(obj_client_info)
instance_activate_object(obj_nope)


instance_activate_object(player)
instance_activate_object(BG_blind)
instance_activate_object(blinding)
instance_activate_object(effect_parents)
instance_activate_object(pl_rocket)
instance_activate_object(obj_mouse)
instance_activate_object(create_island)
instance_activate_object(create_first_island)
instance_activate_object(BT_inventory)
instance_activate_object(ui_inv)
}

