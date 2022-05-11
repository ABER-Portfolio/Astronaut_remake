/// @description Insert description here
// You can write your code in this editor
obj_camera.v_x = 1280/(4-(global.sight*2))
obj_camera.v_y = 720/(4-(global.sight*2))
obj_camera.tv_x = 1280/(4-(global.sight*2))
obj_camera.tv_y = 720/(4-(global.sight*2))

global.saving_data = 0 
global.cre_cli_map = 0

instance_destroy(blinding)

if co_op_code.is_server = true
{
creating_maps.loading_kinds ++
}
else
{
instance_destroy(creating_maps)
}


if co_op_code.is_server = true
{
	if file_exists("Astronaut_map_pro_"+string(global.all_map_num)+".ini")
	{
	global.all_map_num += 1
	}
}

buffer_seek(chat_buffer,buffer_seek_start,0);
buffer_write(chat_buffer,buffer_u8,DATA.SEND_END);
send_all(chat_buffer);

alarm[8] = 70