/// @description @desc 인벤토리의 지정한 인덱스의 아이템을 사용하는 스크립트
///@args index 사용할 아이템의 인덱스
///@args state (장비 - 0 , 소비 - 1 , 기타 - 2)

//검사
var _state_ = argument[1];
var _use_item_index_ = cr_inventory_item_find_by_index(argument[0] , _state_ );


/* 인벤토리에 아이템이 존재하는지 검사 */
if ( _use_item_index_ != noone )
{
    //지정 아이템 생성후 사용
	var inst_id = instance_create(-100 , -100 , _use_item_index_);
	
    with(inst_id)
    {
    tool_inv_box.check = 1
	//use = false;
	instance_destroy()
	}
}