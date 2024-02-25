//beginning spawn point
start_x = x;
start_y = y;

player_speed = 2;
player_jump_speed = -2.5
playerX = 0;
playerY = 0;

isGrounded = 0;
grv = .1;

//tilemaps
tmFloor = layer_tilemap_get_id("Floor");
tmDanger = layer_tilemap_get_id("Danger");

//health
player_health = global.health; //4
player_lives = global.lives; //3

died = false;

candy_collected = global.candy; //0

invincible = false;
invincible_timer = 0;
invincible_timer_max = 120;
