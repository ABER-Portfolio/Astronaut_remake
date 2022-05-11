/// @description Insert description here
// You can write your code in this editor
if co_op_code.is_server = true
{
	if global.knocked_out = 0 && global.do_not_move = 0 && place_meeting(x,y,player) && (dilay = 1) && (global.o2 < global.max_o2)
	{
	global.o2 += 1
	add_o_exp(0.6)

		var draw_damaged_value = instance_create(player.x,player.y,draw_damage)
		draw_damaged_value.draw_healing = 2
		draw_damaged_value.depth = player.depth-1
		draw_damaged_value.damage = 10
	}
}

dilay = 0