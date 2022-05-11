//set_global_hp
///@param name
///@param hp
///@param max_hp



global.global_hp_name = argument0;

global.t_global_hp = argument1;

global.global_maxhp = argument2;

if global.global_hp > global.global_maxhp
{
global.global_hp = global.global_maxhp
}

global.if_global_hp_minus = global.global_hp;


global.now_breaking_ore_id = self.id;