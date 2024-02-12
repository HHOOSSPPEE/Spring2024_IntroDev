
if (place_meeting(x, y - 1, obj_mario))&& obj_mario.playerY = 0 {
	show_debug_message("md")
	global.hp -=1;
	obj_mario.x = obj_mario.startX;
    obj_mario.y = obj_mario.startY;
}
if (place_meeting(x, y - 1, obj_mario))&& obj_mario.playerY > 0 {
	image_speed = 0;
	sprite_index = spr_goomba_squished
	show_debug_message("gd")
	instance_destroy()
	global.pts += 100;
	
}



// Check for collision with obj_pipe
if (place_meeting(x + speed, y, obj_pipe)) {

    speed *= -1;
}

