draw_self()

if global.drawing_cancle_ui = 0
{
alpha += (1.01 - alpha)/7

draw_sprite_ext(sprite156,0,x-5.5,y+13,1,1,0,c_white,alpha)

draw_sprite_ext(sprite156,1,x-4.5,y+13,hp_t/max_hp,1,0,c_white,alpha)

draw_sprite_ext(sprite156,2,x-4.5,y+13,hp/max_hp,1,0,c_white,alpha)

}


//draw_text(x,y,string(paturn))