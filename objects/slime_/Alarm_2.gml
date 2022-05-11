/// @description Insert description here
// You can write your code in this editor
if (!position_meeting(x+image_xscale*32,y+image_yscale*48,fl_parents)) || (!position_meeting(x-image_xscale*4,y+image_yscale*48,fl_parents)) || (!position_meeting(x,y,fl_parents)) || (!position_meeting(x,y+image_yscale*32,fl_parents))
{
x = b_x
y = b_y
}

b_x = x
b_y = y

alarm[2] = 5