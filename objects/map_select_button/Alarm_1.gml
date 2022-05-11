/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;


//var text_scale = 25
//var shape_scale = 32
var text_space = 200
var first_text_space = 170


x = xx+(obj_camera.v_x/1280)*640
y = yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space)
t_x = xx+(obj_camera.v_x/1280)*640
t_y = yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space)
saved_t_y = yy+(obj_camera.v_y/720)*first_text_space+(setting_num*text_space)

ini_open("Astronaut_map_pro_"+string(setting_num)+".ini")

map_size = ini_read_real("map_size","a",0);

ini_close();

if map_size = 0
{
map_size = "unknown"
}
else if map_size = 5120
{
map_size = "Small"
}
else if map_size = 5760
{
map_size = "Medium"
}
else if map_size = 6400
{
map_size = "Large"
}
else if map_size = 7040
{
map_size = "Larger"
}
else
{
map_size = "Largest"
}