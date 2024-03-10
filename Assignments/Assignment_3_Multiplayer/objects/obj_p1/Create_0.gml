//player
player_speed = 1.5;

//tilemaps
tmWalls = layer_tilemap_get_id("Wallpaper");

//health
player_health = global.p1_health; //5

//dying
isDead = false;
dead_timer = 0;
dead_timer_max = 15;

//invincible
invincible = false;
invincible_timer = 0;
invincible_timer_max = 120;

//attack
isAttack = false;
attack_timer = 0;
attack_timer_max = 40;

//all enemy dead
isClear = false;



