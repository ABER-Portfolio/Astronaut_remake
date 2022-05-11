/// @description Insert description here
// You can write your code in this editor
yy = (obj_camera.v_y/720)*48/1.25
x_plus = (obj_camera.v_x/1280)*48
image_xscale = (obj_camera.v_x/1280)*0.75
image_yscale = (obj_camera.v_y/720)*0.75

depth = -room_width*2.89

stemina_ += (global.stemina - stemina_)*0.09
stemina_healing_gage_ef += (stemina_ - stemina_healing_gage_ef)*0.089
o2_healing_gage_ef += (o2_ - o2_healing_gage_ef)*0.089

o2_ += (global.o2 - o2_)*0.09

if global.stemina != b_stemina
{
	if t_stemina_change_alpha = 0
	{
	b_stemina = global.stemina
	t_stemina_change_alpha = 1
	alarm[1] = 80
	}
}

stemina_change_alpha += (t_stemina_change_alpha - stemina_change_alpha)*0.09



