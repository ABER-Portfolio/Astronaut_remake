/// @description @desc 인벤토리의 총 아이템 수 반환
var size = 0;

with(global.inventory_id)
{
    //인벤토리의 사이즈 취득
    size = ui_inv.inventory_width * ui_inv.inventory_height;
}

return size;