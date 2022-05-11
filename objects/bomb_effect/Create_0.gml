move_snap(32,32);

for(var i = 0;i < 6; i++)
{
var sf_ef = audio_play_sound(choose(bomb_1,bomb_2,bomb_3),2,false)
audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume,0)
}

b_chunk = global.chunk_size
global.chunk_size = 256

for(var i = 0;i < 64; i++)
{
//	var random_var1 = irandom_range(0,100)
	
//	if random_var1 >= 30
//	{
if global.obj_effect = 0
{
	ef_fire = instance_create(x+irandom_range(-64,64),y+irandom_range(-64,64),fire)
	var scale = (irandom_range(150,100)/250)*image_xscale
	ef_fire.image_xscale = scale
	ef_fire.image_yscale = scale
	ef_fire.vspeed = -(irandom_range(400,800)/130)
	ef_fire.hspeed = irandom_range(-360,360)/250		
	ef_fire.scale_min = irandom_range(10,250)/2500
	ef_fire.floor_y = ef_fire.y+irandom_range(-12,12)
	ef_fire.depth = -(ef_fire.floor_y)
}
	
//	}
}

alarm[1] = 1