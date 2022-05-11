/// @description Insert description here
// You can write your code in this editor
if global.chat_activity = false
{
	if global.inv_open > 0
	{
		for(var i = 0; i < 14; i++)
		{
		//아이템 이름을 담을 배열
	    inventory_item_etc[i] = noone;
    
	    //아이템의 갯수를 담을 배열
	    inventory_num_etc[i] = -1;
		}
		chest_id = noone
	
	global.inv_open = 0
	}
}