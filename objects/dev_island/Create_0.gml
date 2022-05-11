/// @description Insert description here
// You can write your code in this editor
global.island_size = room_height
var gl_is_size = global.island_size

xx = -30
yy = -30

for(var i = 0; i < 99999; i++)
{
instance_create(x+((xx+gl_is_size)*32),y+((yy+gl_is_size)*32),floor_pl0)
}