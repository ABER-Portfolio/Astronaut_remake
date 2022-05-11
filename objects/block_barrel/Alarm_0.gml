/// @description Insert description here
// You can write your code in this editor
if received = 0
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






if instance_number(creating_maps) > 0 && creating_maps.new_map = 1
{
	if (place_meeting(x,y,floor_pl1) || place_meeting(x,y,floor_pl5) || place_meeting(x,y,floor_pl6))
	{
	image_index = choose(2,3)
	}
	else if (place_meeting(x,y,floor_pl2) || place_meeting(x,y,floor_pl7) || place_meeting(x,y,floor_pl8))
	{
	image_index = choose(0,1)
	}
	else if place_meeting(x,y,floor_pl3)
	{
	image_index = choose(0,1,2,3)
	}
	else if place_meeting(x,y,floor_pl17)
	{
	image_index = 6
	}
	
	if image_index = 4
	{
	instance_destroy()
	}
}
