/// @description Insert description here
// You can write your code in this editor
if open_chest = 0
{
	if co_op_code.is_server = true
	{
		if point_distance(x,y,player.x,player.y) <= 20
		{
			if locked = 0 && global.inv_open = 0
			{
			var sf_ef = audio_play_sound(choose(swing_1,swing_2,swing_5),1,false)
			audio_sound_gain(sf_ef,global.master_volume*global.sfx_volume*global.scene_volume*0.5,0)
			
				global.inv_open = 3
	
				for(var i = 0; i < 14; i++)
				{
				ui_inv.inventory_item_etc[i] = (chest_item[i]);
				ui_inv.inventory_num_etc[i] = real(chest_item_num[i]);
				}

			ui_inv.chest_id = id
			open_chest = 1
			}

			if locked = 1
			{
				if global.language = 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "It is locked"
				}
				
				if global.language = 1
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "상자가 잠겨 있습니다"
				}
			}
		}
	}
	else
	{
		if point_distance(x,y,player_co_op.x,player_co_op.y) <= 32
		{
			if locked = 0 && global.inv_open = 0
			{
				global.inv_open = 3
	
				for(var i = 0; i < 14; i++)
				{
				ui_inv.inventory_item_etc[i] = (chest_item[i]);
				ui_inv.inventory_num_etc[i] = real(chest_item_num[i]);
				};

			ui_inv.chest_id = id
			open_chest = 1
			};

			if locked = 1
			{
				if global.language = 0
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "It is locked"
				}
				
				if global.language = 1
				{
				var _text_bar = instance_create(x,y,draw_debug_text)
				_text_bar.text = "상자가 잠겨 있습니다"
				}
			};
		}
	}
}
else
{
	if open_chest = 2
	{
		if global.language = 0
		{
		var _text_bar = instance_create(x,y,draw_debug_text)
		_text_bar.text = "Someone is opening the chest"
		}
		
		if global.language = 1
		{
		var _text_bar = instance_create(x,y,draw_debug_text)
		_text_bar.text = "누군가 이미 상자를 열고 있습니다"
		}
	}
}