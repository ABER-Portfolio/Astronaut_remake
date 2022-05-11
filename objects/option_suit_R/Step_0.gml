/// @description Insert description here
// You can write your code in this editor
depth = -99999
x += (t_x - x)*0.1
y += (t_y - y)*0.1

x += (mouse_x - x)*0.005
y += (mouse_y - y)*0.004




if global.suit_red > 255
{
global.suit_red = 255
}

if global.suit_red < 0
{
global.suit_red = 0
}

if global.suit_green > 255
{
global.suit_green = 255
}

if global.suit_green < 0
{
global.suit_green = 0
}

if global.suit_blue > 255
{
global.suit_blue = 255
}

if global.suit_blue < 0
{
global.suit_blue = 0
}


global.suit_col = make_color_rgb(global.suit_red,global.suit_green,global.suit_blue)

