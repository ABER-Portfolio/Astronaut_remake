/// @description Insert description here
// You can write your code in this editor
instance_activate_object(all)

buffer_seek(chat_buffer,buffer_seek_start,0);
buffer_write(chat_buffer,buffer_u8,DATA.SEND_MAP);
send_all(chat_buffer);