/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,2,x,floor_y+8,image_xscale*abs(y-floor_y)/96,image_yscale*abs(y-floor_y)/96,0,c_white,0.3*abs(y-floor_y)/256)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1 - abs(y-floor_y)/256)


if w_alpha%5 = 1
{
draw_sprite_ext(sprite_index,3,x,y,image_xscale,image_yscale,image_angle,c_white,1)
var sound_break_effect = audio_play_sound(bomb_beep,2,false)
audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)/320)*global.master_volume*global.sfx_volume*global.scene_volume,0)
}