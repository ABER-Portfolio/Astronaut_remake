/// @description Insert description here
// You can write your code in this editor
if global.playing_scene = 0 && obj_camera.scene_cancle_cooltime > 2
{
image_alpha = 1
draw_self()
}
else
{
image_alpha = 0
}