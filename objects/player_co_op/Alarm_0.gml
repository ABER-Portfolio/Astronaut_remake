/// @description 지속버프 타임 측정
if(co_op_code.is_server == false)
{
var _a = global.plus_speed
var _b = global.night_vision
var _c = global.keep_healing
var _d = global.plus_swing_speed
var _e = global.plus_damage
var _f = global.de_radiation
var _g = global.de_poisoning
var _h = global.de_fire
var _i = global.de_cold
var _j = global.ignore_hp
var _k = global.ignore_oxygen
var _l = global.shining_self
var _n = global.slow_movement
var _m = global.flip_movement

if _a > 0
{
global.plus_speed --
}
else
{
global.plus_speed = 0
}

if _b > 0
{
global.night_vision --
}
else
{
global.night_vision = 0
}

if _c > 0
{
global.hp += 1
global.keep_healing -= 1
}
else
{
global.keep_healing = 0
}

if _d > 0
{
global.plus_swing_speed --
}
else
{
global.plus_swing_speed = 0
}

if _e > 0
{
global.plus_damage --
}
else
{
global.plus_damage = 0
}

if _f > 0
{
global.de_radiation --
}
else
{
global.de_radiation = 0
}

if _g > 0
{
global.de_poisoning --
}
else
{
global.de_poisoning = 0
}

if _h > 0
{
global.de_fire --
}
else
{
global.de_fire = 0
}

if _i > 0
{
global.de_cold --
}
else
{
global.de_cold = 0
}

if _j > 0
{
global.ignore_hp --
}
else
{
global.ignore_hp = 0
}

if _k > 0
{
global.ignore_oxygen --
global.o2 += 1
}
else
{
global.ignore_oxygen = 0
}


if _l > 0
{
global.shining_self --
}
else
{
global.shining_self = 0
}

if _n > 0
{
global.slow_movement --
}
else
{
global.slow_movement = 0
}

if _m > 0
{
global.flip_movement --
}
else
{
global.flip_movement = 0
}



player_co_op.alarm[0] = 60
}