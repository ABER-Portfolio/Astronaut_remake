/// @description @desc 해당 인덱스의 아이템 이름을 반환하는 스크립트 (없거나 범위를 넘어났으면 noone 반환)
///@args index 인덱스
///@args state ( 0 - 장비 , 1 - 소비 , 2 - 기타 )

var _index_ = argument[0];

if !( ( 0 <= _index_ ) && ( _index_ < inventory_size() ) )
{
    return noone;
    exit;
}

with (global.inventory_id)
{
   switch ( argument[1] )
   {
    case 0:
        return ui_inv.inventory_item_equip[_index_];    
    break;
    
    
    case 1:
        return ui_inv.inventory_item_con[_index_];    
    break;
    
    
    case 2:
        return ui_inv.inventory_item_etc[_index_];    
    break;
   }
}
