/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(pl_shadow,image_index,floor(x),floor(floor_y),image_xscale*0.8*abs((y-floor_y)/64),image_yscale*0.4*abs((y-floor_y)/96),0,c_white,0.3*(1-abs((y-floor_y)/96)))
draw_self()