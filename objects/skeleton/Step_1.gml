/// @description Insert description here
// You can write your code in this editor
p_damaged(own_damage,false,45,60,false)

if place_meeting(x,y,bomb_site)
{
t_speed = 0
target_x = x
target_y = y
m_damaged(self,5,50,c_white,self,1,1)
}