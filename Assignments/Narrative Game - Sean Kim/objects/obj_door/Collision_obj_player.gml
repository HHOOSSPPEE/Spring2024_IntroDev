if(keyboard_check(vk_space)) { 
	global.player_x = x;
	global.player_y = y;
	global.camera_x = x;
	global.camera_y = y;
	room_goto(rm_house);
}