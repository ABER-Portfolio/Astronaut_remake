/// @description 프레임 체킹
// You can write your code in this editor
if global.dev_mode > 0
{
	if sec_plus_frame < fps
	{
	sec_plus_frame ++
		if sec_plus_frame > 0
		{
		average_frames += fps_real
		}
	
		if sec_plus_frame = 0
		{
		average_frames = 0
		}
	}
	else
	{
	sec_plus_frame = -(fps*2)
	}




	if min_plus_frame < (3600)
	{
	min_plus_frame ++
		if min_plus_frame > 0
		{
		average_frames_m += fps_real
		}
	
		if min_plus_frame = 0
		{
		average_frames_m = 0
		}
	}
	else
	{
	min_plus_frame = -(fps*5)
	}


	alarm[5] = 1
}