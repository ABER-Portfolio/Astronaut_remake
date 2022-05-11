// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: Macror_expansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // camera
global.__objectDepths[1] = 0; // code
global.__objectDepths[2] = 0; // debug
global.__objectDepths[3] = 0; // set_cor
global.__objectDepths[4] = -1; // cannon
global.__objectDepths[5] = 0; // cannon_2
global.__objectDepths[6] = 0; // cannon_3
global.__objectDepths[7] = 0; // cannon_4
global.__objectDepths[8] = 0; // cannon_5
global.__objectDepths[9] = 0; // target_c
global.__objectDepths[10] = -9999999; // objController_music_1
global.__objectDepths[11] = -9999999; // objController_music_2
global.__objectDepths[12] = -9999999; // objController_music_3
global.__objectDepths[13] = -10; // draw_song_name
global.__objectDepths[14] = 101; // c_effect
global.__objectDepths[15] = -3; // effect
global.__objectDepths[16] = 101; // st_bg_circle
global.__objectDepths[17] = -3; // c_e_effect
global.__objectDepths[18] = -99999; // shine_effect
global.__objectDepths[19] = -99999; // restart_ef
global.__objectDepths[20] = 0; // r_explo_effect
global.__objectDepths[21] = 0; // hit_ef
global.__objectDepths[22] = 5; // char_m_ef
global.__objectDepths[23] = 3; // circle_ef
global.__objectDepths[24] = 0; // keep_shaking
global.__objectDepths[25] = 4; // guard_af_hit
global.__objectDepths[26] = 999; // bg_circle
global.__objectDepths[27] = 999; // bg_meeting_place
global.__objectDepths[28] = 1215752191; // back_ground_obj
global.__objectDepths[29] = 0; // cannon_parents
global.__objectDepths[30] = 0; // enemy_parents
global.__objectDepths[31] = 2; // obj_char
global.__objectDepths[32] = 0; // object44
global.__objectDepths[33] = 0; // obj_system
global.__objectDepths[34] = -100; // obj_vertual_joystick
global.__objectDepths[35] = 0; // main_code
global.__objectDepths[36] = 0; // draw_main_text_title
global.__objectDepths[37] = -9; // p_bg
global.__objectDepths[38] = 0; // object36
global.__objectDepths[39] = -20; // go_l
global.__objectDepths[40] = -20; // go_r
global.__objectDepths[41] = -5; // object58
global.__objectDepths[42] = 0; // object59
global.__objectDepths[43] = -7; // albums
global.__objectDepths[44] = 0; // cannon_ammo
global.__objectDepths[45] = 0; // following_cannon_ammo
global.__objectDepths[46] = 0; // f_shot_ammo
global.__objectDepths[47] = -4; // circle
global.__objectDepths[48] = -5; // r_explo_obj
global.__objectDepths[49] = -5; // r_explo_obj2
global.__objectDepths[50] = -5; // r_explo_obj3
global.__objectDepths[51] = -5; // r_explo_obj4
global.__objectDepths[52] = -10; // laser
global.__objectDepths[53] = 0; // gravity_changer
global.__objectDepths[54] = 10; // draw_sign_gravity_angle
global.__objectDepths[55] = 0; // s_block
global.__objectDepths[56] = -1; // ene_plane
global.__objectDepths[57] = -3; // ene_triangle
global.__objectDepths[58] = -4; // select_m_1
global.__objectDepths[59] = -4; // select_m_2
global.__objectDepths[60] = -4; // select_m_3
global.__objectDepths[61] = 0; // o_scroll


global.__objectNames[0] = "camera";
global.__objectNames[1] = "code";
global.__objectNames[2] = "debug";
global.__objectNames[3] = "set_cor";
global.__objectNames[4] = "cannon";
global.__objectNames[5] = "cannon_2";
global.__objectNames[6] = "cannon_3";
global.__objectNames[7] = "cannon_4";
global.__objectNames[8] = "cannon_5";
global.__objectNames[9] = "target_c";
global.__objectNames[10] = "objController_music_1";
global.__objectNames[11] = "objController_music_2";
global.__objectNames[12] = "objController_music_3";
global.__objectNames[13] = "draw_song_name";
global.__objectNames[14] = "c_effect";
global.__objectNames[15] = "effect";
global.__objectNames[16] = "st_bg_circle";
global.__objectNames[17] = "c_e_effect";
global.__objectNames[18] = "shine_effect";
global.__objectNames[19] = "restart_ef";
global.__objectNames[20] = "r_explo_effect";
global.__objectNames[21] = "hit_ef";
global.__objectNames[22] = "char_m_ef";
global.__objectNames[23] = "circle_ef";
global.__objectNames[24] = "keep_shaking";
global.__objectNames[25] = "guard_af_hit";
global.__objectNames[26] = "bg_circle";
global.__objectNames[27] = "bg_meeting_place";
global.__objectNames[28] = "back_ground_obj";
global.__objectNames[29] = "cannon_parents";
global.__objectNames[30] = "enemy_parents";
global.__objectNames[31] = "obj_char";
global.__objectNames[32] = "object44";
global.__objectNames[33] = "obj_system";
global.__objectNames[34] = "obj_vertual_joystick";
global.__objectNames[35] = "main_code";
global.__objectNames[36] = "draw_main_text_title";
global.__objectNames[37] = "p_bg";
global.__objectNames[38] = "object36";
global.__objectNames[39] = "go_l";
global.__objectNames[40] = "go_r";
global.__objectNames[41] = "object58";
global.__objectNames[42] = "object59";
global.__objectNames[43] = "albums";
global.__objectNames[44] = "cannon_ammo";
global.__objectNames[45] = "following_cannon_ammo";
global.__objectNames[46] = "f_shot_ammo";
global.__objectNames[47] = "circle";
global.__objectNames[48] = "r_explo_obj";
global.__objectNames[49] = "r_explo_obj2";
global.__objectNames[50] = "r_explo_obj3";
global.__objectNames[51] = "r_explo_obj4";
global.__objectNames[52] = "laser";
global.__objectNames[53] = "gravity_changer";
global.__objectNames[54] = "draw_sign_gravity_angle";
global.__objectNames[55] = "s_block";
global.__objectNames[56] = "ene_plane";
global.__objectNames[57] = "ene_triangle";
global.__objectNames[58] = "select_m_1";
global.__objectNames[59] = "select_m_2";
global.__objectNames[60] = "select_m_3";
global.__objectNames[61] = "o_scroll";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for