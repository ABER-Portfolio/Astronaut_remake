/// @description Insert description here
// You can write your code in this editor
image_alpha = 1
if image_index = 0
{
paint_col = $FF5A51E9
}
if image_index = 15
{
paint_col = $FF5A91E9
}
if image_index = 30
{
paint_col = $FF5AD3E9
}
if image_index = 45
{
paint_col = $FF59E9CE
}
if image_index = 60
{
paint_col = $FFE8E85C
}
if image_index = 75
{
paint_col = $FFE89B5C
}
if image_index = 90
{
paint_col = $FFE85CAE
}
if image_index = 105
{
paint_col = $FF191919
}




if received = 0
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
	
buffer_write(chat_buffer, buffer_u8, DATA.O_BL_STATE);
buffer_write(chat_buffer, buffer_string, id);
buffer_write(chat_buffer, buffer_string, object_index);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
buffer_write(chat_buffer, buffer_string, sprite_index);
buffer_write(chat_buffer, buffer_string, image_speed);
buffer_write(chat_buffer, buffer_string, image_index);
buffer_write(chat_buffer, buffer_string, image_alpha);
buffer_write(chat_buffer, buffer_string, image_angle);
buffer_write(chat_buffer, buffer_string, image_blend);
buffer_write(chat_buffer, buffer_string, image_xscale);
buffer_write(chat_buffer, buffer_string, image_yscale);
buffer_write(chat_buffer, buffer_string, depth);
buffer_write(chat_buffer, buffer_string, vspeed);
buffer_write(chat_buffer, buffer_string, hspeed);
buffer_write(chat_buffer, buffer_string, gravity);
buffer_write(chat_buffer, buffer_string, gravity_direction);
send_all(chat_buffer);
}