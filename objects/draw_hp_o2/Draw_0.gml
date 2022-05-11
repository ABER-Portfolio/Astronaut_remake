if global.drawing_cancle_ui = 0 && global.playing_scene = 0 && obj_camera.scene_cancle_cooltime > 4
{
	if instance_number(code) > 0
	{
	var cm_vx = obj_camera.v_x/1280
	var xx_ = camera_get_view_x(view_camera[0])
	var xxx = xx_ + (cm_vx)*16
	var yyy = camera_get_view_y(view_camera[0]);

	var yy_ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])


	//하트갯수 드로우
	//draw_text_kl_scale(xxx+x_plus*5,yyy+yy*0.5,"Life : "+string(floor((global.hp-1)*10))+" / "+string(floor((global.max_hp-1)*10)),((obj_camera.v_x/1280)*1.5)*25,-1,1,c_white,0,0,ko_80,(obj_camera.v_x/1280)*0.25*0.025*25,(obj_camera.v_y/720)*0.25*0.025*25,0)
	//산소갯수 드로우
	//draw_text_kl_scale(xxx+x_plus*5,yyy+yy*2.2,"Oxygen : "+string(floor((global.o2-1)*10))+" / "+string(floor((global.max_o2-1)*10)),((obj_camera.v_x/1280)*1.5)*25,-1,1,c_white,0,0,ko_80,(obj_camera.v_x/1280)*0.25*0.025*25,(obj_camera.v_y/720)*0.25*0.025*25,0)


	var image_size = 1

	var return_num = 0


	if global.hp > 0
	{
		for(var i = 1; i < 7; i += 1)
		{
		return_num ++
		draw_sprite_ext(sprite_index,image_index,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-return_num)
		var injured_effect = code.injured_effect
			if injured_effect%2 = 1
			{
				if instance_number(player) > 0
				{
				draw_sprite_ext(sprite_index,1,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-return_num)
				}
			}
		}
	}


	hp_warning_alpha += (-0.01 - hp_warning_alpha)*0.1
	if global.hp < 3
	{
		if hp_warning_alpha > 0
		{
		draw_sprite_ext(sprite_index,8,xxx+x_plus*(1),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,hp_warning_alpha)
		}
	
	
	hp_warning ++
		if hp_warning > 30
		{
		hp_warning = 0
		hp_warning_alpha = 1
		}
	}


	var return_num = 0
	if global.hp > 7
	{
		for(var i = 1; i < 7; i += 1)
		{
		draw_sprite_ext(sprite_index,image_index,xxx+x_plus*(i),yyy+yy*2.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,1)

		return_num ++
		draw_sprite_ext(sprite_index,6,xxx+x_plus*(return_num),yyy+yy*2.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-10-return_num)
		var injured_effect = code.injured_effect
			if injured_effect%2 = 1
			{
				if instance_number(player) > 0
				{
				draw_sprite_ext(sprite_index,1,xxx+x_plus*(return_num),yyy+yy*2.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-10-return_num)
				}
			}
		}
	}


	var return_num = 0
	if global.hp > 13
	{
		for(var i = 1; i < 7; i += 1)
		{
		draw_sprite_ext(sprite_index,6,xxx+x_plus*(i),yyy+yy*3.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,1)

		return_num ++
		draw_sprite_ext(sprite_index,9,xxx+x_plus*(return_num),yyy+yy*3.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-20-return_num)
		var injured_effect = code.injured_effect
			if injured_effect%2 = 1
			{
				if instance_number(player) > 0
				{
				draw_sprite_ext(sprite_index,1,xxx+x_plus*(return_num),yyy+yy*3.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-20-return_num)
				}
			}
		}
	}




	draw_sprite_ext(sprite_index,3,xx_+cm_vx*48,yyy+cm_vx*(160+48),image_xscale/image_size*0.75,image_yscale/image_size*0.75,0,c_white,1)
	draw_text_kl_scale(xx_+cm_vx*70,yyy+cm_vx*(156+48),string(((o2_-1)/global.max_o2)*100)+"%",40,-1,1,c_white,0,-1,ko_80,image_xscale*cm_vx,image_yscale*cm_vx,0)


	//draw_sprite_ext(stemina_bar,0,xx_+cm_vx*32,yy_-cm_vx*32,cm_vx,cm_vx*1.1,0,c_white,1)
	//draw_sprite_ext(stemina_bar,3,xx_+cm_vx*32,yy_-cm_vx*37,cm_vx,cm_vx*1.1*((o2_healing_gage_ef-1)/(global.max_o2-1)),0,c_white,1)
	//draw_sprite_ext(stemina_bar,2,xx_+cm_vx*32,yy_-cm_vx*37,cm_vx,cm_vx*1.1*((o2_-1)/(global.max_o2-1)),0,c_white,1)
	//draw_sprite_ext(stemina_bar,1,xx_+cm_vx*32,yy_-cm_vx*37,cm_vx,cm_vx*1.1,0,c_white,1)


	draw_sprite_ext(spr_pickaxe_center_origin,3,xx_+cm_vx*32,yy_-cm_vx*16,cm_vx*0.25,cm_vx*0.25,0,c_white,stemina_change_alpha)
	draw_sprite_ext(stemina_bar,0,xx_+cm_vx*32,yy_-cm_vx*32,cm_vx,cm_vx,0,c_white,stemina_change_alpha)
	draw_sprite_ext(stemina_bar,3,xx_+cm_vx*32,yy_-cm_vx*37,cm_vx,cm_vx*(stemina_healing_gage_ef/global.max_stemina),0,c_white,stemina_change_alpha)
	draw_sprite_ext(stemina_bar,4,xx_+cm_vx*32,yy_-cm_vx*37,cm_vx,cm_vx*(stemina_/global.max_stemina),0,c_white,stemina_change_alpha)
	draw_sprite_ext(stemina_bar,1,xx_+cm_vx*32,yy_-cm_vx*37,cm_vx,cm_vx,0,c_white,stemina_change_alpha)

	}
}