/// @description @desc 특정 좌표에 존재하는 아이템이 몇번째 아이템인지 반환하는 함수 (인벤토리밖이거나 아이템 선택중이 아니면 -1반환)
///@args point_x x좌표
///@args point_y y좌표




/* 인벤토리가 보이는중인지 확인 */
//with (global.inventory_id)
//{
//    if(visible < 1)
//    {
//        return -1;
//        exit;
//    }
//}


//원점 취득
var inven_offset_x = (global.inventory_id).ch_inventory_draw_x
var inven_offset_y = (global.inventory_id).ch_inventory_draw_y

//인벤토리의 너비, 높이 취득
var inven_width = ( (global.inventory_id).inventory_cell_width + (global.inventory_id).inventory_item_distance  )
                    * (global.inventory_id).ch_inventory_width;
var inven_height = ( (global.inventory_id).inventory_cell_height + (global.inventory_id).inventory_item_distance )
                    * (global.inventory_id).ch_inventory_height;

var point_in_inventory_check = point_in_rectangle(argument[0] , argument[1] , 
    inven_offset_x , inven_offset_y , inven_offset_x + inven_width - 1  , inven_offset_y + inven_height - 1 );


//좌표가 인벤토리 밖이면 -1반환후 스크립트 종료
if ( point_in_inventory_check == false )
{
    return -1;
    exit;   
}

//셀의 너비와 높이 취득
var cell_width = 0;
var cell_height = 0;

//취득한 좌표 가공
var point_x = argument[0];
var point_y = argument[1];

with (global.inventory_id)
{
    cell_width = ui_inv.inventory_cell_width + ui_inv.inventory_item_distance;
    cell_height = ui_inv.inventory_cell_height + ui_inv.inventory_item_distance;

    point_x -= ui_inv.ch_inventory_draw_x;
    point_y -= ui_inv.ch_inventory_draw_y;
       
    //아이템 칸 안인지 확인하고 밖이면 -1반환후 스크립트 종료
    if ( ( point_x mod cell_width) + 1 >= ui_inv.inventory_cell_width - 1) ||
        ( ( point_y mod cell_height) + 1 >= ui_inv.inventory_cell_height - 1)
    {
        return -1;
        exit;
    }
}




//가로,세로 인덱스 취득
var width_index = point_x div cell_width;

var height_index = point_y div cell_height;

//최종 인덱스 계산
var index = width_index + (height_index * (global.inventory_id).ch_inventory_width);
return index;
