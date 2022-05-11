image_speed = 0
image_index = 0
//xxx_scale = 1
//yyy_scale = 1

//인벤토리의 id값을 담은 변수
global.inventory_id = id;

//test_scale = 1


can_des = 0
blur = 0

b_ui_cancle = -1

inv_change_click_index = noone

inv_change__use_item_index_ = noone

inv_change__item_num_ = noone

inv_change_b_slot_item = noone

inv_change_b_slot_item_num = noone

spr_ind_change_ = none_sprite

img_ind_change_ = noone

change_connection = 0

inv_drag_before = 0

inv_tuto_mes = 0



chest_id = noone

/* 인벤토리의 가로 , 세로 아이템 갯수 */
//가로 (아이템 6개)
inventory_width = 9;

//세로 (아이템 4개)
inventory_height = 4;


var _total_num = 0
for(var iv = 0; iv < 9999; iv++)
{
	if !object_exists(asset_get_index("item3000"+string(iv))) && iv != 0
	{
	_total_num = iv-1
	break;
	}
}

//가로 (아이템 6개)
cr_inventory_width = 10;


var _height_setting = floor(_total_num/10)
if (_total_num/10 - floor(_total_num/10)) > 0
{
_height_setting ++
}


//세로 (아이템 4개)
cr_inventory_height = _height_setting;

//가로 (아이템 6개)
ch_inventory_width = 7;

//세로 (아이템 4개)
ch_inventory_height = 2;



var xx_scale = (obj_camera.v_x/1280)/1.8
var yy_scale = (obj_camera.v_y/720)/1.8

var _xx = camera_get_view_x(view_camera[0])
var _xxx = camera_get_view_width(view_camera[0])

var xx = _xx+(_xxx)*0.5-530*xx_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

var box_size = 103

ch_inventory_draw_x = xx+(box_size*xx_scale)
ch_inventory_draw_y = yy-(yy_scale*(64*9+160))-yy_scale*box_size



/* 인벤토리에 들어갈 아이템의 픽셀크기 */
var xscale = obj_camera.v_x/1280
var yscale = obj_camera.v_x/720

var xx_scale = (obj_camera.v_x/1280)/1.8

//가로 (32 픽셀)
inventory_cell_width = 99*xscale;

//세로 (32 픽셀)
inventory_cell_height = 99*yscale;


var yy_scale = (obj_camera.v_y/720)/1.8
var win_hei = window_get_height()/1080
var xx2 = global._came_vx
var yy2 = global._came_vy+(800*yy_scale*win_hei)

cr_inventory_draw_x = xx2
cr_inventory_draw_y = yy2

/* 아이템 사이의 간격 */
inventory_item_distance = 4*xscale;



/* 인벤토리가 변경됬는지 확인하는 변수 */
inventory_change_check = true;


/* 인벤토리의 상태 열거형 & 변수 */
enum INV_STATE{
    EQUIP = 0, //장비
    CON = 1,   //소비
    ETC = 2    //기타
}

inventory_state =  INV_STATE.EQUIP;

/* 아이템을 드로우 할 시작위치 */
var xx = camera_get_view_x(view_camera[0])+640*xx_scale
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

var yyy = yy-(yy_scale*(64+160))-(inventory_item_distance+((inventory_cell_height)))*3
inventory_draw_x = xx
inventory_draw_y = yyy



/* */
///위 설정을 기반으로 데이터를 관리할 배열 선언(변경 불가)

///배열 생성
for ( var i = 0; i < inventory_width * inventory_height; i++ )
{
    /* 장비 */

    //아이템 이름을 담을 배열
    inventory_item_equip[i] = noone;
    
    //아이템의 갯수를 담을 배열
    inventory_num_equip[i] = -1;
        
    //아이템의 스프라이트를 담을 배열
    inventory_spr[i] = none_sprite;
	
	//아이템의 이미지 인덱스를 담을 배열 
	inventory_img_index[i] = -1;

}

///배열 생성
for ( var i = 0; i < cr_inventory_width * cr_inventory_height; i++ )
{
 /* 소비 */

    //아이템 이름을 담을 배열
    inventory_item_con[i] = noone;
    
    //아이템의 갯수를 담을 배열
    inventory_num_con[i] = -1;
	
	//조합창 아이템의 스프라이트를 담을 배열
    cr_inventory_spr[i] = spr_cursur;
	
	//조합창 아이템의 이미지 인덱스를 담을 배열 
	cr_inventory_img_index[i] = 3;
}





///배열 생성
for ( var i = 0; i < ch_inventory_width * ch_inventory_height+1; i++ )
{
 /* 소비 */

    //아이템 이름을 담을 배열
    inventory_item_etc[i] = noone;
    
    //아이템의 갯수를 담을 배열
    inventory_num_etc[i] = -1;
	
	
	//조합창 아이템의 스프라이트를 담을 배열
    ch_inventory_spr[i] = none_sprite;
	
	//조합창 아이템의 이미지 인덱스를 담을 배열 
	ch_inventory_img_index[i] = -1;
}

/*  */






//아이템 조합창 알파값
queue_alpha = 0

crafting_scroll_y = 0
t_crafting_scroll_y = 0

crafting_double_clicked = 0
crafting_double_clicked_ind = noone

//조합 재료표기
for(var i = 1; i < 6; i++)
{
global.craft_item_stuff[i] = 0
global.craft_item_stuff_origin_id[i] = 0
global.craft_item_stuff_name[i] = 0
global.craft_item_stuff_img[i] = 0
global.craft_item_stuff_num[i] = 0
}


crafting_able_items_as()