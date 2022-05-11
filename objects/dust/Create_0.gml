/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = irandom_range(0,image_number)
image_alpha = irandom_range(50,10)/95

if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	image_xscale = (player.image_xscale)/12
	image_yscale = (player.image_yscale)/12
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	image_xscale = (player_co_op.image_xscale)/12
	image_yscale = (player_co_op.image_yscale)/12
	}
}

var angle = irandom_range(0,359)
image_angle = angle


chat_buffer = buffer_create(2, buffer_grow, 1);
alarm[0] = 1