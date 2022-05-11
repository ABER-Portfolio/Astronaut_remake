/// @description Insert description here
// You can write your code in this editor
var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}

if global.playing_scene = 0 && point_distance(x+25,y+32,target_.x,target_.y) < 20
{
	if choice = 0
	{
	var _choice_ = instance_create(x,y,draw_choice_text)
	_choice_.can_skip_solo = 1
	_choice_.text_1 = "Fall asleep"
	_choice_.text_2 = "Cancle"
		if global.language = 1
		{
		_choice_.text_1 = "오늘은 이만 잔다"
		_choice_.text_2 = "취소하기"
		}
	choice = 0.5
	}
}
