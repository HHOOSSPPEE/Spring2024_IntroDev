key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));

var inContactWithSlow = place_meeting(x, y + 1, obj_slow);

if (key_left) {
    hsp = inContactWithSlow ? -slowMoveSpeed : -moveSpeed; 
} else if (key_right) {
    hsp = inContactWithSlow ? slowMoveSpeed : moveSpeed; 
} else {
    hsp = 0; 
}

if(keyboard_check_pressed(ord("W")) && isGrounded) {
	audio_play_sound(Sound1, 1, false);
}

vsp += grav;

if (isGrounded && key_jump) {
    vsp = jumpSpeed;
    isGrounded = false;
}

var new_x = x + hsp;
if (!place_meeting(new_x, y, obj_solid) && !place_meeting(new_x, y, obj_slow)) {
    x = new_x;
}

var platform_side = instance_place(x + hsp, y, obj_moving_platform);
if (platform_side != noone && !instance_place(x, y + 1, obj_moving_platform)) {
    x += (platform_side.speed+3) * cos(degtorad(platform_side.direction)); 
}

var new_y = y + vsp;
if (!place_meeting(x, new_y, obj_solid) && !place_meeting(x, new_y, obj_slow) && !place_meeting(x, new_y, obj_moving_platform)) {
    y = new_y;
    isGrounded = false;
} else {
    while (!place_meeting(x, y + sign(vsp), obj_solid) && !place_meeting(x, y + sign(vsp), obj_slow) && !place_meeting(x, y + sign(vsp), obj_moving_platform)) {
        y += sign(vsp); 
    }
    vsp = 0;
    isGrounded = true;
}

var platform = instance_place(x, y + 1, obj_moving_platform); 
if (platform != noone) { 
    x += (platform.speed+3) * cos(degtorad(platform.direction)); 
}

if (place_meeting(x, y, obj_trampoline)) {
    vsp = -14; 
}

if (place_meeting(x, y, obj_moving_platform)) {
    while (place_meeting(x, y, obj_moving_platform)) {
        y -= 1; 
    }
    vsp = min(vsp, 0); 
    if (!place_meeting(x, y + 1, obj_moving_platform)) {
        isGrounded = true;
    }
}

if(key_jump) { 
	global.jumps1++;
}

if(place_meeting(x, y, obj_ent1)) { 
	x = obj_ext1.x;
	y = obj_ext1.y
}

if(place_meeting(x, y, obj_ent2)) { 
	x = obj_ext2.x;
	y = obj_ext2.y
}

if(place_meeting(x, y, obj_ent3)) { 
	x = obj_ext3.x;
	y = obj_ext3.y
}

