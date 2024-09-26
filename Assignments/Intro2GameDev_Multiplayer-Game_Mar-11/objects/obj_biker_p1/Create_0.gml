/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(x, y-18, "Instances", obj_gun);
image_speed = 0.25;
depth = -9;

//movement
move_speed = 4;
jump_speed = 12;
move_x = 0;
move_y = 0;
grv = 0.3;

hurt = false;
damaged = false;
_health = 3;
death_location = 0;
death_location_stored = 0;

p_type = 1;
keyboard_right = 0;
keyboard_left = 0;

gun = instance_create_layer(x, y-sprite_height/2 + 5, "Instances", obj_gun_biker);