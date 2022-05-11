/// @description Insert description here
// You can write your code in this editor
for(var ii = 0; ii < irandom_range(32,64); ii++)
{
randomize()
var movement_ef = instance_create(x,y,dust);
	with(movement_ef)
	{
	move_snap(32,32)
	}
movement_ef.x += irandom_range(-10,10)
movement_ef.y += irandom_range(-10,10)
movement_ef.ahspeed = irandom_range(-10,10)
movement_ef.avspeed = irandom_range(-10,10)
movement_ef.depth = depth-1
movement_ef.received = 1
}


for(var i = 0; i < 360; i += 20)
{	
	for(var iii = 0; iii < length; iii++)
	{
	var bomb_site_ = instance_create(x+lengthdir_x(iii,i),y+lengthdir_y(iii,i),bomb_site);
		with(bomb_site_)
		{
		move_snap(32,32)
		}
	
		for(var ii = 0; ii < choose(1,1,2,2,3); ii++)
		{
		randomize()
		var movement_ef = instance_create(x+lengthdir_x(iii,i),y+lengthdir_y(iii,i),dust);
			with(movement_ef)
			{
			move_snap(32,32)
			}
		movement_ef.x += irandom_range(-10,10)
		movement_ef.y += irandom_range(-10,10)
		movement_ef.ahspeed = irandom_range(-10,10)/10
		movement_ef.avspeed = irandom_range(-10,10)/10
		movement_ef.depth = depth-1
		movement_ef.received = 1
		}
	}
}