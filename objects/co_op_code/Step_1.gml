/// @description Insert description here
// You can write your code in this editor

if instance_number(creating_maps) = 0
{
	if _text_bar_ip != noone
	{
	instance_destroy(_text_bar_ip)
	_text_bar_ip = noone
	}
}


if co_op_code.is_server = true
{
	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}
else
{
	if instance_number(player_co_op) > 0
	{
	x = player_co_op.x
	y = player_co_op.y
	}
}


if refresh_ore_state != -1 && refresh_ore_state != saved__sender
{
	if saved__obj_ != noone && saved__obj_ != -1
	{
		if instance_exists(saved__obj_)
		{
		instance_activate_object(block_ore);
		saved__obj_.txscale = saved_t_xs;
		instance_activate_object(block_ore);
		saved__obj_.tyscale = saved_t_ys;
		instance_activate_object(block_ore);
		saved__obj_.auto_picking = saved_a_p;
		instance_activate_object(block_ore);
		refresh_ore_state = -1;
		saved__sender = -1;
		}
		else
		{
		saved__obj_ = instance_position(real(saved__xx),real(saved__yy),block_ore);
		};
	}
	else
	{
	saved__obj_ = instance_position(real(saved__xx),real(saved__yy),block_ore);
	}
};





if refresh_ore_state_a != -1 && refresh_ore_state_a != saved__sender_a
{
	if saved__obj__a != noone && saved_obj_ind_a != noone  && saved__obj__a != -1
	{
		if instance_exists(saved__obj__a)
		{
		instance_activate_object(saved_obj_ind_a);
		saved__obj__a.txscale = saved_t_xs_a;
		instance_activate_object(saved_obj_ind_a);
		saved__obj__a.tyscale = saved_t_ys_a;
		instance_activate_object(saved_obj_ind_a);
		saved__obj__a.auto_picking = saved_a_p;
		instance_activate_object(saved_obj_ind_a);
		refresh_ore_state_a = -1;
		saved__sender_a = -1;
		}
		else
		{
		saved__obj__a = instance_position(real(saved__xx_a),real(saved__yy_a),saved_obj_ind_a);
		};
	}
	else
	{
	saved__obj__a = instance_position(real(saved__xx_a),real(saved__yy_a),saved_obj_ind_a);
	}
};





if del_recently_chat_log > 0
{
del_recently_chat_log ++
	if del_recently_chat_log >= 400
	{
	del_recently_chat_log = 0
	global.recently_entered_chat_m = 0
	}
}





