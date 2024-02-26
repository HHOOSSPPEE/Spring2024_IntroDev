var horizontalInput = keyboard_check(vk_right) - keyboard_check(vk_left);
var verticalInput = keyboard_check(vk_down) - keyboard_check(vk_up);

if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) { 
	audio_play_sound(run, 1, false);
}

if (abs(horizontalInput) > abs(verticalInput)) {
	moveX = sign(horizontalInput);
	moveY = 0;
} else {
	moveX = 0;
	moveY = sign(verticalInput);
}

if (moveX != 0 || moveY != 0) {
	var targetSpeed = maxSpeed;

	if (moveX != 0) {
		moveX *= targetSpeed;
	}

	if (moveY != 0) {
		moveY *= targetSpeed;
	}

	moveX = lerp(moveX, 0, acceleration);
	moveY = lerp(moveY, 0, acceleration);
}

if (place_meeting(x + moveX, y, obj_wall)) {
	moveX = 0;
}

if (place_meeting(x, y + moveY, obj_wall)) {
	moveY = 0;
}

if (place_meeting(x + moveX, y, obj_river)) {
	moveX = 0;
}

if (place_meeting(x, y + moveY, obj_river)) {
	moveY = 0;
}

if (place_meeting(x + moveX, y, obj_faint)) {
	moveX = 0;
}

if (place_meeting(x, y + moveY, obj_faint)) {
	moveY = 0;
}

if (place_meeting(x + moveX, y, obj_faint_wall)) {
	moveX = 0;
}

if (place_meeting(x, y + moveY, obj_faint_wall)) {
	moveY = 0;
}

x += moveX;
y += moveY;

obj_camera.x += moveX;
obj_camera.y += moveY;
obj_inventory.x += moveX;
obj_inventory.y += moveY;
