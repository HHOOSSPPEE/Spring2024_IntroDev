if(global.player_hp = 0){
	room_restart();
	global.player_hp = 1;
	global.collectible_count = 0;
	global.total_score = 0;
	global.collected_1 = false;
	global.collected_2 = false;
	global.collected_3 = false;
}