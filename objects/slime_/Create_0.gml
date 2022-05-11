/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
alpha_p = 0
hp_t = 0

chat_buffer = buffer_create(2, buffer_grow, 1);

image_speed = 0.1
image_xscale = 0.3
image_yscale = 0.3
image_index = 0
dilay = 0
floor_y = y

own_damage = 1
for_draw_damage = 0

alpha = 0
draw_hp = 0

b_x = x
b_y = y

return_alarm1 = 30
if co_op_code.is_server = true
{
alarm[1] = 1
alarm[2] = 5
}



//received = 0


//슬라임 색상 설정

//해당변수는 투명 슬라임 전용 변수
alpha_slime = -1

damage_gotten_by = 0
////////////////////////////////


if co_op_code.is_server = true
{
	image_blend = choose($FF4CDE5D,$FFB3DD49) & $ffffff
	slime_kind = 0
	hp = 16

	if place_meeting(x,y,floor_pl1)
	{
	slime_kind = 1
	image_blend = $124C4C4C & $ffffff
	alpha_slime = 0
	hp = 22
	alarm[11] = 200
	}

	if place_meeting(x,y,floor_pl2)
	{
	slime_kind = 2
	hp = 20
	image_blend = choose($FFDB479B,$FFDB47CC) & $ffffff
	}

	if place_meeting(x,y,floor_pl3)
	{
	slime_kind = 3
	hp = 18
	image_blend = choose($FFFFDB99,$FFFFD27F) & $ffffff
	}

	if place_meeting(x,y,floor_pl4)
	{
	slime_kind = 4
	hp = 21
	image_blend = choose($FF80E3FC,$FF75EEF9) & $ffffff
	}
	
	
	if buffer_exists(chat_buffer)
	{
	buffer_seek(chat_buffer, buffer_seek_start, 0);
	
	buffer_write(chat_buffer, buffer_u8, DATA.SLIME_CREATE);
	buffer_write(chat_buffer, buffer_string, id);
	buffer_write(chat_buffer, buffer_string, image_xscale);
	buffer_write(chat_buffer, buffer_string, image_yscale);
	buffer_write(chat_buffer, buffer_string, slime_kind);
	buffer_write(chat_buffer, buffer_string, hp);
	buffer_write(chat_buffer, buffer_string, x);
	buffer_write(chat_buffer, buffer_string, y);
	buffer_write(chat_buffer, buffer_string, alpha_slime);
	send_all(chat_buffer);
	};

};

max_hp = -1
alarm[5] = 1