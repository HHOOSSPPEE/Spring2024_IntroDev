if(place_meeting(x,y, obj_player1) || place_meeting(x,y, obj_player2)){
	instance_destroy(obj_gate2);
	image_index = 1;
}