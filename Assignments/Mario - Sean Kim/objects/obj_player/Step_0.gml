var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);

function setMarioSprite(action) {
    var prefix = (size == 1) ? "spr_small_mario_" : "spr_big_mario_";
    sprite_index = asset_get_index(prefix + action);
    image_speed = 0.2;
}

playerX = (keyRight - keyLeft) * playerSpeed;
playerY += grv;

if (keyRight) {
    setMarioSprite("run");
    image_xscale = 1;
} else if (keyLeft) {
    setMarioSprite("run");
    image_xscale = -1;
} else if (!keyLeft && !keyRight && isGrounded > 0) {
    setMarioSprite("idle");
}

if (isGrounded-- > 0 && keyJump) {
    playerY = playerJumpSpeed;
    isGrounded = 0;
    setMarioSprite("jump");
}

if (place_meeting(x + playerX, y, obj_collider)) {
    while (abs(playerX) > 0.1) {
        playerX *= 0.5;
        if (!place_meeting(x + playerX, y, obj_collider)) {
            x += playerX;
        }
    }
    playerX = 0;
}

x += playerX;

if (follow) { 
    obj_camera.x += playerX;
}

if (place_meeting(x, y + playerY, obj_collider)) {
    if (playerY > 0) {
        isGrounded = 6;
    }
    while (abs(playerY) > 0.1) {
        playerY *= 0.5;
        if (!place_meeting(x, y + playerY, obj_collider)) {
            y += playerY;
        }
    }
    playerY = 0;
}

y += playerY;

if (!isGrounded) {
    setMarioSprite("jump");
}

if (place_meeting(x, y, obj_pipe1) && keyboard_check_pressed(vk_down)) { 
    follow = false;
	x = 800;
	y = 256;
	obj_camera.x = 768;
	obj_camera.y = 240;
}

if (place_meeting(x, y, obj_pipe2) && keyboard_check_pressed(vk_right)) { 
    follow = true;
	x = 2624;
	y = 160;
	obj_camera.x = 2528;
	obj_camera.y = 0;
}

if (place_meeting(x, y, obj_mushroom)) {
	instance_destroy(obj_mushroom);
    size = 2;
	y = y - 16;
}

var enemy = instance_place(x, y + 1, obj_enemy);
if (enemy != noone && y < enemy.y) {
    with (enemy) {
		global.points++;
        instance_destroy();
    }
} else {
    var horizontal_collision = instance_place(x + playerSpeed, y, obj_enemy) != noone || instance_place(x - playerSpeed, y, obj_enemy) != noone;
    if (horizontal_collision) {
        instance_destroy();
    }
}
