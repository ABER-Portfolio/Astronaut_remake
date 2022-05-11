if instance_number(obj_camera) > 0
{
depth = obj_camera.depth-1
}


if global.chat_activity = true
{
text = keyboard_string
	if keyboard_check_pressed(vk_enter) && text != ""
	{
		if(co_op_code.is_server = true)
		{
		chat_up(string(text),1);
		}
		else
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
	
		buffer_write(chat_buffer, buffer_u8, DATA.CHAT);
		buffer_write(chat_buffer, buffer_string,string(text));
		buffer_write(chat_buffer, buffer_string, global.nickname);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		buffer_write(chat_buffer, buffer_string, 1);
	
		send_all(chat_buffer);
		}
		
	text = ""
	keyboard_string = "";
	global.chat_activity = !global.chat_activity;
	image_index = global.chat_activity;
	}
}
else
{
keyboard_string = ""
}


if global.chat_activity = true
{
	if keyboard_check(vk_control) && keyboard_check(ord("V"))
	{
		if clipboard_has_text()
		{
		text = clipboard_get_text();
		keyboard_string = ""
		}
	}
}



if (global.recently_entered_chat_m >= 1) && instance_number(co_op_code) > 0
{
	if (co_op_code.del_recently_chat_log <= 30) || (co_op_code.del_recently_chat_log >= 60 && co_op_code.del_recently_chat_log < 90) || (co_op_code.del_recently_chat_log >= 150 && co_op_code.del_recently_chat_log < 180) || (co_op_code.del_recently_chat_log >= 240 && co_op_code.del_recently_chat_log < 270) || (co_op_code.del_recently_chat_log >= 300 && co_op_code.del_recently_chat_log < 330)
	{
	alpha_2 = 0.7
	}
	else
	{
	alpha_2 = 1
	}
}



if global.inv_open <= 0
{
	if keyboard_check_pressed(vk_enter)
	{
		if keyboard_string = ""
		{
		global.chat_activity = !global.chat_activity;
		keyboard_string = "";
		image_index = global.chat_activity;
		};
	}
}