/// @description @desc 인벤토리에서 아이템 이름으로 찾기 (찾으면 인덱스 없으면 -1 반환)
/// @param 찾으면 인덱스 없으면 -1 반환
///@args name 아이템이름
///@args state ( 장비 - INV_STATE.EQUIP , 소비 - INV_STATE.CON
///              기타 - INV_STATE.ETC)

var _name_ = argument[0];
var _size_ = inventory_size();


with (global.inventory_id)
{
    //배열 취득
    var array_item = inventory_get_array(argument[1] , 0);
    
    /* 배열의 크기만큼 반복 */
    for(var i = 0; i < _size_; i++)
    {
        //지정하는 값을 찾으면 인덱스 반환후 스크립트 종료
        if ( array_item[i] == _name_ )
        {
            return i;
            exit;
        }
    }
    
}
    
return -1;