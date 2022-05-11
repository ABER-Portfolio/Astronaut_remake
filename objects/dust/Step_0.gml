/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.015


if image_alpha <= 0
{
instance_destroy()
}


avspeed += (0 - avspeed)/15
ahspeed += (0 - ahspeed)/15

x += avspeed
y += ahspeed

x += global.wind_dir*0.1