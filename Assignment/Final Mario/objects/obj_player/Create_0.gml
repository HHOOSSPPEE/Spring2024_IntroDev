grv = .1;
playerX = 0;
playerY = 0;

playerSpeed = 0.5;
playerJumpSpeed = -3.7;
isGrounded = 0;

tmFloor = layer_tilemap_get_id("Tiles_6"); //be sure to uncheck "disable source sprite export" so that collisions work
tmObstacles=layer_tilemap_get_id("Tiles_3");
tmJumpCollide=layer_tilemap_get_id("Tiles_7");
tmMushroom1=layer_tilemap_get_id("Tiles_mushroom1");
tmMushroom2=layer_tilemap_get_id("Tiles_mushroom2");
tmMushroom3=layer_tilemap_get_id("Tiles_mushroom3");
tmAfterJump=layer_tilemap_get_id("Tiles_8");





lastDirection = 1;

hasJump=true;

dropgrv=0.2;

Generate=false;
Generate2=false;
Generate3=false;

is_invincible=false;
invincible_timer=0;

succeed=false;
timer =60;

win=false;