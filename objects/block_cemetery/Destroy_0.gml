/// @description Insert description here
// You can write your code in this editor
if global.change_map_to < 0
{
view_shake(5,1,4)
	
	if co_op_code.is_server = true
	{
		if instance_number(player) > 0
		{
		var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player.x,player.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}
	else
	{
		if instance_number(player_co_op) > 0
		{
		var sound_break_effect = audio_play_sound(choose(break1,break2,break3,break4),1,false)
		audio_sound_gain(sound_break_effect,(1-point_distance(x,y,player_co_op.x,player_co_op.y)*0.00625)*global.master_volume*global.sfx_volume*global.scene_volume,0)
		}
	}

	if place_meeting(x,y,bomb_effect) || place_meeting(x,y,bomb_effect_only_ore)
	{
		for(var i = 0;i < choose(1,1,1,2,2,2); i++)
		{
		//파티클
		var star = part_system_create();
		var particle1 = part_type_create();//파티클 타입 생성
		part_type_sprite(particle1,sp_ef_shapes,0,0,0)
		part_type_life(particle1,100,100);//파티클의 수명(랜덤)
		part_type_size(particle1,0.156/2.5,0.156/2.5,-0.001,0);//파티클의 크기(랜덤)
		part_type_color3(particle1,c_white,$FF7F7F7F,$FF7F7F7F);//파티클의 색(1가지색)
		part_type_alpha2(particle1,1,0);//파티클의 투명도(변화)
		var angle = irandom_range(0, 359)
		part_type_speed(particle1,2,2,-0.07,0);//파티클의 속도(랜덤)
		part_type_direction(particle1,angle,angle,0,0);//파티클의 방향(중력 방향)
		part_type_orientation(particle1,angle,angle,0,0,1);//파티클 이미지 방향
		var emitter1 = part_emitter_create(star);//파티클 이미터 생성
		part_system_draw_order(star,1);//파티클 생성시 표시 순서
		part_particles_create(emitter1,x,y,particle1,1)
		}
	
	
		for(var i = 0; i < choose(1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,4,4,5); i++)
		{
		var cre_item = instance_create(x,y,obj_item)
		cre_item.stucked_item_number = 1
		cre_item.image_index = 14
		cre_item.depth = -(5+i)
		cre_item.floor_y = y+irandom_range(0,8);
		cre_item.y = cre_item.floor_y-2
		cre_item.vspeed = -(1.8+(irandom_range(-20,300)/500))
		cre_item.received_item = 0
		cre_item.hspeed = irandom_range(-200,200)*0.01;
		cre_item.a = irandom_range(9,15)
		}
	}

	if buffer_exists(chat_buffer)
	{
		if global.co_op_mode = 1
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
		buffer_write(chat_buffer, buffer_u8, DATA.A_BL_STATE);
		buffer_write(chat_buffer, buffer_string, object_index);
		buffer_write(chat_buffer, buffer_string, -1);
		buffer_write(chat_buffer, buffer_string, -1);
		buffer_write(chat_buffer, buffer_string, x);
		buffer_write(chat_buffer, buffer_string, y);
		buffer_write(chat_buffer, buffer_string, auto_picking);
		buffer_write(chat_buffer, buffer_string, co_op_code.is_server);
		send_all(chat_buffer);

		buffer_delete(chat_buffer);
		}
	}
}