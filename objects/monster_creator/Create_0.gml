/// @description Insert description here
// You can write your code in this editor
//몬스터 생성
chat_buffer = buffer_create(2, buffer_grow, 1);
move_snap(32,32);

randomize()
monster_create_cooltime = 0
max_monster_create_cooltime = irandom_range(10800,15000)
max_mob_num = 4

monster_create_cooltime_cp = 0
max_monster_create_cooltime_cp = irandom_range(10800,15000)
max_mob_num_cp = 4

automatic_stone_respawn = 0
max_automatic_stone_respawn = irandom_range(10800,15000)

automatic_all_ore_respawn = 0
max_automatic_all_ore_respawn = irandom_range(20800,35000)



meteor_dilay = 0

flower_boss_created = 0

image_xscale = 0.5
image_yscale = 0.5