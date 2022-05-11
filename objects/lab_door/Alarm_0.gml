/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);

if door_keycard = 1
{
	if x = 7808-5760+global.room_size && y = 576-64
	{
	laser = instance_create(x-15,y+32,block_laser)
	laser.received = 0
	laser.width = 3.5
	laser.x2 = x
	laser.y2 = y
	laser.direction = 0
	laser.own_damage = 1
	}
	else
	{
	laser = instance_create(x+15,y-32,block_laser)
	laser.received = 0
	laser.width = 3.5
	laser.x2 = x
	laser.y2 = y
	laser.direction = 180
	laser.own_damage = 1
	}
}



if door_keycard = 2
{
	if x = 6720-5760+global.room_size && y = 1184
	{
	laser = instance_create(x-15,y+32,block_laser)
	laser.received = 0
	laser.width = 3.5
	laser.x2 = x
	laser.y2 = y
	laser.direction = 0
	laser.own_damage = 1
	}
	else
	{
	laser = instance_create(x+64,y+18-32-16,block_laser)
	laser.received = 0
	laser.width = 3.5
	laser.x2 = x
	laser.y2 = y
	laser.direction = 270
	laser.own_damage = 1
	}
}





if door_keycard = 3
{
laser = instance_create(x-16-64,y-15-16+1,block_laser)
laser.received = 0
laser.width = 3.5
laser.x2 = x
laser.y2 = y
laser.direction = 270
laser.own_damage = 1
}




if door_keycard = noone
{
laser = instance_create(x-15-32,y-32,block_laser)
laser.received = 0
laser.width = 3.5
laser.x2 = x
laser.y2 = y
laser.direction = 180
laser.own_damage = 1
}




if image_index = 3
{
laser = instance_create(x-16-32,y-32,block_laser)
laser.received = 0
laser.width = 3.5
laser.x2 = x
laser.y2 = y
laser.direction = 180
laser.own_damage = 1
}