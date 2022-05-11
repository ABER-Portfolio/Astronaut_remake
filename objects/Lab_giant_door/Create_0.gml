/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.75
image_yscale = 0.75
image_speed = 0
image_index = 0
move_snap(32,32)

noclip_block = instance_create(x,y,block_noclip)
opened = 0
door_t_y = 0
door_y = 0
created_potal = 0
astronaut_cre_time = 0
npc_created[0] = 0
npc_created[1] = 0
npc_created[2] = 0

chat_buffer = buffer_create(2, buffer_grow, 1);
if instance_number(creating_maps) > 0
{
received = 0
}

if global.cre_cli_map >= 1
{
received = 1
}

var cannot_cre_mob = instance_create(x,y,safe_zone)
cannot_cre_mob.image_xscale = 2
cannot_cre_mob.image_yscale = 2



double_chat_c = 0

alarm[0] = 2