/// @description Insert description here
// You can write your code in this editor

//오브젝트 비활성화
instance_deactivate_object(monster_parents)
instance_deactivate_object(block_parents)
instance_deactivate_object(fl_parents)

depth = -(room_width*5)
var xxx = global._came_vx;
var yyy = global._came_vy;

x = (xxx)//+xx
y = (yyy)//+yy


//if a = 0
//{
//image_xscale += (2 - image_xscale)*0.1
//image_yscale += (2 - image_yscale)*0.1
//}

//if a = 1
//{
//image_xscale += (0 - image_xscale)*0.1
//image_yscale += (0 - image_yscale)*0.1

//	if image_xscale <= 0
//	{
//	instance_destroy()
//	}
//}


//alpha -= 0.1


//	if instance_number(blinding) > 0
//	{
//		if blinding.keep = 1
//		{
//		a = 0
//		}
//	}
	
	
if instance_number(BG_blind) <= 0
{
global.opening_menu = 0
}