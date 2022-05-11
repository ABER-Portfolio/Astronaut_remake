/// @description @desc 인벤토리 아이템의 갯수를 반환하는 스크립트(아이템이 존재하지 않으면 -1 반환)
/// @param 아이템이 존재하지 않으면 -1 반환
///@args index
///@args state ( 0 - 장비 , 1 - 소비 , 2 - 기타 )

var _item_index_ = argument[0];


//대상 인덱스가 벗어났으면 -1반환후 스크립트 종료
if !( ( 0 <= _item_index_ ) && ( _item_index_ < inventory_size() ) )
{
    return -1;
    exit;
}
with (global.inventory_id)
{
    var array_num = inventory_get_array(argument[1] , 1);
    
    //아이템의 갯수 반환
    return array_num[ _item_index_ ];
}