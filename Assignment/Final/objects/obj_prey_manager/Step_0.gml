respawnTimer++;
if (respawnTimer>respawnThresold){
	// kirby amount
	if (instance_number(obj_kirby)<4){
		var locX = random(room_width-obj_camera.camWidth);
		if !(locX<obj_player2.x-obj_camera.camWidth/2){
			locX+=obj_camera.camWidth;
		}
		instance_create_layer(locX, obj_player2.y - 20, "Instances", obj_kirby);
	}
	// kirby amount
	if (instance_number(obj_fly)<3){
		var locX = random(room_width-obj_camera.camWidth);
		if !(locX<obj_player2.x-obj_camera.camWidth/2){
			locX+=obj_camera.camWidth;
		}
		instance_create_layer(locX, obj_player2.y - 120, "Instances", obj_fly);
	}
	respawnTimer = 0;
}
