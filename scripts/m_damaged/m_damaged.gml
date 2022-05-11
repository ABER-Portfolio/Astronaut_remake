///@param center_obj
///@param damage
///@param critical_percentage
///@param blood_col
///@param damaged_target
///@param cool_time
///@param knockback



if argument4.dilay != 1
{
argument4.dilay = 1
var _c_obj__ = argument0;


if object_index != slime
{
argument4.vspeed = argument4.vspeed/argument6;
argument4.hspeed = argument4.hspeed/argument6;
};



argument4.for_draw_damage = argument1;
var random_var = irandom_range(0,100);
if random_var < argument2
{
argument4.for_draw_damage += (argument4.for_draw_damage/((irandom_range(20,80)*0.1)));
};




argument4.hp -= argument4.for_draw_damage;

var draw_damaged_value = instance_create(argument4.x,argument4.y,draw_damage);
draw_damaged_value.draw_healing = 0;
draw_damaged_value.depth = argument4.depth-1;
draw_damaged_value.damage = argument4.for_draw_damage;

	
if global.obj_effect = 0
{
	for(var i = 0; i < irandom_range(5,9); i++)
	{
	var sl_ef = instance_create(argument4.x,argument4.y,slime_effect);
	sl_ef.image_blend = argument3;
	sl_ef.image_xscale = 0.007;
	sl_ef.image_yscale = 0.007;
	sl_ef.ty = argument4.y+16;
	};
};


	var p_co_dis = point_distance(_c_obj__.x,_c_obj__.y+5,argument4.x,argument4.y);
	var injured = audio_play_sound(choose(hit1,hit2),0,false);
	if p_co_dis <= 128
	{
	audio_sound_gain(injured,(p_co_dis/128)*20*global.master_volume*global.sfx_volume*global.scene_volume,1);
	};
}


argument4.alarm[0] = argument5;
global.swing = 0

