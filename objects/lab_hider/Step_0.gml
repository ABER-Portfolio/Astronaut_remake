/// @description Insert description here
// You can write your code in this editor
depth = -room_width*2
image_alpha = 0
if co_op_code.is_server = true
{
var _pl_meet = place_meeting(x-player.image_xscale*7,y,player)
	//if _pl_meet
	//{
	//image_alpha += (-0.01 - image_alpha)*0.1
	//}
	//else
	//{
	//image_alpha += (1.01 - image_alpha)*0.1
	//}
	
	if _pl_meet
	{
		if image_index = 1
		{
		global.auto_scroll_x = global.room_size+623
		global.auto_scroll_y = noone
		}
		
		if image_index = 2
		{
		global.auto_scroll_x = 6832-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 3
		{
		global.auto_scroll_x = 7136-5760+global.room_size
		global.auto_scroll_y = 620
		}
		
		if image_index = 4
		{
		global.auto_scroll_x = noone
		global.auto_scroll_y = 514
		}
		
		if image_index = 5
		{
		global.auto_scroll_x = 6609-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 6
		{
		global.auto_scroll_x = 7040-5760+global.room_size
		global.auto_scroll_y = 780
		}
		
		if image_index = 7
		{
		global.auto_scroll_x = 6976-5760+global.room_size
		global.auto_scroll_y = 1033
		}
		
		if image_index = 8
		{
		global.auto_scroll_x = 7472-5760+global.room_size
		global.auto_scroll_y = 1021
		}
		
		if image_index = 9
		{
		global.auto_scroll_x = 7729-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 10
		{
		global.auto_scroll_x = 6735-5760+global.room_size
		global.auto_scroll_y = 1194
		}
		
		if image_index = 11
		{
		global.auto_scroll_x = 7295-5760+global.room_size
		global.auto_scroll_y = 1160
		}
		
		if image_index = 12
		{
		global.auto_scroll_x = 7840-5760+global.room_size
		global.auto_scroll_y = 1131
		}
		
		if image_index = 13
		{
		global.auto_scroll_x = 7504-5760+global.room_size
		global.auto_scroll_y = 1264
		}
		
		if image_index = 14
		{
		global.auto_scroll_x = 7760-5760+global.room_size  
		global.auto_scroll_y = 1260
		}
		
		if image_index = 15
		{
		global.auto_scroll_x = 6928-5760+global.room_size  
		global.auto_scroll_y = 1418
		}
		
		if image_index = 16
		{
		global.auto_scroll_x = 7344-5760+global.room_size 
		global.auto_scroll_y = 1418
		}
		
		if image_index = 17
		{
		global.auto_scroll_x = 6815-5760+global.room_size   
		global.auto_scroll_y = 172
		}
		
		if image_index = 18
		{
		global.auto_scroll_x = 6609-5760+global.room_size  
		global.auto_scroll_y = 511
		}
		
		if image_index = 19
		{
		global.auto_scroll_x = 7214-5760+global.room_size    
		global.auto_scroll_y = 509
		}
		
		if image_index = 20
		{
		global.auto_scroll_x = 6383-5760+global.room_size     
		global.auto_scroll_y = 718
		}
		
		if image_index = 21
		{
		global.auto_scroll_x = 6878-5760+global.room_size     
		global.auto_scroll_y = 767
		}
		
		if image_index = 22
		{
		global.auto_scroll_x = 7136-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 23
		{
		global.auto_scroll_x = 7441-5760+global.room_size
		global.auto_scroll_y = 874
		}
		
		if image_index = 24
		{
		global.auto_scroll_x = 7790-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 25
		{
		global.auto_scroll_x = 6782-5760+global.room_size
		global.auto_scroll_y = 1054
		}
		
		if image_index = 26
		{
		global.auto_scroll_x = 6783-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 27
		{
		global.auto_scroll_x = noone    
		global.auto_scroll_y = 1149
		}
		
		if image_index = 28
		{
		global.auto_scroll_x = noone    
		global.auto_scroll_y = 1418
		}
		
		if image_index = 29
		{
		global.auto_scroll_x = 7504-5760+global.room_size
		global.auto_scroll_y = 1385
		}
		
		if image_index = 30
		{
		global.auto_scroll_x = 7760-5760+global.room_size
		global.auto_scroll_y = 1360
		}
		
		if image_index = 31
		{
		global.auto_scroll_x = 7966-5760+global.room_size
		global.auto_scroll_y = 1147
		}
	}
}
else
{
var _pl_meet = place_meeting(x-player_co_op.image_xscale*7,y,player_co_op)
	if _pl_meet
	{
	image_alpha += (-0.01 - image_alpha)*0.1
	}
	else
	{
	image_alpha += (1.01 - image_alpha)*0.1
	}
	
	if _pl_meet
	{
		if image_index = 1
		{
		global.auto_scroll_x = global.room_size+623
		global.auto_scroll_y = noone
		}
		
		if image_index = 2
		{
		global.auto_scroll_x = 6832-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 3
		{
		global.auto_scroll_x = 7136-5760+global.room_size
		global.auto_scroll_y = 620
		}
		
		if image_index = 4
		{
		global.auto_scroll_x = noone
		global.auto_scroll_y = 514
		}
		
		if image_index = 5
		{
		global.auto_scroll_x = 6609-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 6
		{
		global.auto_scroll_x = 7040-5760+global.room_size
		global.auto_scroll_y = 780
		}
		
		if image_index = 7
		{
		global.auto_scroll_x = 6976-5760+global.room_size
		global.auto_scroll_y = 1033
		}
		
		if image_index = 8
		{
		global.auto_scroll_x = 7472-5760+global.room_size
		global.auto_scroll_y = 1021
		}
		
		if image_index = 9
		{
		global.auto_scroll_x = 7729-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 10
		{
		global.auto_scroll_x = 6735-5760+global.room_size
		global.auto_scroll_y = 1194
		}
		
		if image_index = 11
		{
		global.auto_scroll_x = 7295-5760+global.room_size
		global.auto_scroll_y = 1160
		}
		
		if image_index = 12
		{
		global.auto_scroll_x = 7840-5760+global.room_size
		global.auto_scroll_y = 1131
		}
		
		if image_index = 13
		{
		global.auto_scroll_x = 7504-5760+global.room_size
		global.auto_scroll_y = 1264
		}
		
		if image_index = 14
		{
		global.auto_scroll_x = 7760-5760+global.room_size  
		global.auto_scroll_y = 1260
		}
		
		if image_index = 15
		{
		global.auto_scroll_x = 6928-5760+global.room_size  
		global.auto_scroll_y = 1418
		}
		
		if image_index = 16
		{
		global.auto_scroll_x = 7344-5760+global.room_size 
		global.auto_scroll_y = 1418
		}
		
		if image_index = 17
		{
		global.auto_scroll_x = 6815-5760+global.room_size   
		global.auto_scroll_y = 172
		}
		
		if image_index = 18
		{
		global.auto_scroll_x = 6609-5760+global.room_size  
		global.auto_scroll_y = 511
		}
		
		if image_index = 19
		{
		global.auto_scroll_x = 7214-5760+global.room_size    
		global.auto_scroll_y = 509
		}
		
		if image_index = 20
		{
		global.auto_scroll_x = 6383-5760+global.room_size     
		global.auto_scroll_y = 718
		}
		
		if image_index = 21
		{
		global.auto_scroll_x = 6878-5760+global.room_size     
		global.auto_scroll_y = 767
		}
		
		if image_index = 22
		{
		global.auto_scroll_x = 7136-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 23
		{
		global.auto_scroll_x = 7441-5760+global.room_size
		global.auto_scroll_y = 874
		}
		
		if image_index = 24
		{
		global.auto_scroll_x = 7790-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 25
		{
		global.auto_scroll_x = 6782-5760+global.room_size
		global.auto_scroll_y = 1054
		}
		
		if image_index = 26
		{
		global.auto_scroll_x = 6783-5760+global.room_size
		global.auto_scroll_y = noone
		}
		
		if image_index = 27
		{
		global.auto_scroll_x = noone    
		global.auto_scroll_y = 1149
		}
		
		if image_index = 28
		{
		global.auto_scroll_x = noone    
		global.auto_scroll_y = 1418
		}
		
		if image_index = 29
		{
		global.auto_scroll_x = 7504-5760+global.room_size
		global.auto_scroll_y = 1385
		}
		
		if image_index = 30
		{
		global.auto_scroll_x = 7760-5760+global.room_size
		global.auto_scroll_y = 1360
		}
		
		if image_index = 31
		{
		global.auto_scroll_x = 7966-5760+global.room_size
		global.auto_scroll_y = 1147
		}
	}
}

