/// @description Insert description here
// You can write your code in this editor
randomize()
randomize()
instance_create(x+irandom_range(-2,2),y+irandom_range(-2,2),worm_digging_effect)


if !place_meeting(x,y,worm_small_head) && !place_meeting(x,y,worm_small_body) && can_des = 1
{
instance_destroy()
}