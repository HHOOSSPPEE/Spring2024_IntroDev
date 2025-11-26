// follow the middle point 2 characters when camera not reacheing max width
if (!maxCamWidth){
	x = (obj_player1.x+obj_player2.x)/2;
	y = (obj_player1.y+obj_player2.y)/2;
}
else{
	var further = 0;
	var closer = 0;
	if (abs(obj_player1.x-x)>abs(obj_player2.x-x)){
		further = obj_player1.x;
		closer = obj_player2.x;
	}
	else{
		further = obj_player2.x;
		closer = obj_player1.x;
	}
	// follow player2 when not too far
	if ((abs(further-closer)>1200)&&(abs(further-closer)<=2200)){
		x=obj_player2.x+((obj_camera.newCamWidth)/4.5*sign(x-obj_player2.x));
	}
}