parkour_tilemap = layer_tilemap_get_id("tiles_collidable");
danger_tilemap = layer_tilemap_get_id("tiles_danger");

// player movement
on_ground = place_meeting(x, y + 1, parkour_tilemap);
// horizontal
var dir = keyboard_check(vk_right) - keyboard_check(vk_left);
if (dir != 0) {
    move_x += move_speed * dir; // Apply acceleration
    move_x = clamp(move_x, -max_speed, max_speed); // Clamp to max speed
} else {
    if (move_x > 0) {
        move_x = max(0, move_x - move_speed);
    } else if (move_x < 0) {
        move_x = min(0, move_x + move_speed);
    }
}

// jumping
if (on_ground && keyboard_check_pressed(vk_up)) {
    move_y = jump_speed;
	on_ground = false; 
} else if (!keyboard_check(vk_up) && move_y < 0) {
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

// flip sprite
if (move_x  > 0){
	image_xscale = -0.5;
}

if (move_x < 0){
	image_xscale = 0.5;
}

// reset
if(global.player_hp = 0){
	room_goto(rm_1);
	global.player_hp = 1;
	global.collectible_count = 0;
	global.total_score = 0;
}

if(global.collectible_count >= 6){
	room_goto(rm_win);
}

if(keyboard_check_pressed(vk_down)){
	if (image_xscale > 0){
		var proj = instance_create_layer(x-9, y-2, "Instances", obj_projectile); // Create projectile at player's location
		proj.speed = 5; 
		proj.direction = -image_xscale > 0 ? 0 : 180; 
	}
	if (image_xscale < 0){
		var proj = instance_create_layer(x+9, y-2, "Instances", obj_projectile); // Create projectile at player's location
		proj.speed = 5; 
		proj.direction = -image_xscale > 0 ? 0 : 180; 
	}
}

if(place_meeting(x,y, obj_projectile)){
	global.player_hp--;
}

if (place_meeting(x,y,obj_collectible)){
	star_prox = true;
}

if (place_meeting(x,y,obj_collectible2)){
	star_prox2 = true;
}

if (place_meeting(x,y,obj_collectible3)){
	star_prox3 = true;
}

if (place_meeting(x,y,obj_enemy2) || 
    place_meeting(x,y,obj_enemy2_nodrop) ||
    place_meeting(x,y,obj_enemy3) ||
    place_meeting(x,y,obj_enemy3_nodrop) ||
	place_meeting(x,y,obj_gate)){
		global.player_hp--;
	}

if (place_meeting(x,y,danger_tilemap)){
	global.player_hp--;
}

if (place_meeting(x,y,obj_button)){
	button_trigger = true;
}