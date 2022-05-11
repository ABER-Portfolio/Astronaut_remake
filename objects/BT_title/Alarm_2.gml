/// @description Insert description here
// You can write your code in this editor
if instance_number(BG_blind) = 0
{
	var omn = own_menu_name

	if global.select = select && global.opening_menu = 0 && w_alpha >= 0.1
	{
		if omn = "Report" || omn = "리포트"
		{
		url_open("https://1047asd44.wixsite.com/mysite")
		}

		if omn = "Discord" || omn = "디스코드"
		{
		url_open("https://discord.gg/DVxD4VF")
		}

		if omn = "Quit" || omn = "나가기"
		{
		game_end()
		}

		if omn = "Play" || omn = "플레이"
		{
		instance_create(0,0,BG_blind)
		BG_title.alarm[3] = 3
		alarm[1] = 1
		}
		
		if omn = "Co-op Play - open server" || omn = "협동 플레이 - 서버 오픈"
		{
		global.co_op_mode = 1
		co_op_code.alarm[1] = 1
		}
		
		if omn = "Co-op Play - join server" || omn = "협동 플레이 - 서버 접속"
		{
		global.co_op_mode = 1
		//co_op_code.alarm[2] = 1
		}

		if omn = "Options" || omn = "환경설정"
		{
			if instance_number(creating_maps) = 0
			{
			//오브젝트 비활성화
			instance_deactivate_object(monster_parents)
			instance_deactivate_object(block_parents)
			instance_deactivate_object(fl_parents)
	
			instance_create(0,0,BG_blind)
			instance_create(0,0,option_line_bar)
			}
		}
	}
}