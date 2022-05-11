/// @description Insert description here
// You can write your code in this editor
if global.chat_activity = false && global.playing_scene = 0
{
if global.inv_open = 1 || global.inv_open = 3
{
var xx_scale = (obj_camera.v_x/1280)/1.8
var yy_scale = (obj_camera.v_y/720)/1.8

var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-530*xx_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

var win_height = window_get_height()/1080
if window_get_height() = 720
{
win_height = 0.4
}

var box_size = 103

draw_sprite_ext(sprite_index,0,xx,yy,999,999,0,c_white,0.85)//0.85

draw_set_alpha(0.1)
draw_set_color(c_white)
//var center_x = camera_get_view_x(view_camera[0])+(_xxx*0.5)
//draw_rectangle(center_x-xx_scale*490,yy-yy_scale*170,center_x+xx_scale*450,yy-yy_scale*592,false)

//draw_rectangle(center_x-xx_scale*490,yy-yy_scale*25,center_x+xx_scale*450,yy-yy_scale*150,false)

//인벤 배경 드로우
//draw_sprite_ext(sprite_index,0,xx,yy,999,999,0,c_white,0.75)

draw_sprite_ext(sprite200,0,xx+(box_size*xx_scale*5),yy-(yy_scale*(24))-yy_scale*box_size*3-win_height*50,xx_scale,yy_scale,0,c_white,1)//0.85



for(var i = 1; i < 10; i++)
{
	if global.real_inventory_size >= 9
	{
	draw_sprite_ext(sprite_index,0,xx+(box_size*xx_scale*i),yy-(yy_scale*(64+160))-win_height*50-yy_scale*box_size*3,xx_scale,yy_scale,0,c_white,0.65)//0.85
	}
	
	if global.real_inventory_size >= 10
	{
	draw_sprite_ext(sprite_index,0,xx+(box_size*xx_scale*i),yy-(yy_scale*(64+160))-win_height*50-yy_scale*box_size*2,xx_scale,yy_scale,0,c_white,0.65)//0.85
	}
	
	if global.real_inventory_size >= 19
	{
	draw_sprite_ext(sprite_index,0,xx+(box_size*xx_scale*i),yy-(yy_scale*(64+160))-win_height*50-yy_scale*box_size*1,xx_scale,yy_scale,0,c_white,0.65)//0.85
	}
	
	if global.real_inventory_size >= 28
	{
	draw_sprite_ext(sprite_index,0,xx+(box_size*xx_scale*i),yy-(yy_scale*(64+160))-win_height*50-yy_scale,xx_scale,yy_scale,0,c_white,0.65)//0.85
	}
}

if global.inv_open = 1 || global.inv_open = 3
{
	if change_connection = 1
	{
		if (point_distance(xx+(box_size*xx_scale*10.2),yy-(yy_scale*(64+160))-win_height*50-yy_scale,mouse_x,mouse_y) <= 32*xx_scale) || (keyboard_check(vk_alt))
		{
		can_des = 1
		draw_sprite_ext(spr_trashcan,1,xx+(box_size*xx_scale*10.2),yy-win_height*50-(yy_scale*(64+160))-yy_scale,xx_scale*1.5,yy_scale*1.5,0,c_white,1)//0.85
		}
		else
		{
		can_des = 0
		draw_sprite_ext(spr_trashcan,0,xx+(box_size*xx_scale*10.2),yy-win_height*50-(yy_scale*(64+160))-yy_scale,xx_scale*1.5,yy_scale*1.5,0,c_white,1)//0.85
		}
	}
	else
	{
	draw_sprite_ext(spr_trashcan,0,xx+(box_size*xx_scale*10.2),yy-win_height*50-(yy_scale*(64+160))-yy_scale,xx_scale*1.5,yy_scale*1.5,0,c_white,1)//0.85
	}
}





//인벤 아이템 드로우

//세로인덱스
var height_index = 0;

/* 아이템의 갯수만큼 반복 */
var _inv_size_ = inventory_size()
for ( var i = 0; i < _inv_size_; i++ )
{
    //가로 인덱스
	var width_index = i mod inventory_width;

	//가로줄을 모두 검사하면 세로인덱스 증가
	if (height_index < floor(i / inventory_width) )
	{
	height_index += 1; 
	}

    
    //드로우할 스프라이트가 존재하지않으면 건너뛰기
    if ( inventory_spr[i] == -1 )
    {
        continue;
    }
    
    //드로우할 x,y좌표
	
	var xxx = xx+(xx_scale*103)+(inventory_item_distance+((inventory_cell_width)))*width_index
	var yyy = yy-(yy_scale*(64+160))-win_height*50+(inventory_item_distance+((inventory_cell_height)))*height_index-(inventory_item_distance+((inventory_cell_height)))*3
	

	
	var x_plus = xx_scale*10
	
	//갯수 배열 취득
	var array_num = inventory_get_array(0,1);
	
	if ( inventory_spr[i] == -1 )
    {
    continue;
    }
	
        
	//스프라이트 드로우
	if inventory_spr[i] = spr_accessories
	{
    draw_sprite_ext(inventory_spr[i],inventory_img_index[i],xxx,yyy,xx_scale*1.75,yy_scale*1.75,0,c_white,1);
	}
	else
	{
		if inventory_spr[i] = spr_clothes_center_origin
		{
		draw_sprite_ext(inventory_spr[i],inventory_img_index[i],xxx,yyy,xx_scale*1.1,yy_scale*1.1,0,c_white,1);
		}
		else
		{	
			if inventory_spr[i] = spr_potion_center_origin || inventory_spr[i] = spr_inv_item || inventory_spr[i] = spr_only_items
			{
			draw_sprite_ext(inventory_spr[i],inventory_img_index[i],xxx,yyy,xx_scale*1.3,yy_scale*1.3,0,c_white,1);
			}
			else
			{
				if inventory_spr[i] != none_sprite
				{
				draw_sprite_ext(inventory_spr[i],inventory_img_index[i],xxx,yyy,xx_scale,yy_scale,0,c_white,1);
				}
			}
		}
	}
	
	
    //인벤토리 내 아이템중 도구가 아닌 모든 아이템들 각각의 갯수 드로우
	if inventory_spr[i] != spr_pickaxe_center_origin && inventory_spr[i] != spr_clothes_center_origin && inventory_spr[i] != spr_accessories
	{
		if array_num[i] > 0
		{
		draw_text_kl_scale(xxx+x_plus,yyy,string_hash_to_newline(string(array_num[i])),xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);
		}
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
}










if global.inv_open = 3
{
	
var xx_scale = (obj_camera.v_x/1280)/1.8
var yy_scale = (obj_camera.v_y/720)/1.8

var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-530*xx_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

var box_size = 103

draw_set_alpha(0.1)
draw_set_color(c_white)
//var center_x = camera_get_view_x(view_camera[0])+(_xxx*0.5)
//draw_rectangle(center_x-xx_scale*385,yy-yy_scale*680,center_x+xx_scale*345,yy-yy_scale*1000,false)

var _win_he_d = win_height
if _win_he_d = 0.4
{
_win_he_d = 0.82
}

draw_sprite_ext(sprite200,0,xx+(box_size*xx_scale*5),yy-(yy_scale*(24))-_win_he_d*80-yy_scale*box_size*3-win_height*50,xx_scale,yy_scale,0,c_white,1)//0.85
draw_text_kl_scale(xx+160*xx_scale,yy-(yy_scale*(64*12.3+160))-win_height*70-yy_scale*32,"Chest",xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*30,yy_scale*0.0125*30,0);

//아이템 이름을 담을 배열
//draw_text(mouse_x,mouse_y,string(ch_inventory_point_get_index(mouse_x,mouse_y))+string(ch_inventory_item_find_by_index(ch_inventory_point_get_index(mouse_x,mouse_y),2)))



//세로인덱스
var height_index = 0;


//슬롯 그리기
for(var ii = 2; ii < 9; ii++)
{
draw_sprite_ext(sprite_index,0,xx+(box_size*xx_scale*ii),yy-win_height*70-(yy_scale*(64*9+160)),xx_scale,yy_scale,0,c_white,0.65)//0.85
draw_sprite_ext(sprite_index,0,xx+(box_size*xx_scale*ii),yy-win_height*70-(yy_scale*(64*9+160))-yy_scale*box_size,xx_scale,yy_scale,0,c_white,0.65)//0.85
}

/* 아이템의 갯수만큼 반복 */
var _inv_size_ = 14
for ( var i = 0; i < _inv_size_; i++ )
{
    //가로 인덱스
	 //가로 인덱스
	var width_index = i mod ch_inventory_width;

	//가로줄을 모두 검사하면 세로인덱스 증가
	if (height_index < floor(i / ch_inventory_width) )
	{
	height_index += 1; 
	}

    
    //드로우할 스프라이트가 존재하지않으면 건너뛰기
    if ( ch_inventory_spr[i] == -1 )
    {
        continue;
    }
    
    //드로우할 x,y좌표
	
	var xxx = xx+(xx_scale*103*2)+(inventory_item_distance+((inventory_cell_width)))*width_index
	var yyy = yy-win_height*70-yy_scale*103-(yy_scale*(64*9+160))+(inventory_item_distance+((inventory_cell_height)))*height_index
	

	
	var x_plus = xx_scale*10
	
	//갯수 배열 취득
	var array_num = inventory_get_array(2,1);
	
	if ( ch_inventory_spr[i] == -1 )
    {
    continue;
    }
        
    //스프라이트 드로우
	if ch_inventory_spr[i] = spr_accessories
	{
    draw_sprite_ext(ch_inventory_spr[i],ch_inventory_img_index[i],xxx,yyy,xx_scale*1.75,yy_scale*1.75,0,c_white,1);
	}
	else
	{
		if ch_inventory_spr[i] = spr_clothes_center_origin
		{
		draw_sprite_ext(ch_inventory_spr[i],ch_inventory_img_index[i],xxx,yyy,xx_scale,yy_scale,0,c_white,1);
		}
		else
		{	
			if ch_inventory_spr[i] = spr_inv_item || ch_inventory_spr[i] = spr_only_items || ch_inventory_spr[i] = spr_potion_center_origin 
			{
			draw_sprite_ext(ch_inventory_spr[i],ch_inventory_img_index[i],xxx,yyy,xx_scale*1.5,yy_scale*1.5,0,c_white,1);
			}
			else
			{
				if array_num[i] > 0 && ch_inventory_spr[i] != none_sprite
				{
				draw_sprite_ext(ch_inventory_spr[i],ch_inventory_img_index[i],xxx,yyy,xx_scale,yy_scale,0,c_white,1);
				}
			}
		}
	}
	
	
    //인벤토리 내 아이템중 도구가 아닌 모든 아이템들 각각의 갯수 드로우
	if ch_inventory_spr[i] != spr_pickaxe_center_origin && ch_inventory_spr[i] != spr_clothes_center_origin
	{
		if array_num[i] > 0
		{
		draw_text_kl_scale(xxx+x_plus,yyy,string_hash_to_newline(string(array_num[i])),xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);
		}
	}

}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
}














if instance_number(obj_queue_item) > 0
{
queue_alpha += (0.65 - queue_alpha)*0.2
}
else
{
queue_alpha += (-0.05 - queue_alpha)*0.2
}

if global.inv_open = 2
{	
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])
draw_sprite_ext(sprite_index,0,xx,yy,999,999,0,c_white,0.85)//0.85



var xx_scale = (obj_camera.v_x/1280)/1.8
var yy_scale = (obj_camera.v_y/720)/1.8

var box_size = 103


var _rect_xx = xx+box_size*12*xx_scale+xx_scale*30

var x_1 = xx+xx_scale*70+xx_scale*128
draw_sprite_ext(sprite222,0,x_1,yy+yy_scale*130,xx_scale*2,yy_scale*2,0,c_white,0.25)
draw_text_kl_scale(x_1,yy+yy_scale*125,"Build",xx_scale*25,-1,1,c_white,0,0,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);

var x_2 = xx+xx_scale*70+xx_scale*128*3
draw_sprite_ext(sprite222,0,x_2,yy+yy_scale*130,xx_scale*2,yy_scale*2,0,c_white,0.25)
draw_text_kl_scale(x_2,yy+yy_scale*125,"Tools",xx_scale*25,-1,1,c_white,0,0,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);

var x_3 = xx+xx_scale*70+xx_scale*128*5
draw_sprite_ext(sprite222,0,x_3,yy+yy_scale*130,xx_scale*2,yy_scale*2,0,c_white,0.25)
draw_text_kl_scale(x_3,yy+yy_scale*125,"Weapons",xx_scale*25,-1,1,c_white,0,0,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);

var x_4 = xx+xx_scale*70+xx_scale*128*7
draw_sprite_ext(sprite222,0,x_4,yy+yy_scale*130,xx_scale*2,yy_scale*2,0,c_white,0.25)
draw_text_kl_scale(x_4,yy+yy_scale*125,"Others",xx_scale*25,-1,1,c_white,0,0,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);

draw_set_alpha(0.25)
draw_set_color(c_black)

draw_rectangle(xx+xx_scale*70,yy+yy_scale*175,_rect_xx,yy+yy_h-yy_scale*100,false)

draw_rectangle(_rect_xx+xx_scale*16,yy+yy_scale*100,xx+xx_w-xx_scale*70,yy+yy_scale*320,false)

draw_rectangle(_rect_xx+xx_scale*16,yy+yy_scale*336,xx+xx_w-xx_scale*70,yy+yy_h-yy_scale*100,false)

draw_text_kl_scale(_rect_xx+xx_scale*27,yy+yy_scale*120,"Crafting queue",xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*30,yy_scale*0.0125*30,0);


draw_text_kl_scale(_rect_xx+xx_scale*27,yy+yy_scale*345,"Crafting stuff",xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*30,yy_scale*0.0125*30,0);

var img_scale = 2.5*xx_scale
for(var i = 1; i < 6; i++)
{
var _item_ind = global.craft_item_stuff[i]
var _item_num = global.craft_item_stuff_num[i]
	if _item_ind != noone && _item_num > 0
	{
		if _item_ind = spr_only_items
		{
		draw_sprite_ext(_item_ind,global.craft_item_stuff_img[i],_rect_xx+xx_scale*80,yy+yy_scale*320+i*img_scale*45,img_scale,img_scale,0,c_white,1)
		}
		else
		{
		draw_sprite_ext(_item_ind,global.craft_item_stuff_img[i],_rect_xx+xx_scale*80,yy+yy_scale*320+i*img_scale*45,img_scale*0.5,img_scale*0.5,0,c_white,1)
		}
		
		
	var item_num_in_inv = inventory_number_find_by_name(global.craft_item_stuff_origin_id[i],0)
	
		if item_num_in_inv < 0
		{
		item_num_in_inv = 0
		}
		
		draw_text_kl_scale(_rect_xx+xx_scale*200,yy+yy_scale*320+i*img_scale*45,string(global.craft_item_stuff_name[i]),xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);
	
		if item_num_in_inv < _item_num
		{
		draw_text_kl_scale(_rect_xx+xx_scale*80,yy+yy_scale*320+i*img_scale*45+img_scale*10,string(item_num_in_inv)+"/"+string(_item_num),xx_scale*25,-1,0.4,c_white,0,-1,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);
		}
		else
		{
		draw_text_kl_scale(_rect_xx+xx_scale*80,yy+yy_scale*320+i*img_scale*45+img_scale*10,string(item_num_in_inv)+"/"+string(_item_num),xx_scale*25,-1,1,c_white,0,-1,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);
		}
	}
}

//조합창 아이템 드로우

//"crafting"글자 드로우
var win_hei = window_get_height()/1080
	
var xx2 = xx+100*xx_scale
var yy2 = yy+(750*yy_scale*win_hei)

var text_xx = xx2 +(xx_scale*64)
var text_yy = yy2 - (yy_scale*win_hei*(400+floor(crafting_scroll_y)))
// - point_distance(text_yy,0,crafting_scroll_y,0)/64
var _D = point_distance(text_yy,0,text_yy+crafting_scroll_y,0)/64

if _D < 1
{
draw_text_kl_scale(text_xx,text_yy,"Crafting",xx_scale*25,-1,1-_D,c_white,0,-1,ko_80,xx_scale*0.0125*30,yy_scale*0.0125*30,0);
};


//세로인덱스
var height_index = 0;

/* 아이템의 갯수만큼 반복 */
var _inv_size_ = cr_inventory_size()
for ( var i = 0; i < _inv_size_; i++ )
{
    //가로 인덱스
	var width_index = i mod cr_inventory_width;

	//가로줄을 모두 검사하면 세로인덱스 증가
	if (height_index < floor(i / cr_inventory_width) )
	{
	height_index += 1; 
	}

    

    
    //드로우할 x,y좌표
	
	
	var xxx2 = xx2+(xx_scale*103)+(inventory_item_distance+((inventory_cell_width)))*width_index 
	var yyy2 = yy2 - (yy_scale*win_hei*(140+floor(crafting_scroll_y)))+(inventory_item_distance+((inventory_cell_height)))*height_index
	
	var x_plus = xx_scale*10
	
	//갯수 배열 취득
	var array_num2 = inventory_get_array(1,1);
	

	
	if ( cr_inventory_spr[i] == -1 )
    {
    continue;
    }
        
	
    //스프라이트 드로우
	var _alpha_v = 1
	var __a = yy+yy_h-250*obj_camera.v_y/720
	if yyy2 > __a
	{
	_alpha_v = 1 - point_distance(0,yyy2,0,__a)/32
	}
	
	var __b = yy+260*obj_camera.v_y/720
	if yyy2 < __b
	{
	_alpha_v = 1 - point_distance(0,yyy2,0,__b)/32
	}
	
	if _alpha_v > 0
	{
	//슬롯 그리기
	if cr_inventory_spr[i] != none_sprite && array_num2[i] > 0
	{
	draw_sprite_ext(spr_slot,0,xxx2,yyy2,xx_scale,yy_scale,0,c_white,0.65*_alpha_v);
	}
	//슬롯 테두리 그리기
	//draw_sprite_ext(spr_slot,1,xxx2,yyy2,xx_scale,yy_scale,0,c_white,1);
	
	if cr_inventory_spr[i] = spr_accessories
	{
    draw_sprite_ext(cr_inventory_spr[i],cr_inventory_img_index[i],xxx2,yyy2,xx_scale*1.75,yy_scale*1.75,0,c_white,1*_alpha_v);
	}
	else
	{
		if cr_inventory_spr[i] = spr_clothes_center_origin
		{
		draw_sprite_ext(cr_inventory_spr[i],cr_inventory_img_index[i],xxx2,yyy2,xx_scale,yy_scale,0,c_white,1*_alpha_v);
		}
		else
		{	
			if cr_inventory_spr[i] = spr_inv_item || cr_inventory_spr[i] = spr_only_items || cr_inventory_spr[i] = spr_potion_center_origin
			{
			draw_sprite_ext(cr_inventory_spr[i],cr_inventory_img_index[i],xxx2,yyy2,xx_scale*1.5,yy_scale*1.5,0,c_white,1*_alpha_v);
			}
			else
			{
				if array_num2[i] > 0 && cr_inventory_spr[i] != none_sprite
				{
				draw_sprite_ext(cr_inventory_spr[i],cr_inventory_img_index[i],xxx2,yyy2,xx_scale,yy_scale,0,c_white,1*_alpha_v);
				}
			}
		}
	}
	
	if array_num2[i] > 0 && cr_inventory_spr[i] != none_sprite
	{
    draw_text_kl_scale(xxx2+x_plus,yyy2,string_hash_to_newline(string(array_num2[i])),xx_scale*25,-1,1*_alpha_v,c_white,0,-1,ko_80,xx_scale*0.0125*25,yy_scale*0.0125*25,0);
	}
	}
	
}

//draw_sprite_ext(spr_fire_effect,0,test_x,test_y,0.5,0.5,0,c_white,0.3)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
}









if global.inv_open = 1 || global.inv_open = 3
{	
	if ( mouse_check_button(mb_left)) && instance_number(BG_blind) = 0 && global.knocked_out = 0
	{
		if spr_ind_change_ = spr_accessories
		{
		draw_sprite_ext(spr_ind_change_,img_ind_change_,mouse_x,mouse_y,xx_scale*1.75,yy_scale*1.75,0,c_white,0.65);
		}
		else
		{
			if spr_ind_change_ = spr_clothes_center_origin
			{
			draw_sprite_ext(spr_ind_change_,img_ind_change_,mouse_x,mouse_y,xx_scale,yy_scale,0,c_white,0.65);
			}
			else
			{
				if spr_ind_change_ = spr_inv_item || spr_ind_change_ = spr_only_items || spr_ind_change_ = spr_potion_center_origin
				{
				draw_sprite_ext(spr_ind_change_,img_ind_change_,mouse_x,mouse_y,xx_scale*1.5,yy_scale*1.5,0,c_white,0.65);
				}
				else
				{
					if spr_ind_change_ != none_sprite
					{
					draw_sprite_ext(spr_ind_change_,img_ind_change_,mouse_x,mouse_y,xx_scale,yy_scale,0,c_white,0.65);
					}
				}
			}
		}
	}
}





}



