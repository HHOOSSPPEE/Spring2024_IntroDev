if (place_meeting(x, y+5, obj_player)&&!activated&&obj_player.playerY < 0) {
	//show_debug_message("2233")
	global.coin+=1;
     instance_create_depth(x-2,y-24,0,obj_coin);
	 activated=true;
}




