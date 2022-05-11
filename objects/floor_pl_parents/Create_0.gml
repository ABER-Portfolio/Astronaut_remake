/// @description Insert description here
// You can write your code in this editor
chat_buffer = buffer_create(2, buffer_grow, 1);
image_speed = 0

if instance_number(creating_maps) > 0
{
received = 1
}

alarm[5] = 1


//바닥 그리기 최적화
floor_img_ind = 0
floor_img_ang = 0
alarm[9] = 1 


//바닥 벽 그리기 최적화
floor_wall_img_ind = 0
floor_wall_xscale = 0
draw_water = 0


_img_ble = c_black
inview = false
image_xscale = 0.5
image_yscale = 0.5
image_speed = 0


move_snap(32, 32);
depth = room_width*1.5-y
if place_meeting(x,y,fl_parents)
{
instance_destroy()
}


if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
	audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
	audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
	}
}

alarm[1] = 1
alarm[10] = 60
alarm[8] = 20

y_1 = 0
y_2 = 0

y_3 = 0



//바닥 파인 이미지 그리기
	if (instance_number(creating_maps) && creating_maps.new_map = 1) || instance_number(create_cave) > 0 || instance_number(create_lab) > 0
	{
	draw_tiles_on_the_floor = irandom_range(0,15)
	}
random_tiles_on_the_floor = irandom_range(0,5)
random_xscale = choose(-1,1)


if x > room_width || x < 0 || y > room_height || y < 0
{
instance_destroy()
}