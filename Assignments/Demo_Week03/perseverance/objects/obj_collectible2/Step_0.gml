if (obj_player1.star_prox2 && obj_player2.star_prox2){
	instance_destroy();
	global.collectible_count++;
	global.total_score = global.total_score + 10;
}

if (place_meeting(x,y,obj_player1) || place_meeting(x,y,obj_player2)){
	image_index = 1;
}
else {
	image_index = 0;
}