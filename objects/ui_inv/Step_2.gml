/// @description Insert description here
// You can write your code in this editor
/// @description 인벤토리가 변경됬으면 변경된 스프라이트 저장(변경 불가)
/// @param 변경 불가
crafting_scroll_y += (t_crafting_scroll_y - crafting_scroll_y)*0.1

if t_crafting_scroll_y < 0
{
t_crafting_scroll_y += (0 - t_crafting_scroll_y)*0.2
}

if t_crafting_scroll_y > 120*cr_inventory_height-300
{
t_crafting_scroll_y += (120*cr_inventory_height-300 - t_crafting_scroll_y)*0.2
}

if global.inv_open != 2
{
t_crafting_scroll_y = 0
crafting_scroll_y = 0
}

	/* 인벤토리가 변경됬을때 한번 실행되며, 아이템들의 스프라이트 정보를 저장한다. */
	if ( inventory_change_check == true )
	{
	    //인벤토리의 크기만큼 반복
	    for ( var i = 0; i < inventory_width * inventory_height; i++ )
	    {
	       //스프라이트 배열 초기화
	       inventory_spr[i] = -1;    
	   
		   //이미지 인덱스 배열 초기화
	       inventory_img_index[i] = -1;    
		 
    
	       //스프라이트를 저장할 변수 선언
	       var spr = -1;     
	   
		   //이미지 인덱스를 저장할 변수 선언
	       var img = -1;    
       
	       //아이템 인스턴스의 id를 담을 변수 생성
	       var inst_id = noone;
       
	       //현재 배열 취득
	       var array = noone;
       
		   array = inventory_item_equip;    
        
       
	       //인벤토리에 아이템이 존재하면
	       if ( array[i] != noone )
	       { 
	         //인스턴스 생성
	         inst_id = instance_create( -100 , - 100 , array[i]);
         
	         //스프라이트 인덱스 취득
	         with (inst_id)
	         {
	            spr = sprite_index;
			
				img = image_index;
            
	            //인스턴스 삭제
	            instance_destroy();
	         }
         
	       }
		   
		   //스프라이트 인덱스 배열에 값 저장
			inventory_spr[i] = spr;

		   //이미지 인덱스 배열에 값 저장
			inventory_img_index[i] = img;
	    }
    
		 inventor_change_check = false;

	}

















/* 인벤토리가 변경됬을때 한번 실행되며, 아이템들의 스프라이트 정보를 저장한다. */
	if ( inventory_change_check == true )
	{
	    //인벤토리의 크기만큼 반복
	    for ( var ii = 0; ii < cr_inventory_width * cr_inventory_height; ii++ )
	    {
	       //스프라이트 배열 초기화
	       cr_inventory_spr[ii] = -1;    
	   
		   //이미지 인덱스 배열 초기화
	       cr_inventory_img_index[ii] = -1;    
		 
    
	       //스프라이트를 저장할 변수 선언
	       var cr_spr = -1;     
	   
		   //이미지 인덱스를 저장할 변수 선언
	       var cr_img = -1;    
       
	       //아이템 인스턴스의 id를 담을 변수 생성
	       var cr_inst_id = noone;
       
	       //현재 배열 취득
	       var cr_array = noone;
       
		   cr_array = inventory_item_con;    
        
       
	       //인벤토리에 아이템이 존재하면
	       if ( cr_array[ii] != noone )
	       { 
	         //인스턴스 생성
	         cr_inst_id = instance_create( -100 , - 100 , cr_array[ii]);
         
	         //스프라이트 인덱스 취득
	         with (cr_inst_id)
	         {
	            cr_spr = sprite_index;
			
				cr_img = image_index;
            
	            //인스턴스 삭제
	            instance_destroy();
	         }
         
	       }
		   
		   //스프라이트 인덱스 배열에 값 저장
			cr_inventory_spr[ii] = cr_spr;

		   //이미지 인덱스 배열에 값 저장
	       cr_inventory_img_index[ii] = cr_img;
	    }
		
		 inventor_change_check = false;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* 인벤토리가 변경됬을때 한번 실행되며, 아이템들의 스프라이트 정보를 저장한다. */
	if ( inventory_change_check == true )
	{
	    //인벤토리의 크기만큼 반복
	    for ( var iii = 0; iii < ch_inventory_width * ch_inventory_height; iii++ )
	    {
	       //스프라이트 배열 초기화
	       ch_inventory_spr[iii] = -1;    
	   
		   //이미지 인덱스 배열 초기화
	       ch_inventory_img_index[iii] = -1;    
		 
    
	       //스프라이트를 저장할 변수 선언
	       var ch_spr = -1;     
	   
		   //이미지 인덱스를 저장할 변수 선언
	       var ch_img = -1;    
       
	       //아이템 인스턴스의 id를 담을 변수 생성
	       var ch_inst_id = noone;
       
	       //현재 배열 취득
	       var ch_array = noone;
       
		   ch_array = inventory_item_etc;    
        
       
	       //인벤토리에 아이템이 존재하면
	       if ( ch_array[iii] != noone ) && ( ch_array[iii] != -1 )
	       { 
	         //인스턴스 생성
	         ch_inst_id = instance_create( -100 , - 100 , ch_array[iii]);
         
	         //스프라이트 인덱스 취득
	         with (ch_inst_id)
	         {
	            ch_spr = sprite_index;
			
				ch_img = image_index;
            
	            //인스턴스 삭제
	            instance_destroy();
	         }
         
	       }
		   
		   //스프라이트 인덱스 배열에 값 저장
			ch_inventory_spr[iii] = ch_spr;

		   //이미지 인덱스 배열에 값 저장
	       ch_inventory_img_index[iii] = ch_img;
	    }
		
	inventor_change_check = false;
	}

