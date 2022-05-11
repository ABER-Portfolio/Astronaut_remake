var max_drop = 2
var item_droped_num = 0




if image_index != 6
{
	if item_droped_num < max_drop
	{
	var random_drop = percentage_k(50)
		if random_drop = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = irandom_range(3,12)
		cre_item.image_index = choose(36,37,38)
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}

	
	
	if item_droped_num < max_drop
	{
	var random_drop = percentage_k(50)
		if random_drop = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = irandom_range(1,2)
		cre_item.image_index = choose(43,44,51)
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}


	if item_droped_num < max_drop
	{
	var random_drop = percentage_k(20)
		if random_drop = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = irandom_range(1,4)
		cre_item.image_index = 49
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}



	if item_droped_num < max_drop
	{
	var random_drop = percentage_k(20)
		if random_drop = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = irandom_range(3,12)
		cre_item.image_index = 54
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}



	if item_droped_num < max_drop
	{
	var random_drop = percentage_k(20)
		if random_drop = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = irandom_range(3,12)
		cre_item.image_index = 55
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}




	if item_droped_num < max_drop
	{
	var random_drop = percentage_k(2)
		if random_drop = 1
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = 1
		cre_item.image_index = 45
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}
}
else
{
	if item_droped_num < max_drop
	{
		repeat(5)
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.a = irandom_range(9,15)
		cre_item.stucked_item_number = 1
		cre_item.image_index = 57
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.floor_y = y+irandom_range(0,8);
		item_droped_num++
		}
	}
}