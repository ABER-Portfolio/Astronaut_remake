/// @description Insert description here
// You can write your code in this editor

t_speed = 0
target_x = x
target_y = y

if damage_gotten_by = 1
{
m_damaged(player,global.attack_damage_origin,40,c_green,self,3,global.knockback)
}

if damage_gotten_by = 2
{
m_damaged(player_co_op,global.attack_damage_co_op,40,c_green,self,3,global.knockback)
}

damage_gotten_by = 0
