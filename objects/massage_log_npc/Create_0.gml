/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_speed = 0
image_index = 0
image_xscale = 0
image_yscale = 0
image_alpha = 0
step_for_scale_shake = 0

can_skip = 0
y_plus_time = 0
y_plus = 0
ty = 0
chat_page = 0

des = 0
end_page = 0


alarm[1] = 60
alarm[2] = 1


var aud = audio_play_sound(button,0,false)

var target = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target = player_co_op
}

if point_distance(x,y,target.x,target.y)/64 < 0.9
{
audio_sound_gain(aud,0.5*global.master_volume*global.sfx_volume*global.scene_volume*(1 - point_distance(x,y,target.x,target.y)/64),0)
}
else
{
audio_sound_gain(aud,0.1*global.master_volume*global.sfx_volume*global.scene_volume,0)
}