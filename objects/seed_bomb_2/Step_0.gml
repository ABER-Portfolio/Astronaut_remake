/// @description Insert description here
// You can write your code in this editor
depth = -(floor_y+5)
image_alpha += (1 - image_alpha)*0.1
hspeed += (0 - hspeed)*0.01


if on_floor = 1
{
	if instance_number(player) > 0
	{
	p_damaged(0,true,45,60,false)
	}
}


if on_floor = 0 && y >= floor_y && vspeed > 0 && gravity != 0
{
y = floor_y

vspeed = -bounce
bounce -= 1

	if bounce <= 0
	{
	gravity = 0
	vspeed = 0
	hspeed = 0
	bounce = 0
	on_floor = 1
	}
}

w_alpha ++

if w_alpha > alpha_checked
{
w_alpha = 0
alpha_checked -= 5
var sound_break_effect = audio_play_sound(bomb_beep,2,false)
audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)
}

if alpha_checked < 10
{
	if co_op_code.is_server = true
	{
	var _bomb_ef_ = instance_create(x,y,bomb_fire_effect)
	_bomb_ef_.length = 24
	_bomb_ef_.received = 0
	_bomb_ef_.time = 0
	}

instance_destroy()
}




if co_op_code.is_server = true
{
	if buffer_exists(chat_buffer)
	{	
	buffer_seek(chat_buffer, buffer_seek_start, 0);

	buffer_write(chat_buffer, buffer_u8, DATA.HUMAN_KIND_MOB_STATE);
	buffer_write(chat_buffer, buffer_string, object_index);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, sprite_index);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, image_speed);
	buffer_write(chat_buffer, buffer_string, image_index);
	buffer_write(chat_buffer, buffer_string, image_alpha);
	buffer_write(chat_buffer, buffer_string, image_angle);
	buffer_write(chat_buffer, buffer_string, image_blend);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, depth);
	buffer_write(chat_buffer, buffer_string, gravity);
	buffer_write(chat_buffer, buffer_string, vspeed);
	buffer_write(chat_buffer, buffer_string, hspeed);
	buffer_write(chat_buffer, buffer_string, hp);
	send_all(chat_buffer);
	};
};