/// @description Insert description here
// You can write your code in this editor

sprite_dir = -1;

grav = .1;
player_x = 0;
player_y = 0;


player_spd = 2;
player_jump_spd = -3;

player_climb_x = 0;
player_climb_y = 0;
player_climb_xspd = 1;
player_climb_yspd = -1;

is_grounded = 0;
is_invincible = false;
invincible_timer = 0;
invincible_timer_max = 2*room_speed;
alarm[0] = 20;

meet_trigger =false;

globalvar player_health;
player_health =100;

is_on_stairs = false;
is_attacking = false;


/*if have all the tiles that needs collision in a separate layer
tmFloor = layer_tilemap_get_id(TileSet1);
and change all obj_wall to tm_Floor, this is your collider!
*/


