/// @description Insert description here
// You can write your code in this editor
instance_destroy(light)
buffer_delete(chat_buffer)

if image_index = 10
{
	if co_op_code.is_server = true
	{
	var _bomb_ef_ = instance_create(x,y,bomb_fire_effect)
	_bomb_ef_.length = 5
	_bomb_ef_.received = 0
	_bomb_ef_.time = 0
	}
}