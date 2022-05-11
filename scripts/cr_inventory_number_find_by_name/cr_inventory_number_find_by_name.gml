/// @description @desc 인벤토리 아이템의 갯수를 반환하는 스크립트(아이템이 존재하지 않으면 -1 반환)
///@args name
///@args state ( 0 - 장비 , 1 - 소비 , 2 - 기타 )

var _item_index_ = cr_inventory_item_find_by_name(argument[0] , argument[1]);

//대상 아이템이 없으면 -1반환후 스크립트 종료
if ( _item_index_ == -1 )
{
    return -1;
    exit;
}

//아이템의 갯수 반환
with (global.inventory_id)
{
    var array_num = inventory_get_array(argument[1] , 1);
    return array_num[ _item_index_ ];
}