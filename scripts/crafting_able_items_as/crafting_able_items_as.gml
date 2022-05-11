#region//조합 가능 아이템 추가/삭제


for(var i = 1; i < 126; i++)
{
	if i != 54
	{
	cr_inventory_item_add(asset_get_index("item3000"+string(i)),1,1)
	}
	else if i != 55
	{
	cr_inventory_item_add(asset_get_index("item3000"+string(i)),5,1)
	}
	else if i != 56
	{
	cr_inventory_item_add(asset_get_index("item3000"+string(i)),7,1)
	}
	else if i != 57
	{
	cr_inventory_item_add(asset_get_index("item3000"+string(i)),3,1)
	}
	else
	{
	cr_inventory_item_add(asset_get_index("item3000"+string(i)),10,1)
	}
}

#endregion