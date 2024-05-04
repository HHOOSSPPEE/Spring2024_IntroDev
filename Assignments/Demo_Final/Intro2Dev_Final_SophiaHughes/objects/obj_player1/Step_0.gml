parkour_tilemap = layer_tilemap_get_id("floors");

// player movement
on_ground = place_meeting(x, y + 1, parkour_tilemap);

// horizontal
var dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if (dir != 0) {
    move_x += move_speed * dir; 
    move_x = clamp(move_x, -max_speed, max_speed); 
} else {
    if (move_x > 0) {
        move_x = max(0, move_x - move_speed);
    } else if (move_x < 0) {
        move_x = min(0, move_x + move_speed);
    }
}

// jumping
if (on_ground && keyboard_check_pressed(ord("W"))) {
    move_y = jump_speed;
	on_ground = false; 
} else if (!keyboard_check(ord("W")) && move_y < 0) {
    move_y *= 0.5; 
}

// gravity
if (!on_ground) {
    move_y += player_gravity; 
    move_y = min(move_y, max_fall_speed); 
} else {
    move_y = 0; 
}

// collide
move_and_collide(move_x, move_y, parkour_tilemap);

if (move_x != 0 || move_y != 0) {
    state = STATE_WALKING;
} else {
    state = STATE_IDLE;
}

// animations
switch(state) {
    case STATE_IDLE:
        sprite_index = spr_blue_idle;
        break;
    case STATE_WALKING:
        // Choose the correct walking sprite based on direction
        if (move_x > 0) {
            sprite_index = spr_blue_right;
			proj_direction = true;
        } else if (move_x < 0) {
            sprite_index = spr_blue_left;
			proj_direction = false;
        } else {
            sprite_index = spr_blue_idle;
        }
        break;
}

// throw knife
if(keyboard_check_pressed(ord("S"))){
	if (sprite_index = spr_blue_left || !proj_direction){
		var proj = instance_create_layer(x-15,y+4, "Instances", obj_projectile); // Create projectile at player's location
		proj.speed = 5; 
		proj.direction = -image_xscale > 0 ? 0 : 180; 
		proj.image_xscale = 1;
		audio_play_sound(snd_knife_throw, 0, false);
	}
	if (sprite_index = spr_blue_right || proj_direction){
		var proj = instance_create_layer(x+15,y+4, "Instances", obj_projectile); // Create projectile at player's location
		proj.speed = 5; 
		proj.direction = image_xscale > 0 ? 0 : 180; 
		proj.image_xscale = 1;
		audio_play_sound(snd_knife_throw, 0, false);
	}
}

if(place_meeting(x,y, obj_projectile)){
	global.player_hp--;
}

if (place_meeting(x,y,obj_enemy2) || 
    place_meeting(x,y,obj_enemy2_nodrop) ||
    place_meeting(x,y,obj_enemy3) ||
    place_meeting(x,y,obj_enemy3_nodrop) ||
	place_meeting(x,y,obj_gate) ||
	place_meeting(x,y,obj_end_gate) ||
	place_meeting(x,y,obj_gate2)){
		global.player_hp--;
	}

if (place_meeting(x,y,obj_button)){
	button_trigger = true;
}