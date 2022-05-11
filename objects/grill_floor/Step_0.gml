/// @description Insert description here
// You can write your code in this editor
if position_meeting(x,y,block_ore)
{
instance_destroy()
}

if place_meeting(x,y,tree_seed)
{
cre_cooltime += 0.5
}
else
{
cre_cooltime++
}


if cre_cooltime > 3200
{
	if watered_alpha <= 0 && watered_alpha_polluted <= 0 && watered_alpha_crimson <= 0
	{
	instance_destroy()
	cre_cooltime = 0
	}
}


if (watered_alpha+watered_alpha_polluted+watered_alpha_crimson) < 1
{
	if (place_meeting(x,y,watered_area) || global.rainy > 0)
	{
	watered_alpha += 0.01
	}
	else
	{
		if watered_alpha > 0
		{
		watered_alpha -= 0.01
		}
	}
	
	if place_meeting(x,y,watered_crimson_area)
	{
	watered_alpha_crimson += 0.01
	}
	else
	{
		if watered_alpha_crimson > 0
		{
		watered_alpha_crimson -= 0.01
		}
	}
	
	if place_meeting(x,y,watered_polluted_area)
	{
	watered_alpha_polluted += 0.01
	}
	else
	{
		if watered_alpha_polluted > 0
		{
		watered_alpha_polluted -= 0.01
		}
	}
}


if buffer_exists(chat_buffer)
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.GRILL_FLOOR);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
buffer_write(chat_buffer, buffer_string, watered_alpha);
buffer_write(chat_buffer, buffer_string, watered_alpha_crimson);
buffer_write(chat_buffer, buffer_string, watered_alpha_polluted);
send_all(chat_buffer);
}