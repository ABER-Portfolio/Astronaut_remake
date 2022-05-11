
var state = 0
var num = global.all_resources_num
var num2 = global.all_tools_num
var num3 = global.all_potions_num

//광물
for(var i = 1; i < num; i++)
{
	if global.n[i] > 0
	{
	inventory_item_add(asset_get_index("item"+string(i)),global.n[i],state)
	}
	
	if global.n[i] <= 0
	{
	inventory_item_sub(asset_get_index("item"+string(i)),0,0)
	}
}


//도구
for(var i = 1; i < num2; i++)
{
	if global.p[i] > 0
	{
	inventory_item_add(asset_get_index("item1000"+string(i)),global.p[i],state)
	}
	
	if global.p[i] <= 0
	{
	inventory_item_sub(asset_get_index("item1000"+string(i)),0,0)
	}
}

//포션
for(var i = 1; i < num3; i++)
{
	if global.k[i] > 0
	{
	inventory_item_add(asset_get_index("item2000"+string(i)),global.k[i],state)
	}
	
	if global.k[i] <= 0
	{
	inventory_item_sub(asset_get_index("item2000"+string(i)),0,0)
	}
}
