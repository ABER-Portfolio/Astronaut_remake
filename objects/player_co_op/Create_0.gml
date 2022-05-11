/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);

if instance_number(player_co_op) > 1
{
instance_destroy()
}
else
{
alarm[1] = 120
instance_activate_all()


col_test = 0
scene_spin = 0

chunk_loading_time = 0

instance_create(x,y,pl_inhand_co_op)
if(co_op_code.is_server == false)
{
instance_create(x,y,objLightManager)
instance_create(x,y,BT_inventory)
instance_create(x,y,BT_crafting)
instance_create(x,y,draw_hp_o2)
}


spin = 0
co_op_mode_spin = 0
tired = 0
reviving = 0
revive_message = 0

saved_suit_col = -1
saved_goggles_col = -1
saved_shirt_run_col = -1



if global.gender = 0
{
orginal_sprite = pl_move
}
if global.gender = 1
{
orginal_sprite = pl_move_s_mask
}
flying_sprite = pl_jumping
hurt_sprite = pl_hurt

pants_run = eye_goggles
pants_hurt = eye_goggles_hurt
pants_spin = eye_goggles_spin
pants_knockedout = eye_goggles_knocked_out

shirt_run = o2_tank_cloth
shirt_hurt = o2_tank_hurt_cloth
shirt_spin = o2_tank_spin_cloth
shirt_knockedout = o2_tank_knocked_out_cloth


image_speed = 0
image_index = 0
image_blend = c_white
move_released = 1
hmove_released = 1
move_direction = 0
m_v_p = 0
m_h_p = 0

cannot_move = 1

//데미지 받는거 딜레이
damage_dilay = 0

//넉백              넉백정도 변경시 t_knockback만 변경해주면됨.
t_knockback = 0
knockback = 0

//버프 효과 증가중
increasing_buff = 0


//발자국 생성
check_steps = 0



if(co_op_code.is_server == false)
{
player_co_op.alarm[0] = 60
}

}