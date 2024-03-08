// draw arrow when player out of screen
if ((obj_player1.x-obj_camera.xCam)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,obj_camera.camWidth-spr_pointer.sprite_width,706,-1,1,0,c_white,1);
}
else if ((obj_camera.xCam-obj_player1.x-obj_player1.sprite_height)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,spr_pointer.sprite_width,706,1,1,0,c_white,1);
}
if ((obj_player2.x-obj_camera.xCam)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,obj_camera.camWidth-spr_pointer.sprite_width,706,-1,1,0,c_white,1);
}
else if ((obj_camera.xCam-obj_player2.x-obj_player2.sprite_height)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,spr_pointer.sprite_width,706,1,1,0,c_white,1);
}
// draw sign of preys loaction

if (obj_player1.state = Player1State.sniff){
	show_debug_message(spr_deer.sprite_width)
	if (obj_player1.preyLeft){
		draw_sprite_ext(spr_deer,0,0,506,-1,1,0,c_white,1);
	}
	if (obj_player1.preyRight){
		draw_sprite_ext(spr_deer,0,0,506,1,1,0,c_white,1);
	}
}
else{
	obj_player1.preyLeft = false;
	obj_player1.preyRight =false;
}