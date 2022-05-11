/// @description 메모리 최적화

draw_texture_flush();
with(all)
{
sprite_prefetch(sprite_index);
}

alarm[7] = 10800
