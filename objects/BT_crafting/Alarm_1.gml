/// @description 창 닫기

var sf_ef = audio_play_sound(draged_item,1,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.3,0)
global.inv_open = 0

if co_op_code.is_server = true && global.a_m_save_craft_window = 0
{
ui_inv.crafting_double_clicked_ind = noone
ui_inv.crafting_double_clicked = 0
}
