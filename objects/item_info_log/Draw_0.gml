/// @description Insert description here
// You can write your code in this editor
var camera_xscale = obj_camera.v_x/1280
var camera_yscale = obj_camera.v_y/720
var xx = global._came_vx_p_w
var yy = global._came_vy_p_h

var xscale = -(64*camera_xscale*4)-(width*camera_xscale)
var yscale = (55*camera_yscale*4)+(height*camera_yscale)
if item_desc != ""
{
	if y+yscale > yy
	{
	flip_y = 1
	}
	else
	{
	flip_y = 0
	}
}
else
{
	if y+yscale-(70*camera_yscale) > yy
	{
	flip_y = 1
	}
	else
	{
	flip_y = 0
	}
}

if x+xscale > xx
{
flip_x = 1
}
else
{
flip_x = 0
}




if item_desc != ""
{
draw_sprite_ext(sprite_index,0,floor(x-(flip_x*(xscale))),floor(y-(flip_y*(yscale))),xscale,yscale-(20*camera_yscale),0,c_white,image_alpha-0.33)
draw_sprite_ext(white_line_with_black_outline,0,x+camera_xscale*112-(flip_x*(xscale)),y+camera_xscale*40-(flip_y*(yscale)),camera_xscale*2,camera_yscale*2,0,c_white,image_alpha)
}
else
{
draw_sprite_ext(sprite_index,0,floor(x-(flip_x*(xscale))),floor(y-(flip_y*(yscale+(70*camera_yscale)))),xscale,yscale-(70*camera_yscale),0,c_white,image_alpha-0.33)
}


if rating = 0
{
var rating_col = c_white
}
else if rating = 1
{
var rating_col = $FF1E9DFF
}
else if rating = 2
{
var rating_col = $FF0F33FF
}
else
{
var rating_col = $FFFF14B8
}




draw_text_kl_scale(floor(x+5*camera_xscale*2-(flip_x*(xscale))),floor(y+5*camera_yscale*2-(flip_y*(yscale))),"  "+item_name,camera_xscale*400,-1,image_alpha,rating_col,-1,-1,ko_80,camera_xscale*0.2,camera_yscale*0.2,0)

draw_text_kl_scale(floor(x+5*camera_xscale*2-(flip_x*(xscale))),floor(y+40*camera_yscale*2-(flip_y*(yscale))),item_desc,camera_xscale*430,-1,image_alpha,rating_col,-1,-1,ko_80,camera_xscale*0.17,camera_yscale*0.17,0)

