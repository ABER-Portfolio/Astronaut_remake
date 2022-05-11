/// @description Insert description here
// You can write your code in this editor
global.playing_scene = 0

if(co_op_code.is_server == true)
{
p_ins.cannot_move = 0
p_ins.image_alpha = 1
p_ins.image_angle = 0
}
else
{
	if global.co_op_mode = 1
	{
	p_c_ins.cannot_move = 0
	p_c_ins.image_alpha = 1
	p_c_ins.image_angle = 0
	}
}


global.drawing_cancle_ui = 0
instance_activate_all()
	if instance_number(block_home) > 0
	{
	obj_camera.x = block_home.x+37
	obj_camera.y = block_home.y+37
	x = block_home.x+37
	y = block_home.y+37
	}
obj_camera.v_x = 1280/(4-(global.sight*2))
obj_camera.v_y = 720/(4-(global.sight*2))
obj_camera.tv_x = 1280/(4-(global.sight*2))
obj_camera.tv_y = 720/(4-(global.sight*2))
co_op_code.alarm[9] = 120




if buffer_exists(chat_buffer)
{
buffer_delete(chat_buffer)
}