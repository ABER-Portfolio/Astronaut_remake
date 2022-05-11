/// @description Insert description here
// You can write your code in this editor
depth = -99999
x += (t_x - x)*0.1
y += (t_y - y)*0.1

x += (mouse_x - x)*0.005
y += (mouse_y - y)*0.004


if global.goggles_red > 255
{
global.goggles_red = 255
}

if global.goggles_red < 0
{
global.goggles_red = 0
}

if global.goggles_green > 255
{
global.goggles_green = 255
}

if global.goggles_green < 0
{
global.goggles_green = 0
}

if global.goggles_blue > 255
{
global.goggles_blue = 255
}

if global.goggles_blue < 0
{
global.goggles_blue = 0
}