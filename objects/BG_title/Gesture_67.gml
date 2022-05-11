/// @description Insert description here
// You can write your code in this editor
if instance_number(BT_title) > 0
{	
	if instance_number(BG_blind) = 0 && step >= 3
	{
		var ___p_dis = point_distance(mouse_x,0,pressed_m_x,0)
		if ___p_dis > 128
		{
		skiping_num = floor(___p_dis/160)
		
			if mouse_x > pressed_m_x
			{
			skiping_dir = 1
			}
			else
			{
			skiping_dir = -1
			}
		pressed_m_x = mouse_x
		}
	}
}
else
{
	if step >= 3
	{
		var ___p_dis = point_distance(mouse_x,0,pressed_m_x,0)
		if ___p_dis > 128
		{
		skiping_num = floor(___p_dis/160)
		
			if mouse_x > pressed_m_x
			{
			skiping_dir = 1
			}
			else
			{
			skiping_dir = -1
			}
		pressed_m_x = mouse_x
		}
	}
}