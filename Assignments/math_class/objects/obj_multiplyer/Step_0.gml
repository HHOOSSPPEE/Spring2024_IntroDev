//move the multiplyer
if (keyboard_check(vk_up)){
	motion_add(facing,accel);
}
if (keyboard_check(vk_down)){
	motion_add(facing,-accel);
}

if (keyboard_check(vk_left)){
	facing += turn;
}

if (keyboard_check(vk_right)){
	facing -= turn;
}
//turn the image
image_angle = facing;

//speed limit
if (speed > max_speed){
	speed = max_speed;
}

move_wrap(true, true, 0);