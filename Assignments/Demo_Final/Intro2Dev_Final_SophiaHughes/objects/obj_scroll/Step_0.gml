if (place_meeting(x,y,obj_player1) || place_meeting(x,y,obj_player2)){
	image_index = 1;
}
else {
	image_index = 0;
}

if (place_meeting(x,y,obj_player1) && place_meeting(x,y,obj_player2)){
	image_index = 1;
	player_prox = true;
}

if (player_prox){
	instance_destroy();
	global.world_score = global.world_score + global.total_score;
	global.scroll_count++;
	global.player_hp = 1;
	global.collectible_count = 0;
	global.collected_1 = false;
	global.collected_2 = false;
	global.collected_3 = false;
	global.total_score = 0;
	if (global.scroll_count = 1){
		room_goto(rm_level2);
	}
	if (global.scroll_count = 2){
		room_goto(rm_level3);
	}
	if (global.scroll_count = 3){
		room_goto(rm_win);
		global.scroll_count = 0;
	}
}