/// @description Insert description here
// You can write your code in this editor
if global.inv_open = 2
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])
var xx_scale = (obj_camera.v_x/1280)/1.8

	if xx+xx_w*1.25 > xx+xx_scale*20+p_x
	{
	var yy_scale = (obj_camera.v_y/720)/1.8

	var box_size = 150
	
	var _rect_xx = xx+103*12*xx_scale+xx_scale*30

	draw_sprite_ext(sprite_index,image_index,_rect_xx+xx_scale*24+p_x,yy+yy_scale*135+box_size*0.5*yy_scale,xx_scale*2,yy_scale*2,image_angle,c_white,image_alpha)
	draw_text_kl_scale(_rect_xx+xx_scale*24+p_x,yy+yy_scale*130+box_size*0.8*yy_scale,string(crafting_time)+"s  ",xx_scale*25,-1,1,c_white,0,0,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,image_angle)
	//draw_text_kl_scale(_rect_xx+xx_scale*24+p_x,yy+yy_scale*130+box_size*0.2*yy_scale,string(t_p_x),xx_scale*25,-1,1,c_white,0,0,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,image_angle)
	}
}