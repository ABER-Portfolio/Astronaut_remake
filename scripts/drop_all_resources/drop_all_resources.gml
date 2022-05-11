//여러 광석들 보유 유무
var num = global.all_resources_num

for(var i = 1; i < num; i++)
{
	if global.n[i] > 0
	{
	var cre_item = instance_create(player.x,player.y+5,obj_item)
	cre_item.image_index = i-1
	cre_item.stucked_item_number = global.n[i]
	}
inventory_item_sub(asset_get_index("item"+string(i)),3564,0)
}