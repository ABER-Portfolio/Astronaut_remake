/// @description @desc 인벤토리에 아이템을 추가하는 스크립트
///@args item_name 아이템 이름
///@args num 아이템 갯수
///@args state ( 0 - 장비 , 1 - 소비 , 2 - 기타 )

var __item_name__ = argument[0];
var __item_num__ = argument[1];
var __item_state__ = argument[2];


var _item_ = instance_create(-100,-100,__item_name__)
/* 인벤토리의 칸당 최대 아이템 수 */
var _max_item_num_ = _item_.max_slot_num;
instance_destroy(_item_);



with (global.inventory_id)
{
    //배열 취득
    var _array_item = inventory_get_array(__item_state__ , 0);
    var _array_num = inventory_get_array(__item_state__ , 1);
	
	
	/* 배열을 순회하며 지정 아이템이 존재하는지 검사 */
	var array_size = array_length_1d( _array_item );
	for( var i = 0; i < array_size; i++ )
	{
		//동명의 아이템일때
		if ( __item_name__ == _array_item[i] ) 
		{
			//아이템 갯수가 남아있고, 칸당 최대 아이템 수 보다 적으면
			while( ( __item_num__ > 0 ) && ( _array_num[i] < _max_item_num_ ) )
			{
				//아이템 추가
				#region
					switch(__item_state__)
	                {
	                //장비
	                case 0:
	                    ui_inv.inventory_item_equip[i] = __item_name__;
	                    ui_inv.inventory_num_equip[i] += 1;
						
						//상태가 같으면 인벤토리에 변화가 있다는것을 알려줌
						ui_inv.inventory_change_check = true;
	                break;
                
	                //소비 
	                case 1:
	                    ui_inv.inventory_item_con[i] = __item_name__;
	                    ui_inv.inventory_num_con[i] = 1;
						__item_num__ = 0
	                break;
                
	                //기타
	                case 2:
	                    ui_inv.inventory_item_etc[i] = __item_name__;
	                    ui_inv.inventory_num_etc[i] +=  1;
	                break;
	                }
				#endregion
				
				//갯수 차감
				__item_num__--;
			}
		}
	}
	
	
	
	/* 배열을 순회하며 빈공간에 남은 아이템 추가 */
	for( var i = 0; i < array_size; i++ )
	{
		//빈공간에 아이템 추가
		if (  _array_item[i] == noone ) && ( __item_num__ > 0 )
		{
			#region
				  switch(__item_state__)
	                {
	                //장비
	                case 0:
	                    ui_inv.inventory_item_equip[i] = __item_name__;
	                    ui_inv.inventory_num_equip[i] =  __item_num__;
						
						//상태가 같으면 인벤토리에 변화가 있다는것을 알려줌
						ui_inv.inventory_change_check = true;
	                break;
                
	                //소비 
	                case 1:
	                    ui_inv.inventory_item_con[i] = __item_name__;
	                    ui_inv.inventory_num_con[i] =  __item_num__;
	                break;
                
	                //기타
	                case 2:
	                    ui_inv.inventory_item_etc[i] = __item_name__;
	                    ui_inv.inventory_num_etc[i] =  __item_num__;
	                break;
	                }
			#endregion
			__item_num__ = 0;
			break;
		}
	}
	
	
	
	//결과 반환 ( 아이템 추가 성공시 1 , 실패시 추가 못하고 남은 아이템 수 * -1 값 반환 ) 
	return ( __item_num__ > 0 ) ? -__item_num__ : true;
	

}
