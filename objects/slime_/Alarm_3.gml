/// @description 데미지 닳는거

//speed = -3
vspeed = -2

if damage_gotten_by = 1
{
m_damaged(player,global.attack_damage_origin,30,image_blend,self,3,global.knockback)
}

if damage_gotten_by = 2
{
m_damaged(player_co_op,global.attack_damage_co_op,30,image_blend,self,3,global.knockback)
}

damage_gotten_by = 0