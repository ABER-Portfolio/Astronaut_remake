if global.drawing_cancle_ui = 0
{
var camera_xscale = obj_camera.v_x/1280;
var xx = camera_get_view_x(view_camera[0]);
var yy_ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-25*camera_xscale;


if(global.chat_activity = true)
{
	draw_sprite_ext(sprite_index,0,xx-2,yy_+20*camera_xscale,13*camera_xscale,5*camera_xscale,0,c_white,0.55)
	draw_text_kl_scale(xx+16*camera_xscale, yy_-10*camera_xscale, string(text)+"|", 200*camera_xscale, 99999,alpha_1,c_white,-1,-1,ko_80,0.2*camera_xscale, 0.2*camera_xscale, 0);
	
	
	for(var i = 0; i < 10; i++)
	{
	draw_text_kl_scale(xx+16*camera_xscale, yy_ - 60*camera_xscale - i * 24*camera_xscale, string(chat[i]), 200*camera_xscale, 99999,1,c_white,-1,-1,ko_80, 0.2*camera_xscale, 0.2*camera_xscale, 0);
	}
}


if(global.recently_entered_chat_m >= 1) && (global.chat_activity = false)
{
	if global.recently_entered_chat_m < 10
	{
		for(var i = 0; i < global.recently_entered_chat_m; i++)
		{
		draw_text_kl_scale(xx+16*camera_xscale, yy_ - 60*camera_xscale - 24*i*camera_xscale, string(chat[i]), 200*camera_xscale, 99999,alpha_2,c_white,-1,-1,ko_80, 0.2*camera_xscale, 0.2*camera_xscale, 0);
		}
	}
	else
	{
		for(var i = 0; i < 10; i++)
		{
		draw_text_kl_scale(xx+16*camera_xscale, yy_ - 60*camera_xscale - 24*i*camera_xscale, string(chat[i]), 200*camera_xscale, 99999,alpha_2,c_white,-1,-1,ko_80, 0.2*camera_xscale, 0.2*camera_xscale, 0);
		}
	}
	draw_text_kl_scale(xx+16*camera_xscale, yy_ - 60*camera_xscale + 35*camera_xscale, "( Press Enter to open the chat )", 200*camera_xscale, 99999,alpha_2,c_white,-1,-1,ko_80, 0.14*camera_xscale, 0.14*camera_xscale, 0);
}
}
//draw_sprite_ext(sprite_index,0,xx,yy_,10,10,0,c_white,0.7)
