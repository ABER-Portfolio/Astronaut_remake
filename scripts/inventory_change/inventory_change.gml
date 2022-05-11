/// @description @desc 인벤토리의 상태 변경
///@args state ( 장비 - INV_STATE.EQUIP , 소비 - INV_STATE.CON
///              기타 - INV_STATE.ETC)

with ( global.inventory_id )
{
    inventory_state = argument[0];
    inventory_change_check = true;
}