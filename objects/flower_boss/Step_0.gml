/// @description Insert description here
// You can write your code in this editor
var _is_server = true
if global.co_op_mode = 1
{
	if co_op_code.is_server = false
	{
	_is_server = false
	}
}




if searched = 0.5
{
global.black_blind = 1
global.playing_scene = 1
global.do_not_move2 = 1
	if obj_camera.b_blind > 1.28
	{
	var target_ = player
		if global.co_op_mode = 1 && co_op_code.is_server = false
		{
		target_ = player_co_op
		}
	target_.x = x + 140
	target_.y = y
	searched = 0.51
	global.black_blind = 0
	}
}

if searched = 0.51
{
var _choice_ = instance_create(x,y,draw_choice_text)
_choice_.can_skip_solo = 0
_choice_.text_1 = "Cut the petals"
_choice_.text_2 = "Cancle"
	if global.language = 1
	{
	_choice_.text_1 = "꽃잎을 자른다"
	_choice_.text_2 = "취소하기"
	}
searched = 0.52
}

if searched = 0.52 && instance_number(draw_choice_text) = 0
{
	if global.choice_choosed = 1
	{
	searched = 1
	}
	else
	{
	searched = 0
	}
global.do_not_move2 = 0
global.playing_scene = 0
}



if _is_server = true
{
global.flower_boss_x = x
global.flower_boss_y = y

if dilay = 0
{
	if place_meeting(x,y,bomb_site)
	{
	m_damaged(other,4,25,c_gray,self,3,2)
	}
}

var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h

if (x > xx-global.chunk_size*100 && x < xxx+global.chunk_size*100 && y > yy-global.chunk_size*100 && y < yyy+global.chunk_size*100)
{
	if woke_up < 1 && searched = 1 && point_distance(x,y,obj_camera.x,obj_camera.y) < 300
	{
	woke_up += 0.005
	
		if global.flower_boss_raid_start = 0
		{
		global.flower_boss_raid_start = 1
		var _boss_name = instance_create(x,y,draw_boss_name)
		_boss_name.text = "King flowery"
		
		
			if buffer_exists(chat_buffer)
			{
			buffer_seek(chat_buffer, buffer_seek_start, 0);
			buffer_write(chat_buffer, buffer_u8, DATA.FL_BOSS_RAID_START);
			buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
			send_all(chat_buffer);
			};
		}
	}
}
}