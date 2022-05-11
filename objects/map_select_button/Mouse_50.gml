/// @description Insert description here
// You can write your code in this editor
if image_index = 0
{
	var by = b_my
	with(map_select_button)
	{
		if by > mouse_y
		{
		self.t_y -= floor(point_distance(mouse_y,0,by,0))*1.5
		}
		else
		{
		self.t_y += floor(point_distance(mouse_y,0,by,0))*1.5
		}
	}
	b_mx = mouse_x
	b_my = mouse_y
}