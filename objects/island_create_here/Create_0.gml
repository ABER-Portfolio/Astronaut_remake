/// @description Insert description here
// You can write your code in this editor
if global.island_size = 4
{
image_xscale = (1-point_distance(x,y,room_width*0.5,room_height*0.5)/(room_width-180))*3
image_yscale = (1-point_distance(x,y,room_width*0.5,room_height*0.5)/(room_width-180))*3
}

if global.island_size = 0
{
image_xscale = (1-point_distance(x,y,room_width*0.5,room_height*0.5)/(room_width-180))*2.5
image_yscale = (1-point_distance(x,y,room_width*0.5,room_height*0.5)/(room_width-180))*2.5
}

if global.island_size = -4
{
image_xscale = (1-point_distance(x,y,room_width*0.5,room_height*0.5)/(room_width-180))*1.8
image_yscale = (1-point_distance(x,y,room_width*0.5,room_height*0.5)/(room_width-180))*1.8
}
move_towards_point(room_width*0.5,room_height*0.5,3)