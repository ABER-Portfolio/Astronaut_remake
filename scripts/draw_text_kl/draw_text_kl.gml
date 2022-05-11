///@description draw_text_k(x, y, string, sep, w, alpha, color, valign, halign, font)
//draw_text_k(x, y, string, sep, w, alpha, color, valign, halign, font)
///@param x
///@param y
///@param string
///@param sep
///@param w
///@param alpha
///@param color
///@param valign
///@param halign
///@param font

////////////////////////////////////////////////////////////////


//폰트설정
draw_set_font(argument9);
//알파설정
draw_set_alpha(argument5);

////////////////////////////////////////////////////////////////

//위치지정
if argument7 != -1 || 0 || 1
{
draw_set_valign(argument7);
}
if argument8 != -1 || 0 || 1
{
draw_set_halign(argument8);
}

if argument7 = -1
{
draw_set_valign(fa_left);
}
if argument8 = -1
{
draw_set_halign(fa_left);
}

if argument7 = 0
{
draw_set_valign(fa_middle);
}
if argument8 = 0
{
draw_set_halign(fa_middle);
}

if argument7 = 1
{
draw_set_valign(fa_right);
}
if argument8 = 1
{
draw_set_halign(fa_right);
}

////////////////////////////////////////////////////////////////////////////

//글씨 드로우
if argument3 > 0 && argument4 < 0
{
//컬러설정
draw_set_color($FF191919&$ffffff);
draw_text_ext(argument0+3,argument1,argument2,argument3,99999999999);
draw_text_ext(argument0,argument1+3,argument2,argument3,99999999999);
draw_text_ext(argument0-3,argument1,argument2,argument3,99999999999);
draw_text_ext(argument0,argument1-3,argument2,argument3,99999999999);
	
	


//컬러설정
draw_set_color(argument6&$ffffff);
draw_text_ext(argument0,argument1,argument2,argument3,99999999999);
}

if argument3 > 0 && argument4 > 0
{
draw_set_color($FF191919&$ffffff);
draw_text_ext(argument0+3,argument1,argument2,argument3,argument4);
draw_text_ext(argument0,argument1+3,argument2,argument3,argument4);
draw_text_ext(argument0-3,argument1,argument2,argument3,argument4);
draw_text_ext(argument0,argument1-3,argument2,argument3,argument4);


//컬러설정
draw_set_color(argument6&$ffffff);
draw_text_ext(argument0,argument1,argument2,argument3,argument4);
}









////////////////MADE BY KUNMAGUN///////////////////////