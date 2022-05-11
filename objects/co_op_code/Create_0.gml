info_buffer = buffer_create(2, buffer_grow, 1);
dis_buffer = buffer_create(2, buffer_grow, 1);
chat_buffer = buffer_create(2, buffer_grow, 1);
one_buffer = buffer_create(2, buffer_grow, 1);
much_buffer = buffer_create(2, buffer_grow, 1);
global.load_map_buffer = buffer_create(2, buffer_grow, 1);
global.save_local_map = buffer_create(2, buffer_grow, 1);



send_request = http_ip_get(""); //Enter your website here between "", if nothing is entered, a request is send to icanhazip.com
global.my_ip = "" //Initialize ip variable
error = "" //Initialize error variable
text_color = 0 //Initialize text color variable


_text_bar_ip = noone


global.scene_sync_co_op = 0


global.co_op_nickname = noone;

if instance_number(co_op_code) > 1
{
instance_destroy()
}
else
{


instance_activate_all()

global.cre_cli_map = 0
global.endgame = 0
show_debug_overlay(true);
server_ip = "127.0.0.1";//"59.10.149.243";//"127.0.0.1";
randomize()
server_port = irandom_range(10000,19999)





is_server = true;
index = 0;
chat_log = 0;
draw_set_font(ko_80);
randomize()
global.name = string(irandom(109));
enum DATA {
	INIT_DATA,
	CO_OP_INS_CRE,
	CHAT,
	CO_OP_SAVE,
	METEORITE,
	ROCKET_READY,
	P1_STATE,
	P1_INHAND,
	P2_STATE,
	P2_XX,
	P2_YY,
	P2_INHAND,
	CREATE_OBJ_ONLY_XY,
	BL_ORE_STATE,
	BULLET_STATE,
	BULLET_ENEMY_STATE,
	ITEM_STATE,
	MONSTER_STATE,
	MONSTER_CREATE,
	REVIVE_OTHER_PLAYER,
	BL_DESTROY,
	FL_BOSS_RAID_START,
	SEND_TIME,
	WORM_BOSS_BODY_STATE,
	GET_OWN_IP,
	LOAD_MAP_B,
	FORCE_WIPE,
	CHECK_VERSION,
	LOAD_MAP,
	CREATE_OBJ_XY_SPEED,
	O_BL_STATE,
	SLIME_STATE,
	SLIME_CREATE,
	PL_1_INV_EMPTY,
	PL_2_INV_EMPTY,
	HUMAN_KIND_MOB_CREATE,
	HUMAN_KIND_MOB_STATE,
	CONNECTED_CHECK,
	SEND_MAP,
	SEND_END,
	BAT_STATE,
	BL_FURNACE_STATE,
	BAT_CREATE,
	A_BL_STATE,
	CHEST_STATE,
	PLUS_SURVIVAL_DAYS,
	ONE_DATA,
	CO_OP_SWING,
	SET_K_S_EVENT_VAL,
	SWING,
	LAB_DOOR_STATE,
	ITEM_STATE_ORE,
	WORM_CREATE,
	WORM_BOSS_STATE,
	O_CHEST_STATE,
	MUCH_DATA,
	ADD_CLI,
	REMOVE_CLI,
	LOAD_LOCAL_MAP_DATA,
	SAVE_LOCAL_MAP_DATA,
	LOAD_LOCAL_SETTING_DATA,
	SEND_SMOG_CONDITION,
	SCENE_SYNC,
	BOMB_EFFECT,
	SLEEP,
	QUEST_SYNC,
	CHAT_SYNC,
	CHOICE_CHAT_SYNC,
	CHOICE_CHOOSED,
	FORCED_CHOOSED,
	FLOWER_BOSS_RESEARCH,
	GRILL_FLOOR
}
my_ID = 0;
my_instance_id = 0;
clients = ds_list_create();
list_names = ds_list_create();
list_vals = ds_list_create();
list_types = ds_list_create();



ins_loc = noone

_xx_chest = noone
_yy_chest = noone
_id_chest = noone
refresh_chest_state = 0

//저장된 돌광석 상태
saved_t_xs = noone
			
saved_t_ys = noone
			
saved__xx = noone
			
saved__yy = noone
			
saved__obj_ = noone

refresh_ore_state = -1

saved_a_p = noone

saved__sender = 0

//저장된 다른 블럭들 상태
saved_t_xs_a = noone
			
saved_t_ys_a = noone
			
saved__xx_a = noone
			
saved__yy_a = noone
			
saved__obj__a = noone

saved_obj_ind_a = noone

refresh_ore_state_a = -1

saved__sender_a = 0

//저장된 삭제되야될 다른 블럭들 상태
_obj_ind_d = noone
_xx_d = noone
_yy_d = noone
_spr_ind_d = noone
_img_ind_d = noone
_img_ang_d = noone
_img_xs_d = noone
_img_ys_d = noone

_saved_obj_d = noone

refresh_ore_state_d = 0


//최근 채팅쳣을때 뜨는 창 지우기
del_recently_chat_log = 0
}