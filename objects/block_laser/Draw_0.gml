/// @description Insert description here
// You can write your code in this editor

//$FFBDA6EE 연

//$FF5B14EE
draw_set_color($FF5B14EE)
draw_set_alpha(image_alpha*0.6)
draw_line_width(x,y,x2,y2,width*1.4*global.light_scaling*self_scaling)
draw_set_color($FF5B14EE)
draw_set_alpha(image_alpha*0.6)
draw_circle(x2,y2,1.9*width*global.light_scaling*self_scaling*0.92,false)


draw_set_color(c_white)
draw_set_alpha(image_alpha*0.6)
draw_line_width(x,y,x2,y2,width*global.light_scaling*self_scaling*0.5)
draw_set_color(c_white)
draw_set_alpha(image_alpha*0.6)
draw_circle(x2,y2,1.5*width*global.light_scaling*self_scaling*0.7,false)

draw_set_color(c_white)
draw_set_alpha(image_alpha*0.9)
draw_line_width(x,y,x2,y2,width*global.light_scaling*self_scaling*0.27)
draw_set_color(c_white)
draw_set_alpha(image_alpha*0.9)
draw_circle(x2,y2,1.5*width*global.light_scaling*self_scaling*0.53,false)







//draw_set_font(dev_font)
//draw_text(x,y,string(width)+" / "+string(self_scaling))