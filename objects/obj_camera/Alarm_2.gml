/// @description 남은시간 변수설정

//부활쿨타임 설정하는건 code오브젝트에서 스텝에 있음
if global.knocked_out != 0
{
alarm[2] = 30
}

if t_time_left > 0
{
t_time_left --
}

