/// @description @desc 인벤토리에서 아이템을 제거하는 스크립트 (정상적으로 빼면 뺀 인덱스)
///@args item_name 아이템 이름
///@args item_num 빼려는 아이템 갯수

var __item_name__ = argument[0];
var __item_num__ = argument[1];
var __item_state__ = argument[2];

//대상 아이템의 인덱스 취득 
var find_index = ch_inventory_item_find_by_name(__item_name__ , __item_state__);

//아이템이 없으면
if ( find_index < 0 )
{
    return -2;
    exit;
}


/* 아이템 빼기 */
with (global.inventory_id)
{
    var array_num = inventory_get_array(__item_state__ , 1);

       /* 갯수 빼기 */
       switch( __item_state__ )
       {
         case 0:
             ui_inv.inventory_num_equip[find_index] -= __item_num__;
             
             //아이템 갯수가 0개 이하이면 아이템칸 비우기
             if (ui_inv.inventory_num_equip[find_index] <= 0 )
             {
                ui_inv.inventory_item_equip[find_index] = noone;
                ui_inv.inventory_num_equip[find_index] = -1;
				ui_inv.inventory_change_check = true;
             }   
         break;
    
    
        case 1:
            ui_inv.inventory_num_con[find_index] -= __item_num__;   
            
             //아이템 갯수가 0개 이하이면 아이템칸 비우기
             if ( ui_inv.inventory_num_con[find_index] <= 0 )
             {
                ui_inv.inventory_item_con[find_index] = noone;
                ui_inv.inventory_num_con[find_index] = -5;
             }
        break;
    
    
        case 2:
            ui_inv.inventory_num_etc[find_index] -= __item_num__;    
            
             //아이템 갯수가 0개 이하이면 아이템칸 비우기
             if ( ui_inv.inventory_num_etc[find_index] <= 0 )
             {
                ui_inv.inventory_item_etc[find_index] = noone;
                ui_inv.inventory_num_etc[find_index] = -1;
				ui_inv.inventory_change_check = true;
             }
        break;
       }
       
       //정상적으로 처리한 인덱스를 반환
       return find_index;
    }

