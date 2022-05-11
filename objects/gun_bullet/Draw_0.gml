/// @description Insert description here
// You can write your code in this editor
if _alpha > 0
{
draw_set_alpha(_alpha)
draw_line_width_color(x-lengthdir_x(1,direction),y-lengthdir_y(1,direction),t_x,t_y,2,c_gray,c_white)
}
draw_self()