/// @description Insert description here
// You can write your code in this editor



sprite_dir = -1;

grav = .1;
player_x = 0;
player_y = 0;


player_spd = 2;
player_jump_spd = -3;


is_grounded = 0;
is_near_player = false;


stop_timer_max = 2*room_speed;
stop_timer = stop_timer_max;