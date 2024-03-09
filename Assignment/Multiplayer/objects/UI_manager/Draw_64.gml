// draw arrow when player out of screen
if ((obj_player1.x-obj_camera.xCam)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,obj_camera.camWidth-sprite_get_width(spr_pointer),706,-1,1,0,c_white,1);
}
else if ((obj_camera.xCam-obj_player1.x-sprite_get_height(spr_pointer))>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,sprite_get_width(spr_pointer),706,1,1,0,c_white,1);
}
if ((obj_player2.x-obj_camera.xCam)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,obj_camera.camWidth-sprite_get_width(spr_pointer),706,-1,1,0,c_white,1);
}
else if ((obj_camera.xCam-obj_player2.x-sprite_get_height(spr_pointer))>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,sprite_get_width(spr_pointer),706,1,1,0,c_white,1);
}

// draw sign of preys loaction
if (obj_player1.state = Player1State.sniff){
	obj_player1.sniffingTime = min(100,obj_player1.sniffingTime+1);

}
else{
	obj_player1.sniffingTime = max(0,obj_player1.sniffingTime-1);
}
if (obj_player1.sniffingTime>50){
	if (obj_player1.preyLeft){
		draw_sprite_ext(spr_prey_idle,0,sprite_get_width(spr_prey_idle),506,-1,1,0,
		c_white,(obj_player1.sniffingTime-50)/50);
	}
	if (obj_player1.preyRight){
		draw_sprite_ext(spr_prey_idle,0,view_get_wport(0)-sprite_get_width(spr_prey_idle),506,1,1,0,
		c_white,(obj_player1.sniffingTime-50)/50);
	}
}
else{
	obj_player1.preyLeft = false;
	obj_player1.preyRight =false;
}