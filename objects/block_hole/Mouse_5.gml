/// @description Insert description here
// You can write your code in this editor
var target_ = player
if global.co_op_mode = 1 && co_op_code.is_server = false
{
target_ = player_co_op
}

if clicked = 0
{
	if point_distance(x,y,target_.x,target_.y) < 22
	{
	var _choice_ = instance_create(x,y,draw_choice_text)
	_choice_.can_skip_solo = 1
	_choice_.text_1 = "Enter the cave"
	_choice_.text_2 = "Cancle"
	if global.language = 1
	{
	_choice_.text_1 = "동굴에 들어간다"
	_choice_.text_2 = "취소하기"
	}

	clicked = 0.5
	}
}