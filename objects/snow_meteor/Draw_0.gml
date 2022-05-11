/// @description Insert description here
// You can write your code in this editor
if _alpha > 0
{
draw_set_alpha(_alpha)
draw_line_width_color(x-lengthdir_x(1,image_angle),y-lengthdir_y(1,image_angle),t_x-lengthdir_x(1,image_angle),t_y-lengthdir_y(1,image_angle),2,$00FFFFFF&$ffffff,$FFFFFFFF&$ffffff)
}
draw_self()