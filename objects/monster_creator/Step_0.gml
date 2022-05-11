/// @description Insert description here
// You can write your code in this editor

if global.dev_mode = 1
{
image_alpha = 1
}
else
{
image_alpha = 0
}




if global.n_room <= 1 && instance_number(creating_maps) = 0
{
	if instance_number(co_op_code) > 0
	{
		if co_op_code.is_server = true && (global.knocked_out = 0 || global.knocked_out_co_op = 0)
		{	
			if instance_number(objLightManager) > 0
			{
				if objLightManager.day_light.alpha > 0.12
				{
					if global.night != 0
					{
					global.night = 0
					if global.rainy = 0
					{
					global.rainy = percentage_k(30)
					}
					else
					{
					global.rainy = percentage_k(70)
					}
					global.smog = percentage_k(13)
					buffer_seek(chat_buffer, buffer_seek_start, 0);
					buffer_write(chat_buffer, buffer_u8, DATA.SEND_SMOG_CONDITION);
					buffer_write(chat_buffer, buffer_string, global.smog);
					send_all(chat_buffer);

					
					
						if global.rainy = 1
						{
						var _random_wind = percentage_k(70)
							
							if _random_wind = 1
							{
							global.t_wind_dir = irandom_range(-100,100)/10
							}
							else
							{
							global.t_wind_dir = 0
							}
						}
					}
					
					if meteor_dilay != 0
					{
					meteor_dilay = 0
					}
				}
				else
				{
					if global.night != 1
					{
					global.night = 1
					}
				}
			
				if global.meteor_num < 3 && meteor_dilay = 0 && objLightManager.day_light.alpha < 0.1
				{
				meteor_dilay = 1
					if global.survived_days < 12
					{
					var random_meteor_cre = percentage_k(5+global.survived_days)
					}
					else
					{
					var random_meteor_cre = percentage_k(17)
					}
				
					if random_meteor_cre = 1
					{
					global.meteor_num ++
					instance_create(mouse_x,mouse_y,meteor_island)
					}
				}
			}
		}
	}
}