/// @description Insert description here
// You can write your code in this editor
if laser != noone
{
instance_destroy(laser)
}

instance_activate_object(noclip_block)
instance_destroy(noclip_block)



if buffer_exists(chat_buffer)
{
buffer_delete(chat_buffer);
};