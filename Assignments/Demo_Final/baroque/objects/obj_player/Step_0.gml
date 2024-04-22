var tiles_ledge = layer_tilemap_get_id("tiles_ledge");
var tiles_fences = layer_tilemap_get_id("tiles_fences");

// Reset speeds
hspd = 0;
vspd = 0;

// movement
if (keyboard_check(ord("A"))){
	if (!place_meeting(x-2, y, [tiles_ledge, tiles_fences, obj_boundary])){
		hspd = -spd;
	}
}
if (keyboard_check(ord("D"))){
	if (!place_meeting(x+2, y, [tiles_ledge, tiles_fences, obj_boundary])){
		hspd = spd;
	}
}

if (keyboard_check(ord("W"))){
	if(!place_meeting(x, y-2, [tiles_ledge, tiles_fences, obj_boundary])){
		vspd = -spd;
	}
}
if (keyboard_check(ord("S"))){ 
	if(!place_meeting(x, y+2, [tiles_ledge, tiles_fences, obj_boundary])){
		vspd = spd;
	}
}

// diagonal
if (hspd != 0 && vspd != 0) {
    hspd *= sqrt(0.5);
    vspd *= sqrt(0.5);
}

x += hspd;
y += vspd;

if (hspd != 0 || vspd != 0) {
    direction = point_direction(0, 0, hspd, vspd);
}


if (hspd != 0 || vspd != 0) {
    state = STATE_WALKING;
} else {
    state = STATE_IDLE;
}

// animations
switch(state) {
    case STATE_IDLE:
        sprite_index = spr_player_front_idle;
        break;
    case STATE_WALKING:
        // Choose the correct walking sprite based on direction
        if (direction >= 45 && direction < 135) {
            sprite_index = spr_player_up_walk;
        } else if (direction >= 135 && direction < 225) {
            sprite_index = spr_player_left_walk;
        } else if (direction >= 225 && direction < 315) {
            sprite_index = spr_player_down_walk;
        } else {
            sprite_index = spr_player_right_walk;
        }
        break;
}
