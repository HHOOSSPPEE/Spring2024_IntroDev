if(place_meeting(x, y, obj_player1)) {

	global.player1Wins = true;
	global.pause = true;
}
else if(place_meeting(x, y, obj_player2)) { 
	global.player2Wins = true;
	global.pause = true;
}