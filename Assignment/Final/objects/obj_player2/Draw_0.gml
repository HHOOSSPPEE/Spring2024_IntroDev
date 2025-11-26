show_debug_message("frame: " +string(image_index));
// facing direction
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
if (keyRight-keyLeft>0){
	image_xscale=1;
}
else if (keyLeft-keyRight>0){
	image_xscale=-1;
}

// dash speed
if(state=Player2State.dash){
	image_speed = 2;
}
else{
	image_speed = 1;
}
// sprite change
if (state == Player2State.walk||state == Player2State.dash){
	if (xSpeed==0){
		sprite_index = spr_hunter_idle;
	}
	else{
		sprite_index = spr_hunter_walk;
	}
}

// shoot
if (state == Player2State.shoot){
	sprite_index = spr_hunter_shoot
	if (!shootingHold){
		image_speed = 1;
		if (image_index>=8&&canShoot){// shoot at that frame 
			shootNow = true;
		}
		if (holdTimeTemp <= holdTimeThreshold){
			shootQueued = false;
		}
		if (image_index >= (image_number-(sprite_get_speed(spr_hunter_shoot)/game_get_speed(gamespeed_fps)))){// end shooting
			shootQueued = false;
		}
	}
	
	else{
		if (image_index>=8){
			image_speed = 0;
			image_index = 8;
		}
	}
}
draw_self();
