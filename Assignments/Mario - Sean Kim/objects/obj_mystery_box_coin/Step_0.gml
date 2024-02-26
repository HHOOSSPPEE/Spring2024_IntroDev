if(place_meeting(x, y, obj_player)) { 
	if(!activated) {
		activated = true;
		instance_destroy();
		instance_create_layer(x, y - 16, "Instances", obj_coin);
	}
}