/// @description Insert description here
// You can write your code in this editor
var test_log = instance_create(x,y,mid_massage_log)
test_log.message = "You can make more things with the workbenches"
test_log.text_height = 3
test_log.drawing_mode = -1

mid_massage_log.alarm[1] = 300
global.tutorial = -1

ini_open("Astronaut_remake_setting.ini")

//튜토리얼
ini_write_real("tutorial","done",global.tutorial)

ini_close();

instance_destroy()