/// @description Insert description here
// You can write your code in this editor
var xx = global._came_vx;
var yy = global._came_vy;

var xxx = global._came_vx_p_w
var yyy = global._came_vy_p_h


if (x > xx-120 && x < xxx+120 && y > yy-120 && y < yyy+120)
{
var camera_xsize = obj_camera.v_x/1280
var camera_ysize = obj_camera.v_y/720

var text_scale = 25
var shape_scale = 38

draw_self()
draw_text_kl_scale(x-(obj_camera.v_x/1280)*190,y-(obj_camera.v_y/720)*60,map_name,100,-1,text_alpha,c_white,-1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*25,(text_scale/shape_scale)*camera_ysize*0.0125*25,0)

if image_index != 0 && map_name != "Broken map file!\nYou cannot open this one"
{
draw_text_kl_scale(x+(obj_camera.v_x/1280)*190,y+(obj_camera.v_y/720)*35,"Last exploration area : ",100,-1,text_alpha,c_yellow,1,1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
draw_text_kl_scale(x+(obj_camera.v_x/1280)*190,y+(obj_camera.v_y/720)*60,string(last_position_name),100,-1,text_alpha,c_white,1,1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)

draw_text_kl_scale(x-(obj_camera.v_x/1280)*190,y-(obj_camera.v_y/720)*10,"Map size : ",100,-1,text_alpha,c_yellow,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*17,(text_scale/shape_scale)*camera_ysize*0.0125*17,0)
draw_text_kl_scale(x-(obj_camera.v_x/1280)*190,y+(obj_camera.v_y/720)*15,string(map_size),100,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)

var loaded_y = date_get_year(date_current_datetime());
if global.map_cre_date_y[setting_num] >= loaded_y || (!file_exists("Astronaut_map_"+string(setting_num)+".ini"))
{
loaded_y = global.map_cre_date_y[setting_num];
}
else
{
map_name = "Broken map file!\nYou cannot open this one"
}
var loaded_m = global.map_cre_date_m[setting_num];
var loaded_d = global.map_cre_date_d[setting_num];
var loaded_h = global.map_cre_date_h[setting_num];
var loaded_min = global.map_cre_date_min[setting_num];





//맵을 1일 전에 생성한 경우
var _time__ = date_create_datetime(loaded_y,loaded_m,loaded_d,loaded_h,loaded_min,0);
var _span_d = floor(date_day_span(_time__,date_current_datetime()));
var _span_h = floor(date_hour_span(_time__,date_current_datetime()) - _span_d*24);
var _span_m = floor(date_minute_span(_time__,date_current_datetime()) - _span_h*60 - (_span_d*1440));


if _span_d > 0
{
var set_text_d = string(_span_d)+"d "
}
else
{
var set_text_d = ""
}


if _span_h > 0
{
var set_text_h = string(_span_h)+"h "
}
else
{
var set_text_h = ""
}


if _span_m > 1
{
var set_text_m = string(_span_m)+"m ago"
}
else
{
var set_text_m = "Just before"
}


draw_text_kl_scale(x-(obj_camera.v_x/1280)*190,y+(obj_camera.v_y/720)*55,string(set_text_d)+string(set_text_h)+string(set_text_m),100,-1,text_alpha,c_white,1,-1,ko_80,(text_scale/shape_scale)*camera_xsize*0.0125*20,(text_scale/shape_scale)*camera_ysize*0.0125*20,0)



draw_sprite_ext(sprite_index,8,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)

}

	if image_index = 0
	{
	draw_sprite_ext(sprite_index,9,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	}
}