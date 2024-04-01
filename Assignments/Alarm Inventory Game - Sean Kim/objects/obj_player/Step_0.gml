// Step Event of the player object

var moveX = 0;
var moveY = 0;

// Check for horizontal movement input
if (keyboard_check(vk_left)) {
    moveX = -moveSpeed;
}
if (keyboard_check(vk_right)) {
    moveX = moveSpeed;
}

// Check for vertical movement input
if (keyboard_check(vk_up)) {
    moveY = -moveSpeed;
}
if (keyboard_check(vk_down)) {
    moveY = moveSpeed;
}

// Combine collision checks for multiple objects
var horizontalCollision = place_meeting(x + moveX, y, obj_table) || place_meeting(x + moveX, y, obj_table2) || place_meeting(x + moveX, y, obj_table3);
var verticalCollision = place_meeting(x, y + moveY, obj_table) || place_meeting(x, y + moveY, obj_table2) || place_meeting(x, y + moveY, obj_table3);

// Apply horizontal movement if there's no collision
if (!horizontalCollision) {
    x += moveX;
}

// Apply vertical movement if there's no collision
if (!verticalCollision) {
    y += moveY;
}
