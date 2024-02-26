/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y-18, "Instances", obj_gun);
image_speed = 0.25;
depth = -9;

image_dir = 1;

//movement
move_speed = 4;
jump_speed = 12;
move_x = 0;
move_y = 0;
grv = 1;

hurt = false;
damaged = false;
_health = 3;
restart_cd = 60;

conversation = false;
conversable = false;

death_location_stored = false;
death_location = 0;