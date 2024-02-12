/// @description Insert description here
// You can write your code in this editor

//player variables

grv = 0.1;
player_x = 0;
player_y = 0;

player_speed = 4;
player_jumpspeed = -2;
is_grounded = 0;

tm_floor = layer_tilemap_get_id("Tiles_1")

invincible = false;
invincible_timer = 0;
invincible_duration = 100;
player_hp = global.protag_hp;