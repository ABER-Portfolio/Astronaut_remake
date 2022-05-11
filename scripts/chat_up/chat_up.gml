var chating = argument0;

for(var i = 0; i < 10; i++)
{
	if instance_number(obj_chatbar) > 0
	{
	obj_chatbar.chat[10 - i] = obj_chatbar.chat [9 - i];
	}
}
obj_chatbar.chat[0] = chating;

global.recently_entered_chat_m += 1
co_op_code.del_recently_chat_log = 1

//string(global.nickname)+" : "+

if argument1 = true
{
	var target_ = player
		
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
		
		if global.playing_scene = 0
		{
			if co_op_code.chat_log != 0
			{
			instance_destroy(co_op_code.chat_log)
			co_op_code.chat_log = 0
			}
			
			if instance_number(target_) > 0
			{
			co_op_code.chat_log = instance_create(target_.x,target_.y-32,d_item_log);
			var c_code_chat_log = co_op_code.chat_log
			c_code_chat_log.sprite = none_sprite;
			c_code_chat_log.ind = argument0;
			c_code_chat_log.depth = target_.depth-1;
			c_code_chat_log.alarm[1] = 220;
			c_code_chat_log.depth_target = target_;
			}
		}
	
	
	
	if co_op_code.is_server = true
	{
		if buffer_exists(chat_buffer)
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.CHAT);
		buffer_write(chat_buffer, buffer_string, argument0);
		buffer_write(chat_buffer, buffer_string, global.nickname);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		send_all(chat_buffer);
		}
	}
}
