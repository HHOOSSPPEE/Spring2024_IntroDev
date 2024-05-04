if (mouse_check_button_released(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, obj_retry)){
		room_restart();
		global.player_hp = 1;
		global.collectible_count = 0;
		global.collected_1 = false;
		global.collected_2 = false;
		global.collected_3 = false;
		global.total_score = 0;
	}
}