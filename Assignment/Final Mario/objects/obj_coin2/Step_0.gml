if (place_meeting(x, y+10, obj_player)) {
    image_speed=0.2
	global.coin+=1;
    instance_destroy();
}