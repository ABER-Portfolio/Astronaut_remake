/// @description Insert description here
// You can write your code in this editor
instance_activate_object(noclip_block)
instance_destroy(noclip_block)


if buffer_exists(chat_buffer)
{
	if global.co_op_mode = 1
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.BL_DESTROY);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, sprite_index);
	buffer_write(chat_buffer, buffer_string, image_index);
	buffer_write(chat_buffer, buffer_string, image_angle);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	send_all(chat_buffer);
	}

	buffer_delete(chat_buffer);
}