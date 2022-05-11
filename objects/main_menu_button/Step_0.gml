/// @description Insert description here
// You can write your code in this editor

depth = -99999

y += (mouse_y - y)*0.004


var camera_xsize = obj_camera.v_x/1280



image_angle += (0 - image_angle)*0.18

if image_index = 0 && global.character_created = 1
{
image_index = 1
}

if point_distance(mouse_x,mouse_y,x,y) <= 64 && can_click = 1
{
	if touched = 0 && (des = 0 || image_index = 3)
	{
	image_xscale = 0.8
	image_yscale = 0.8
	step_for_scale_shake = 0
	w_alpha = 1
	touched = 1
	global.co_op_mode = 0
		
		if instance_number(item_info_log) = 0
		{
			if image_index = 0
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "New"
				item_info_log.item_desc = " Start new game"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "새 게임"
				item_info_log.item_desc = " 새 게임을 시작합니다"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
			}
		
			if image_index = 1
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "Load"
				item_info_log.item_desc = " Load your data"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "로드"
				item_info_log.item_desc = " 이전 게임 데이터를 불러옵니다"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
			}
		
			if image_index = 3
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "Exit"
				item_info_log.item_desc = " Back to the before menu"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "뒤로가기"
				item_info_log.item_desc = " 이전 메뉴로 돌아갑니다"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
			}
		
			if image_index = 4
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "Co-op"
				item_info_log.item_desc = " Play with your friend!"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "코옵 모드"
				item_info_log.item_desc = " 친구와 함께 즐기세요!"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
			}
		
			if image_index = 5
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "Server"
				item_info_log.item_desc = " be the server opener"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "서버 오픈"
				item_info_log.item_desc = " 서버를 오픈합니다"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
			}
		
			if image_index = 6
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "Client"
				item_info_log.item_desc = " Join the server"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "클라이언트"
				item_info_log.item_desc = " 다른 서버에 접속합니다"
				item_info_log.rating = 0
				item_info_log.height = -25
				item_info_log.width = 0
				}
			}
		
			if image_index = 7
			{
				if global.language = 0
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "Option"
				item_info_log.item_desc = ""
				item_info_log.rating = 0
				item_info_log.height = -45
				item_info_log.width = 0
				}
				if global.language = 1
				{
				var item_desc_log = instance_create(x,y,item_info_log)
				item_info_log.item_name = "환경설정"
				item_info_log.item_desc = ""
				item_info_log.rating = 0
				item_info_log.height = -45
				item_info_log.width = 0
				}
			}
		}
	}
}
else
{
touched = 0
}

if image_index != 11 && image_index != 14 && image_index != 15 && image_index != 17
{
	if (des = 0 || image_index = 3)
	{
	original_scale = camera_xsize*1.5
	w_alpha += (0 - w_alpha)*0.083
	}
}

if (image_index = 11 || image_index = 15)
{
original_scale = camera_xsize*0.75
w_alpha += (0 - w_alpha)*0.083
}

if (image_index = 14 || image_index = 17)
{
original_scale = camera_xsize*0.85
w_alpha += (0 - w_alpha)*0.083
}


if des = 1
{
	if image_index != 3
	{
	original_scale = 0
	w_alpha += (1 - w_alpha)*0.1
	}
	
	if image_xscale <= 0 && (image_index = 5 || image_index = 6)
	{
	instance_destroy()
	}
}

scale_shake()

if des = -1
{
	if image_index = 5 || image_index = 6
	{
	des = 1
	}
	else
	{
	des = 0
	}
}

if t_x != noone
{
x += (t_x - x)*0.1
x += (mouse_x - x)*0.005
}


if t_y != noone
{
y += (t_y - y)*0.1
}