///scale_shake()
///@param scale




if step_for_scale_shake = 0
{
image_xscale += (original_scale*1.2 - image_xscale)/3
image_yscale += (original_scale*1.2 - image_yscale)/3

	if point_distance(image_xscale,image_yscale,original_scale*1.2,original_scale*1.2) < 0.01
	{
	step_for_scale_shake ++
	}
}


if step_for_scale_shake = 1
{
image_xscale += (original_scale*0.77 - image_xscale)/2.9
image_yscale += (original_scale*0.77 - image_yscale)/2.9
	if point_distance(image_xscale,image_yscale,original_scale*0.77,original_scale*0.77) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 2
{
image_xscale += (original_scale*1.13 - image_xscale)/3.3
image_yscale += (original_scale*1.13 - image_yscale)/3.3
	if point_distance(image_xscale,image_yscale,original_scale*1.13,original_scale*1.13) < 0.01
	{
	step_for_scale_shake ++
	}
}


if step_for_scale_shake = 3
{
image_xscale += (original_scale*0.85 - image_xscale)/3.2
image_yscale += (original_scale*0.85 - image_yscale)/3.2
	if point_distance(image_xscale,image_yscale,original_scale*0.85,original_scale*0.85) < 0.01
	{
	step_for_scale_shake ++
	}
}


if step_for_scale_shake = 4
{
image_xscale += (original_scale*1.07 - image_xscale)/3.8
image_yscale += (original_scale*1.07 - image_yscale)/3.8
	if point_distance(image_xscale,image_yscale,original_scale*1.07,original_scale*1.07) < 0.01
	{
	step_for_scale_shake ++
	}
}


if step_for_scale_shake = 5
{
image_xscale += (original_scale*0.96 - image_xscale)/4.56
image_yscale += (original_scale*0.96 - image_yscale)/4.56
	if point_distance(image_xscale,image_yscale,original_scale*0.96,original_scale*0.96) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 6
{
image_xscale += (original_scale*1.025 - image_xscale)/5.21
image_yscale += (original_scale*1.025 - image_yscale)/5.21
	if point_distance(image_xscale,image_yscale,original_scale*1.025,original_scale*1.025) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 7
{
image_xscale += (original_scale*0.99 - image_xscale)/5.978
image_yscale += (original_scale*0.99 - image_yscale)/5.978
	if point_distance(image_xscale,image_yscale,original_scale*0.99,original_scale*0.99) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 8
{
image_xscale += (original_scale*1.01 - image_xscale)/6.42
image_yscale += (original_scale*1.01 - image_yscale)/6.42
	if point_distance(image_xscale,image_yscale,original_scale*1.01,original_scale*1.01) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 9
{
image_xscale += (original_scale*0.995 - image_xscale)/6.42
image_yscale += (original_scale*0.995 - image_yscale)/6.42
	if point_distance(image_xscale,image_yscale,original_scale*0.995,original_scale*0.995) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 10
{
image_xscale += (original_scale*1.003 - image_xscale)/6.42
image_yscale += (original_scale*1.003 - image_yscale)/6.42
	if point_distance(image_xscale,image_yscale,original_scale*1.003,original_scale*1.003) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 11
{
image_xscale += (original_scale*0.9999 - image_xscale)/7.01
image_yscale += (original_scale*0.9999 - image_yscale)/7.01
	if point_distance(image_xscale,image_yscale,original_scale*0.9999,original_scale*0.9999) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 12
{
image_xscale += (original_scale*1.00001 - image_xscale)*0.125
image_yscale += (original_scale*1.00001 - image_yscale)*0.125
	if point_distance(image_xscale,image_yscale,original_scale*1.00001,original_scale*1.00001) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 13
{
image_xscale += (original_scale*0.999999999 - image_xscale)/8.67
image_yscale += (original_scale*0.999999999 - image_yscale)/8.67
	if point_distance(image_xscale,image_yscale,original_scale*0.999999999,original_scale*0.999999999) < 0.01
	{
	step_for_scale_shake ++
	}
}

if step_for_scale_shake = 14
{
image_xscale += (original_scale*1.0000001 - image_xscale)/9.21
image_yscale += (original_scale*1.0000001 - image_yscale)/9.21
	if point_distance(image_xscale,image_yscale,original_scale*1.0000001,original_scale*1.0000001) < 0.01
	{
	step_for_scale_shake ++
	}
}


if step_for_scale_shake = 15
{
image_xscale += (original_scale - image_xscale)/11
image_yscale += (original_scale - image_yscale)/11
}