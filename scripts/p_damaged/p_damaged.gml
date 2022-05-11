///@param damage
///@param armor_ignore
///@param can_move_time
///@param can_damaged_time
///@param spin_ignore
var target_ = 0
var c_damage = 0
var get_damage_ = argument0


target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}


if argument4 = false
{
	if target_.spin = 0
	{
	c_damage = 1
	}
}
else
{
c_damage = 1
}


if c_damage = 1 && global.knocked_out = 0 && global.do_not_move = 0 && global.revived_now = 0
{
	if instance_number(target_) > 0 && (object_index = block_laser || (object_index != block_laser && place_meeting(x,y,target_))) && target_.damage_dilay = 0
	{
	code.before_hp = global.hp
	
	if argument1 = true
	{
		if get_damage_ != 0
		{
		global.hp -= 1
		obj_camera.hurted_alpha = 1
		}
	}
	else
	{
	var random_defence_damage = percentage_k(global.armor+global.accessory_defence)
	
		if random_defence_damage != 1
		{
			if get_damage_ != 0
			{
			global.hp -= 1
			obj_camera.hurted_alpha = 1
			}
		}
	}
	
	if object_index = poison_spike && global.de_poisoning <= 0
	{
	global.poisoning ++
	}
	
	if object_index = slime || object_index = tiny_slime
	{
	var random_slow = percentage_k(30)
		if random_slow = 1
		{
		global.slow_movement += irandom_range(8,11)
		}
	
	var random_slow = percentage_k(20)
		if random_slow = 1
		{
			if self.sprite_index = spr_slime_red || self.sprite_index = spr_slime_red1
			{
			global.radiation += irandom_range(2,4)
			}
			
			if self.sprite_index = spr_slime_purple || self.sprite_index = spr_slime_purple1
			{
			global.poisoning += irandom_range(2,4)
			}
			
			if self.sprite_index = spr_slime_ice || self.sprite_index = spr_slime_ice1
			{
			global.temperature -= irandom_range(10,30)/10
			}
			
			if self.sprite_index = spr_slime_desert || self.sprite_index = spr_slime_desert1
			{
			global.temperature += irandom_range(10,30)/10
			}
		}
	}
	
	if object_index = electric_rod || object_index = electric_battery
	{
		if point_distance(x,y,target_.x,target_.y) > 64
		{
		randomize()
		target_x = x+irandom_range(-64,64)
		randomize()
		target_y = y+irandom_range(-64,64)
		}
		else
		{
		randomize()
		target_x = target_.x
		randomize()
		target_y = target_.y
		}
	}
	
	
	if object_index = gun_bullet_enemy
	{
	instance_destroy()
	}
	
	
	
	/////////////////////////////////////////////
	target_.cannot_move = 1
	if target_.spin > 0
	{
	target_.spin = 14
	}
	target_.damage_dilay = 1
	target_.alarm[10] = argument2
	target_.alarm[11] = argument3
	if sign(global.movement_speed) != 0
	{
	global.movement_speed = -(sign(global.movement_speed))
	}
	else
	{
	global.movement_speed = (image_xscale)
	}
	global.hmovement_speed = -(sign(global.hmovement_speed))*0.85
	
		if (!position_meeting(target_.x+4,target_.y+16,fl_parents)) || (!position_meeting(target_.x-4,target_.y+16,fl_parents)) || (!position_meeting(target_.x,target_.y+16,fl_parents)) || (!position_meeting(target_.x,target_.y,fl_parents)) || place_meeting(target_.x+4,target_.y+4,block_parents) || place_meeting(target_.x-4,target_.y+4,block_parents) || place_meeting(target_.x+4,target_.y+16,block_parents) || place_meeting(target_.x-4,target_.y+16,block_parents)
		{
		target_.hspeed = 0
		target_.vspeed = 0
		}
	//show_message("damaged")
	}
}



