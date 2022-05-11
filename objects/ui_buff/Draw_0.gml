if global.playing_scene = 0
{
	if global.drawing_cancle_ui = 0
	{
	var camera_xscale = obj_camera.v_x/1280
	var camera_yscale = obj_camera.v_y/720
	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])+220*camera_yscale

	var image_size = 1

	draw_sprite_ext(sprite_index,image_index,xx+camera_xscale*24*image_size,yy+(camera_yscale*48*image_size*t_y),image_size*camera_xscale,image_size*camera_yscale,0,c_white,image_alpha)
	draw_text_kl_scale(xx+camera_xscale*45*image_size,yy+(camera_yscale*44*image_size*t_y),string(text),40,-1,0.7*text_alpha*image_alpha,c_white,0,-1,ko_80,0.175*camera_xscale,0.175*camera_yscale,0)
	draw_text_kl_scale(xx+camera_xscale*45*image_size,yy+(camera_yscale*44*image_size*t_y),string(left_time+0.0001),40,-1,0.7*left_time_alpha*image_alpha,c_white,0,-1,ko_80,0.175*camera_xscale,0.175*camera_yscale,0)
	}
}
