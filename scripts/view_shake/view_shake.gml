///@param camera_zoom
///@param shake_view
///@param view_angle_shake

if instance_number(creating_maps) = 0
{
var zoom_scale = argument0
var shake_scale = argument1
var angle_shake_ = argument2/10
if instance_number(obj_camera) > 0
{
obj_camera.v_x -= zoom_scale*1.28
obj_camera.v_y -= zoom_scale*0.72
}
global.shake_time = 0
global.t_shake_x = choose(-1,1)*shake_scale;
global.t_shake_y = choose(-1,1)*shake_scale;

global.view_angle_ = choose(-1,1)*angle_shake_
}