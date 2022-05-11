/// @description Insert description here
// You can write your code in this editor
if !position_meeting(x-9,y,floor_pl_parents) || !position_meeting(x+9,y,floor_pl_parents) || !position_meeting(x,y-9,floor_pl_parents) || !position_meeting(x,y+9,floor_pl_parents)
{
instance_destroy()
}

if position_meeting(x,y,grill_floor)
{
	if other.id != id
	{
	instance_destroy()
	}
}


if received = 0
{
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	buffer_write(chat_buffer, buffer_u8, DATA.CREATE_OBJ_ONLY_XY);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, image_index);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);

	send_all(chat_buffer);
	}
}