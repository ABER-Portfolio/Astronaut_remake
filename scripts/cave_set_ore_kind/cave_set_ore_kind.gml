if global.cave_floor <= 3
{
ore_.image_index = choose(38,38,38,38,38,39,39,31,48,48)
}

if global.cave_floor >= 4 && global.cave_floor <= 8
{
ore_.image_index = choose(31,31,38,38,39,38,39,38,38,38,38,32,33,34,48,48,50,51)
}

if global.cave_floor >= 9 && global.cave_floor <= 12
{
ore_.image_index = choose(38,38,38,38,38,39,39,32,32,33,33,34,36,48,48,48,48,50,51)
}

if global.cave_floor >= 9 && global.cave_floor <= 12
{
ore_.image_index = choose(38,38,38,38,39,39,32,32,33,33,34,36,48,48,48,48,50,51)
}

if global.cave_floor >= 13 && global.cave_floor <= 15
{
ore_.image_index = choose(38,38,38,38,38,38,39,39,39,34,34,36,35,38,48,48,50,51)
}

if global.cave_floor >= 16 && global.cave_floor <= 18
{
ore_.image_index = choose(38,38,38,38,38,38,39,39,39,39,36,36,36,35,35,38,43,48,48,50,51)
}

if global.cave_floor >= 19 && global.cave_floor <= 21
{
ore_.image_index = choose(38,38,38,38,38,38,39,39,39,37,37,37,33,33,34,48,48)
}

if global.cave_floor >= 22 && global.cave_floor <= 24
{
ore_.image_index = choose(38,38,38,38,38,38,39,39,39,33,33,33,45,48,48,48)
}

if global.cave_floor >= 25 && global.cave_floor <= 28
{
ore_.image_index = choose(38,38,38,38,38,38,39,39,39,39,46,45,48,48,48)
}

if global.cave_floor >= 29
{
ore_.image_index = irandom_range(31,48)
}

var random_ore = percentage_k(8)
if random_ore = 1
{
	if cave_biome = 13
	{
	ore_.image_index = 42
	}
}

var random_ore = percentage_k(8)
if random_ore = 1
{
	if cave_biome = 14
	{
	ore_.image_index = choose(39,48,48,48)
	}
}


if cave_biome = 10
{
	if ore_.image_index = 40 || ore_.image_index = 41
	{
	ore_.image_index = 37
	}
}

if cave_biome = 11
{
	if ore_.image_index = 37 || ore_.image_index = 40
	{
	ore_.image_index = 41
	}
}

if cave_biome = 12
{
	if ore_.image_index = 37 || ore_.image_index = 41
	{
	ore_.image_index = 40
	}
}

ore_.item_num = ore_.image_index-31