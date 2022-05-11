/// @description Insert description here
// You can write your code in this editor
x = t_x+640+20
y = t_y+360+16

light.x = x
light.y = y

image_alpha += (0.3 - image_alpha)*0.08
depth = room_width*1.5-(y+32)

if dilay = 0
{
	if co_op_code.is_server = true
	{
		var item_num = inventory_number_find_by_name(item60,0)
		if item_num < 0
		{
		item_num = 0
		}
		
		var paracord_num = inventory_number_find_by_name(item42,0) + item_num
		
			
			if paracord_num > 0
			{
			go_back = 1
			}
			else
			{
				if place_meeting(x,y,player)
				{
					if global.language = 0
					{
					var _text_bar = instance_create(x,y,draw_debug_text)
					_text_bar.text = "Need a 'paracord' or 'wooden ladder' to climb up"
					}
					if global.language = 1
					{
					var _text_bar = instance_create(x,y,draw_debug_text)
					_text_bar.text = "올라가려면 '파라코드' 혹은 '나무 사다리'가 필요 합니다"
					}
				}
			}
		dilay = 1
		alarm[2] = 1
	}
	else
	{
		var item_num = inventory_number_find_by_name(item60,0)
		if item_num < 0
		{
		item_num = 0
		}
		
		var paracord_num = inventory_number_find_by_name(item42,0) + item_num
		
			
			if paracord_num > 0
			{
			go_back = 1
			}
			else
			{
				if place_meeting(x,y,player_co_op)
				{
					if global.language = 0
					{
					var _text_bar = instance_create(x,y,draw_debug_text)
					_text_bar.text = "Need a 'paracord' or 'wooden ladder' to climb up"
					}
					if global.language = 1
					{
					var _text_bar = instance_create(x,y,draw_debug_text)
					_text_bar.text = "올라가려면 '파라코드' 혹은 '나무 사다리'가 필요 합니다"
					}
				}
			}
		dilay = 1
		alarm[2] = 1
	}
}
