/// @description Insert description here
// You can write your code in this editor
des_time++
if des_time > 60
{
image_alpha -= 0.1
}

if image_alpha <= 0
{
instance_destroy()
}

image_angle += angel_p_speed*angle

