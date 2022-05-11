/// @description @desc 현재 인벤토리의 객체를 반환하는 스크립트
///@args state ( 0 - 장비 , 1 - 소비 , 2 - 기타 )
///@arg mode ( 0 - 아이템 , 1 - 갯수 )배열 반환

var state = argument[0];


if ( argument[1] == 0 )
{
    switch ( state )
   {
    case INV_STATE.EQUIP:
        return ui_inv.inventory_item_equip;    
    break;
    
    
    case INV_STATE.CON:
        return ui_inv.inventory_item_con;    
    break;
    
    
    case INV_STATE.ETC:
        return ui_inv.inventory_item_etc;    
    break;
   }
}
else
{
    switch ( state )
   {
    case INV_STATE.EQUIP:
        return ui_inv.inventory_num_equip;    
    break;
    
    
    case INV_STATE.CON:
        return ui_inv.inventory_num_con;    
    break;
    
    
    case INV_STATE.ETC:
        return ui_inv.inventory_num_etc;    
    break;
   }

}
