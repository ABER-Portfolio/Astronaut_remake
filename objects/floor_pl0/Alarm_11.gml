/// @description 맵 생성시 바이옴 세팅

if position_meeting(x,y,destroy_floor)
{
instance_destroy()
}

var desert_biome =  place_meeting(x,y,island_biome_desert)
var ice_biome =  place_meeting(x,y,island_biome_ice)
var polluted_biome =  place_meeting(x,y,island_biome_polluted)
var crimson_biome =  place_meeting(x,y,island_biome_crimson)

if desert_biome && !ice_biome && !polluted_biome && !crimson_biome
{
instance_destroy()
instance_create(x,y,floor_pl4)
}

if ice_biome && !desert_biome && !polluted_biome && !crimson_biome
{
instance_destroy()
instance_create(x,y,floor_pl3)
}

if polluted_biome
{
instance_destroy()
instance_create(x,y,floor_pl2)
}

if crimson_biome && !ice_biome && !polluted_biome && !desert_biome
{
instance_destroy()
instance_create(x,y,floor_pl1)
}



