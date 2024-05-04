if (place_meeting(x,y,obj_player1) || place_meeting(x,y,obj_player2)){
	image_index = 1;
	player_prox = true;
}
else {
	image_index = 0;
	player_prox = false;
}

if (player_prox && obj_collectible3_a.player_prox){
	global.collected_3 = true;
}

if (global.collected_3){
	instance_destroy();
	global.collectible_count++;
	global.total_score = global.total_score + 10;
	audio_play_sound(snd_note_pickup, 0, false);
}