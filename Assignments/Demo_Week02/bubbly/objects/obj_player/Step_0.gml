// movement with camera
if (keyboard_check(vk_up)) && !place_meeting(x,y-8,obj_wall){
	y -= player_speed;
	obj_camera.y -= player_speed;
}
if (keyboard_check(vk_down)) && !place_meeting(x,y+8,obj_wall){
	y += player_speed;
	obj_camera.y += player_speed;
}
if (keyboard_check(vk_left)) && !place_meeting(x-8,y,obj_wall){
	x -= player_speed;
	obj_camera.x -= player_speed;
}
if (keyboard_check(vk_right)) && !place_meeting(x+8,y,obj_wall){
	x += player_speed;
	obj_camera.x += player_speed;
}