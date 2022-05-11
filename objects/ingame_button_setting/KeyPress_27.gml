/// @description Insert description here
// You can write your code in this editor
if instance_number(creating_maps) = 0
{
	if instance_number(option_line_bar) = 0 && global.inv_open = 0
	{
	obj_camera.setting_blind = 1.2
	b_v_x = obj_camera.v_x
	b_v_y = obj_camera.v_y

	BT_inventory.alarm[1] = 1 
	
	obj_camera.v_x = 1280
	obj_camera.v_y = 720

	//오브젝트 비활성화
	instance_deactivate_object(monster_parents)
	instance_deactivate_object(block_parents)
	instance_deactivate_object(fl_parents)

	instance_create(0,0,option_line_bar)
	}
}