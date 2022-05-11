/// @description Insert description here
// You can write your code in this editor
depth = -99999
x += (t_x - x)*0.1
y += (t_y - y)*0.1

x += (mouse_x - x)*0.005
y += (mouse_y - y)*0.004




if global.shirt_run_red > 255
{
global.shirt_run_red = 255
}

if global.shirt_run_red < 0
{
global.shirt_run_red = 0
}

if global.shirt_run_green > 255
{
global.shirt_run_green = 255
}

if global.shirt_run_green < 0
{
global.shirt_run_green = 0
}

if global.shirt_run_blue > 255
{
global.shirt_run_blue = 255
}

if global.shirt_run_blue < 0
{
global.shirt_run_blue = 0
}


global.shirt_run_col = make_color_rgb(global.shirt_run_red,global.shirt_run_green,global.shirt_run_blue)

