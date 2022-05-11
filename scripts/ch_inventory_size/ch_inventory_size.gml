/// @description @desc 인벤토리의 총 아이템 수 반환
var size = 0;

with(global.inventory_id)
{
    //인벤토리의 사이즈 취득
    size = ui_inv.ch_inventory_width * ui_inv.ch_inventory_height;
}

return size;