/// @description Insert description here
// You can write your code in this editor
if global.drawing_cancle_ui = 0
{
if draw_healing = 0
{
	if over_damage = 0
	{
	draw_text_kl_scale(x,y,string(damage),((obj_camera.v_x/1280)*1.5)*15,-1,image_alpha,$FF1E9DFF,0,0,ko_80,(obj_camera.v_x/1280)*0.025*8,(obj_camera.v_x/1280)*0.025*8,angle)
	}
	else
	{
	draw_text_kl_scale(x,y,string(damage),((obj_camera.v_x/1280)*1.5)*15,-1,image_alpha,$FF6D19FF,0,0,ko_80,(obj_camera.v_x/1280)*1.2*0.025*8,(obj_camera.v_x/1280)*1.2*0.025*8,angle)
	}
}
else if draw_healing = 1
{
draw_text_kl_scale(x,y,string(damage),((obj_camera.v_x/1280)*1.5)*15,-1,image_alpha,$FF57D87E,0,0,ko_80,(obj_camera.v_x/1280)*0.025*8,(obj_camera.v_x/1280)*0.025*8,angle)
}
else
{
draw_text_kl_scale(x,y,string(damage),((obj_camera.v_x/1280)*1.5)*15,-1,image_alpha,$FFF4C91F,0,0,ko_80,(obj_camera.v_x/1280)*0.025*8,(obj_camera.v_x/1280)*0.025*8,angle)
}
}