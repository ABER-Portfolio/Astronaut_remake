/// @description 폭탄에 닿음

if dilay = 0
{
	if place_meeting(x,y,bomb_site)
	{
	m_damaged(other,4,25,c_gray,self,3,2)
	}
}

if global.knocked_out_origin != 0 && global.knocked_out_co_op > 0
{
instance_destroy()
}