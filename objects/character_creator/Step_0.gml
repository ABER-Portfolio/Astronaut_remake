/// @description Insert description here
// You can write your code in this editor
depth = -13

if can_do_step_event = 1
{
w_alpha += (-0.01 - w_alpha)*0.1
p_t_x = t_x+142
p_t_y = t_y-180
x += (t_x - x)*0.1
y += (t_y - y)*0.1

y += (mouse_y - y)*0.004
x += (mouse_x - x)*0.005

p_x += (p_t_x - p_x)*0.1
p_y += (p_t_y - p_y)*0.1

p_y += (mouse_y - p_y)*0.004
p_x += (mouse_x - p_x)*0.005

p_angle += (p_t_angle - p_angle)*0.01
p_t_angle += (t_p_t_angle - p_t_angle)*0.05

	if image_index != 2
	{

	p_img_ind += 0.25
		if p_img_ind > 11
		{
		p_img_ind -= 11
		}

		if global.gender = 0
		{
		sp_abil_text = "Max stemina +10"
		}
		else
		{
		sp_abil_text = "Max oxygen +10"
		}
	}
	else
	{
		if instance_number(option_map_size) > 0
		{
			if option_map_size.pressed = 3
			{
				if global.language = 0
				{
				sp_abil_text = "It can be stopped depending on your device"
				}
				else
				{
				sp_abil_text = "기기에 따라 멈춤 현상이 발생할수있습니다"
				}
			}
			else if option_map_size.pressed = 4
			{
				if global.language = 0
				{
				sp_abil_text = "This setting is for the low spec devices."
				}
				else
				{
				sp_abil_text = "저사양 기기를 위한 설정입니다."
				}
			}
			else
			{
			sp_abil_text = ""
			}
		}
	}
}